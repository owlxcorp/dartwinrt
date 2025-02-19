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

import 'creationcollisionoption.dart';
import 'storagefile.dart';
import 'storagefolder.dart';

/// @nodoc
const IID_IDownloadsFolderStatics = '{27862ed0-404e-47df-a1e2-e37308be7b37}';

/// {@category interface}
class IDownloadsFolderStatics extends IInspectable {
  // vtable begins at 6, is 4 entries long.
  IDownloadsFolderStatics.fromPtr(super.ptr);

  factory IDownloadsFolderStatics.from(IInspectable interface) =>
      IDownloadsFolderStatics.fromPtr(
          interface.toInterface(IID_IDownloadsFolderStatics));

  Future<StorageFile?> createFileAsync(String desiredName) {
    final retValuePtr = calloc<COMObject>();
    final desiredNameHString = desiredName.toHString();

    final hr =
        ptr.ref.vtable
                .elementAt(6)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl,
                                IntPtr desiredName,
                                Pointer<COMObject> retValuePtr)>>>()
                .value
                .asFunction<
                    int Function(VTablePointer lpVtbl, int desiredName,
                        Pointer<COMObject> retValuePtr)>()(
            ptr.ref.lpVtbl, desiredNameHString, retValuePtr);

    WindowsDeleteString(desiredNameHString);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<StorageFile?>.fromPtr(retValuePtr,
        creator: StorageFile.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<StorageFolder?> createFolderAsync(String desiredName) {
    final retValuePtr = calloc<COMObject>();
    final desiredNameHString = desiredName.toHString();

    final hr =
        ptr.ref.vtable
                .elementAt(7)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl,
                                IntPtr desiredName,
                                Pointer<COMObject> retValuePtr)>>>()
                .value
                .asFunction<
                    int Function(VTablePointer lpVtbl, int desiredName,
                        Pointer<COMObject> retValuePtr)>()(
            ptr.ref.lpVtbl, desiredNameHString, retValuePtr);

    WindowsDeleteString(desiredNameHString);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<StorageFolder?>.fromPtr(retValuePtr,
        creator: StorageFolder.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<StorageFile?> createFileWithCollisionOptionAsync(
      String desiredName, CreationCollisionOption option) {
    final retValuePtr = calloc<COMObject>();
    final desiredNameHString = desiredName.toHString();

    final hr =
        ptr.ref.vtable
                .elementAt(8)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl,
                                IntPtr desiredName,
                                Int32 option,
                                Pointer<COMObject> retValuePtr)>>>()
                .value
                .asFunction<
                    int Function(VTablePointer lpVtbl, int desiredName,
                        int option, Pointer<COMObject> retValuePtr)>()(
            ptr.ref.lpVtbl, desiredNameHString, option.value, retValuePtr);

    WindowsDeleteString(desiredNameHString);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<StorageFile?>.fromPtr(retValuePtr,
        creator: StorageFile.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<StorageFolder?> createFolderWithCollisionOptionAsync(
      String desiredName, CreationCollisionOption option) {
    final retValuePtr = calloc<COMObject>();
    final desiredNameHString = desiredName.toHString();

    final hr =
        ptr.ref.vtable
                .elementAt(9)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl,
                                IntPtr desiredName,
                                Int32 option,
                                Pointer<COMObject> retValuePtr)>>>()
                .value
                .asFunction<
                    int Function(VTablePointer lpVtbl, int desiredName,
                        int option, Pointer<COMObject> retValuePtr)>()(
            ptr.ref.lpVtbl, desiredNameHString, option.value, retValuePtr);

    WindowsDeleteString(desiredNameHString);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<StorageFolder?>.fromPtr(retValuePtr,
        creator: StorageFolder.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }
}
