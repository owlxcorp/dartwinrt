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

import 'fileproperties/storageitemcontentproperties.dart';
import 'fileproperties/storageitemthumbnail.dart';
import 'fileproperties/thumbnailmode.dart';
import 'fileproperties/thumbnailoptions.dart';

/// @nodoc
const IID_IStorageItemProperties = '{86664478-8029-46fe-a789-1c2f3e2ffb5c}';

/// {@category interface}
class IStorageItemProperties extends IInspectable {
  // vtable begins at 6, is 7 entries long.
  IStorageItemProperties.fromPtr(super.ptr);

  factory IStorageItemProperties.from(IInspectable interface) =>
      IStorageItemProperties.fromPtr(
          interface.toInterface(IID_IStorageItemProperties));

  Future<StorageItemThumbnail?>
      getThumbnailAsyncOverloadDefaultSizeDefaultOptions(ThumbnailMode mode) {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Int32 mode,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int mode,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, mode.value, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<StorageItemThumbnail?>.fromPtr(
        retValuePtr,
        creator: StorageItemThumbnail.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<StorageItemThumbnail?> getThumbnailAsyncOverloadDefaultOptions(
      ThumbnailMode mode, int requestedSize) {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(7)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            Int32 mode,
                            Uint32 requestedSize,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int mode, int requestedSize,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, mode.value, requestedSize, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<StorageItemThumbnail?>.fromPtr(
        retValuePtr,
        creator: StorageItemThumbnail.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<StorageItemThumbnail?> getThumbnailAsync(
      ThumbnailMode mode, int requestedSize, ThumbnailOptions options) {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(8)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            Int32 mode,
                            Uint32 requestedSize,
                            Uint32 options,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int mode, int requestedSize,
                    int options, Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, mode.value, requestedSize, options.value, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<StorageItemThumbnail?>.fromPtr(
        retValuePtr,
        creator: StorageItemThumbnail.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  String get displayName {
    final retValuePtr = calloc<HSTRING>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(VTablePointer lpVtbl,
                          Pointer<IntPtr> retValuePtr)>>>()
          .value
          .asFunction<
              int Function(VTablePointer lpVtbl,
                  Pointer<IntPtr> retValuePtr)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.toDartString();
    } finally {
      WindowsDeleteString(retValuePtr.value);
      free(retValuePtr);
    }
  }

  String get displayType {
    final retValuePtr = calloc<HSTRING>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(VTablePointer lpVtbl,
                          Pointer<IntPtr> retValuePtr)>>>()
          .value
          .asFunction<
              int Function(VTablePointer lpVtbl,
                  Pointer<IntPtr> retValuePtr)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.toDartString();
    } finally {
      WindowsDeleteString(retValuePtr.value);
      free(retValuePtr);
    }
  }

  String get folderRelativeId {
    final retValuePtr = calloc<HSTRING>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(VTablePointer lpVtbl,
                          Pointer<IntPtr> retValuePtr)>>>()
          .value
          .asFunction<
              int Function(VTablePointer lpVtbl,
                  Pointer<IntPtr> retValuePtr)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.toDartString();
    } finally {
      WindowsDeleteString(retValuePtr.value);
      free(retValuePtr);
    }
  }

  StorageItemContentProperties? get properties {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
        .elementAt(12)
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

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }

    return StorageItemContentProperties.fromPtr(retValuePtr);
  }
}
