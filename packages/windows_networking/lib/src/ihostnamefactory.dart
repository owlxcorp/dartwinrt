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

import 'hostname.dart';

/// @nodoc
const IID_IHostNameFactory = '{458c23ed-712f-4576-adf1-c20b2c643558}';

/// {@category interface}
class IHostNameFactory extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  IHostNameFactory.fromPtr(super.ptr);

  factory IHostNameFactory.from(IInspectable interface) =>
      IHostNameFactory.fromPtr(interface.toInterface(IID_IHostNameFactory));

  HostName createHostName(String hostName) {
    final retValuePtr = calloc<COMObject>();
    final hostNameHString = hostName.toHString();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, IntPtr hostName,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int hostName,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, hostNameHString, retValuePtr);

    WindowsDeleteString(hostNameHString);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return HostName.fromPtr(retValuePtr);
  }
}
