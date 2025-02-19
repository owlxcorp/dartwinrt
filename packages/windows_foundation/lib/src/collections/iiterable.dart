// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import '../types.dart';
import '../winrt_enum.dart';
import 'iiterator.dart';

/// Exposes an iterator that supports simple iteration over a collection of a
/// specified type.
///
/// {@category interface}
interface class IIterable<T> extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  final T Function(Pointer<COMObject>)? _creator;
  final T Function(int)? _enumCreator;
  final IntType? _intType;

  /// Creates an instance of [IIterable] from the given [ptr].
  ///
  /// [T] must be of type `bool`, `Guid`, `int`, `String`, `Uri`,
  /// `IInspectable` (e.g.`StorageFile`) or `WinRTEnum` (e.g. `DeviceClass`).
  ///
  /// [intType] must be specified if [T] is `int`.
  /// ```dart
  /// final iterable = IIterable<int>.fromPtr(ptr, intType: IntType.uint64);
  /// ```
  ///
  /// [creator] must be specified if [T] is `IInspectable`.
  /// ```dart
  /// final iterable = IIterable<StorageFile>.fromPtr(ptr,
  ///     creator: StorageFile.fromPtr);
  /// ```
  ///
  /// [enumCreator] must be specified if [T] is `WinRTEnum`.
  /// ```dart
  /// final iterable = IIterable<DeviceClass>.fromPtr(ptr,
  ///     enumCreator: DeviceClass.from);
  /// ```
  IIterable.fromPtr(
    super.ptr, {
    T Function(Pointer<COMObject>)? creator,
    T Function(int)? enumCreator,
    IntType? intType,
  })  : _creator = creator,
        _enumCreator = enumCreator,
        _intType = intType {
    if (intType == null && this is IIterable<int>) {
      throw ArgumentError.notNull('intType');
    }

    if (creator == null && this is IIterable<IInspectable>) {
      throw ArgumentError.notNull('creator');
    }

    if (enumCreator == null && this is IIterable<WinRTEnum>) {
      throw ArgumentError.notNull('enumCreator');
    }
  }

  /// Returns an iterator for the items in the collection.
  IIterator<T> first() {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.lpVtbl.value
        .elementAt(6)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(VTablePointer lpVtbl,
                        Pointer<COMObject> retValuePtr)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl,
                Pointer<COMObject> retValuePtr)>()(ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return IIterator.fromPtr(retValuePtr,
        creator: _creator, enumCreator: _enumCreator, intType: _intType);
  }
}
