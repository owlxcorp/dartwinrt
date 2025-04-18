// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: unnecessary_import, unused_import

import 'dart:async';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart'
    hide DocumentProperties, WinRTStringConversion;
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

/// @nodoc
const IID_IStandardDataFormatsStatics3 =
    '{3b57b069-01d4-474c-8b5f-bc8e27f38b21}';

class IStandardDataFormatsStatics3 extends IInspectable {
  IStandardDataFormatsStatics3.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IStandardDataFormatsStatics3Vtbl>().ref;

  final _IStandardDataFormatsStatics3Vtbl _vtable;

  factory IStandardDataFormatsStatics3.from(IInspectable interface) =>
      interface.cast(IStandardDataFormatsStatics3.fromPtr,
          IID_IStandardDataFormatsStatics3);

  String get userActivityJsonArray {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_UserActivityJsonArray.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }
}

final class _IStandardDataFormatsStatics3Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_UserActivityJsonArray;
}
