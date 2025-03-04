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

import 'devicepairingprotectionlevel.dart';
import 'devicepairingresultstatus.dart';

/// @nodoc
const IID_IDevicePairingResult = '{072b02bf-dd95-4025-9b37-de51adba37b7}';

/// {@category interface}
class IDevicePairingResult extends IInspectable {
  // vtable begins at 6, is 2 entries long.
  IDevicePairingResult.fromPtr(super.ptr);

  factory IDevicePairingResult.from(IInspectable interface) =>
      IDevicePairingResult.fromPtr(
          interface.toInterface(IID_IDevicePairingResult));

  DevicePairingResultStatus get status {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(
                          VTablePointer lpVtbl, Pointer<Int32> retValuePtr)>>>()
          .value
          .asFunction<
              int Function(VTablePointer lpVtbl,
                  Pointer<Int32> retValuePtr)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return DevicePairingResultStatus.from(retValuePtr.value);
    } finally {
      free(retValuePtr);
    }
  }

  DevicePairingProtectionLevel get protectionLevelUsed {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(
                          VTablePointer lpVtbl, Pointer<Int32> retValuePtr)>>>()
          .value
          .asFunction<
              int Function(VTablePointer lpVtbl,
                  Pointer<Int32> retValuePtr)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return DevicePairingProtectionLevel.from(retValuePtr.value);
    } finally {
      free(retValuePtr);
    }
  }
}
