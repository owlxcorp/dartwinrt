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

import 'storagefolder.dart';

/// @nodoc
const IID_IStorageFolderStatics2 = '{b4656dc3-71d2-467d-8b29-371f0f62bf6f}';

/// {@category interface}
class IStorageFolderStatics2 extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  IStorageFolderStatics2.fromPtr(super.ptr);

  factory IStorageFolderStatics2.from(IInspectable interface) =>
      IStorageFolderStatics2.fromPtr(
          interface.toInterface(IID_IStorageFolderStatics2));

  Future<StorageFolder?> getFolderFromPathForUserAsync(
      User? user, String path) {
    final retValuePtr = calloc<COMObject>();
    final userPtr = user == null ? nullptr : user.ptr.ref.lpVtbl;
    final pathHString = path.toHString();

    final hr =
        ptr.ref.vtable
                .elementAt(6)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl,
                                VTablePointer user,
                                IntPtr path,
                                Pointer<COMObject> retValuePtr)>>>()
                .value
                .asFunction<
                    int Function(VTablePointer lpVtbl, VTablePointer user,
                        int path, Pointer<COMObject> retValuePtr)>()(
            ptr.ref.lpVtbl, userPtr, pathHString, retValuePtr);

    WindowsDeleteString(pathHString);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<StorageFolder?>.fromPtr(retValuePtr,
        creator: StorageFolder.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }
}
