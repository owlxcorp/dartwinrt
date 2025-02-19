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
import 'package:windows_system/windows_system.dart';

import 'creationcollisionoption.dart';
import 'storagefile.dart';
import 'storagefolder.dart';

/// @nodoc
const IID_IDownloadsFolderStatics2 = '{e93045bd-8ef8-4f8e-8d15-ac0e265f390d}';

/// {@category interface}
class IDownloadsFolderStatics2 extends IInspectable {
  // vtable begins at 6, is 4 entries long.
  IDownloadsFolderStatics2.fromPtr(super.ptr);

  factory IDownloadsFolderStatics2.from(IInspectable interface) =>
      IDownloadsFolderStatics2.fromPtr(
          interface.toInterface(IID_IDownloadsFolderStatics2));

  Future<StorageFile?> createFileForUserAsync(User? user, String desiredName) {
    final retValuePtr = calloc<COMObject>();
    final userPtr = user == null ? nullptr : user.ptr.ref.lpVtbl;
    final desiredNameHString = desiredName.toHString();

    final hr =
        ptr.ref.vtable
                .elementAt(6)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl,
                                VTablePointer user,
                                IntPtr desiredName,
                                Pointer<COMObject> retValuePtr)>>>()
                .value
                .asFunction<
                    int Function(VTablePointer lpVtbl, VTablePointer user,
                        int desiredName, Pointer<COMObject> retValuePtr)>()(
            ptr.ref.lpVtbl, userPtr, desiredNameHString, retValuePtr);

    WindowsDeleteString(desiredNameHString);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<StorageFile?>.fromPtr(retValuePtr,
        creator: StorageFile.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<StorageFolder?> createFolderForUserAsync(
      User? user, String desiredName) {
    final retValuePtr = calloc<COMObject>();
    final userPtr = user == null ? nullptr : user.ptr.ref.lpVtbl;
    final desiredNameHString = desiredName.toHString();

    final hr =
        ptr.ref.vtable
                .elementAt(7)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl,
                                VTablePointer user,
                                IntPtr desiredName,
                                Pointer<COMObject> retValuePtr)>>>()
                .value
                .asFunction<
                    int Function(VTablePointer lpVtbl, VTablePointer user,
                        int desiredName, Pointer<COMObject> retValuePtr)>()(
            ptr.ref.lpVtbl, userPtr, desiredNameHString, retValuePtr);

    WindowsDeleteString(desiredNameHString);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<StorageFolder?>.fromPtr(retValuePtr,
        creator: StorageFolder.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<StorageFile?> createFileForUserWithCollisionOptionAsync(
      User? user, String desiredName, CreationCollisionOption option) {
    final retValuePtr = calloc<COMObject>();
    final userPtr = user == null ? nullptr : user.ptr.ref.lpVtbl;
    final desiredNameHString = desiredName.toHString();

    final hr = ptr.ref.vtable
            .elementAt(8)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            VTablePointer user,
                            IntPtr desiredName,
                            Int32 option,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    VTablePointer user,
                    int desiredName,
                    int option,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, userPtr, desiredNameHString, option.value, retValuePtr);

    WindowsDeleteString(desiredNameHString);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<StorageFile?>.fromPtr(retValuePtr,
        creator: StorageFile.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<StorageFolder?> createFolderForUserWithCollisionOptionAsync(
      User? user, String desiredName, CreationCollisionOption option) {
    final retValuePtr = calloc<COMObject>();
    final userPtr = user == null ? nullptr : user.ptr.ref.lpVtbl;
    final desiredNameHString = desiredName.toHString();

    final hr = ptr.ref.vtable
            .elementAt(9)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            VTablePointer user,
                            IntPtr desiredName,
                            Int32 option,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    VTablePointer user,
                    int desiredName,
                    int option,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, userPtr, desiredNameHString, option.value, retValuePtr);

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
