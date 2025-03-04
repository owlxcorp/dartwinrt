// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: unnecessary_import, unused_import

import 'dart:async';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart' hide DocumentProperties;
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

import 'charactergrouping.dart';

/// @nodoc
const IID_ICharacterGroupings = '{b8d20a75-d4cf-4055-80e5-ce169c226496}';

/// {@category interface}
class ICharacterGroupings extends IInspectable
    implements IVectorView<CharacterGrouping>, IIterable<CharacterGrouping> {
  // vtable begins at 6, is 1 entries long.
  ICharacterGroupings.fromPtr(super.ptr);

  factory ICharacterGroupings.from(IInspectable interface) =>
      ICharacterGroupings.fromPtr(
          interface.toInterface(IID_ICharacterGroupings));

  String lookup(String text) {
    final retValuePtr = calloc<HSTRING>();

    try {
      final textHString = text.toHString();

      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(VTablePointer lpVtbl, IntPtr text,
                              Pointer<IntPtr> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, int text,
                      Pointer<IntPtr> retValuePtr)>()(
          ptr.ref.lpVtbl, textHString, retValuePtr);

      WindowsDeleteString(textHString);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.toDartString();
    } finally {
      WindowsDeleteString(retValuePtr.value);
      free(retValuePtr);
    }
  }

  late final _iVectorView = IVectorView<CharacterGrouping>.fromPtr(
      toInterface('{f7cf5a4a-2b7a-5bc9-a0c4-9dce07ff61c9}'),
      creator: CharacterGrouping.fromPtr,
      iterableIid: '{82e3abf0-06e3-5609-ba39-c51eb2f5fae6}');

  @override
  CharacterGrouping getAt(int index) => _iVectorView.getAt(index);

  @override
  int get size => _iVectorView.size;

  @override
  bool indexOf(CharacterGrouping value, Pointer<Uint32> index) =>
      _iVectorView.indexOf(value, index);

  @override
  int getMany(int startIndex, int valueSize, List<CharacterGrouping> value) =>
      _iVectorView.getMany(startIndex, valueSize, value);

  @override
  IIterator<CharacterGrouping> first() => _iVectorView.first();

  @override
  List<CharacterGrouping> toList() => _iVectorView.toList();

  @override
  CharacterGrouping operator [](int index) => _iVectorView[index];

  @override
  List<CharacterGrouping> operator +(List<CharacterGrouping> other) =>
      toList() + other;
}
