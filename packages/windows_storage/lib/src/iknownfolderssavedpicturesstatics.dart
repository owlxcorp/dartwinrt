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

import 'storagefolder.dart';

/// @nodoc
const IID_IKnownFoldersSavedPicturesStatics =
    '{055c93ea-253d-467c-b6ca-a97da1e9a18d}';

/// {@category interface}
class IKnownFoldersSavedPicturesStatics extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  IKnownFoldersSavedPicturesStatics.fromPtr(super.ptr);

  factory IKnownFoldersSavedPicturesStatics.from(IInspectable interface) =>
      IKnownFoldersSavedPicturesStatics.fromPtr(
          interface.toInterface(IID_IKnownFoldersSavedPicturesStatics));

  StorageFolder? get savedPictures {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
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

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }

    return StorageFolder.fromPtr(retValuePtr);
  }
}
