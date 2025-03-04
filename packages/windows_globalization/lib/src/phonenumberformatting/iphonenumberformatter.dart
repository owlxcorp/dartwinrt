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

import 'phonenumberformat.dart';
import 'phonenumberinfo.dart';

/// @nodoc
const IID_IPhoneNumberFormatter = '{1556b49e-bad4-4b4a-900d-4407adb7c981}';

/// {@category interface}
class IPhoneNumberFormatter extends IInspectable {
  // vtable begins at 6, is 5 entries long.
  IPhoneNumberFormatter.fromPtr(super.ptr);

  factory IPhoneNumberFormatter.from(IInspectable interface) =>
      IPhoneNumberFormatter.fromPtr(
          interface.toInterface(IID_IPhoneNumberFormatter));

  String format(PhoneNumberInfo? number) {
    final retValuePtr = calloc<HSTRING>();

    try {
      final numberPtr = number == null ? nullptr : number.ptr.ref.lpVtbl;

      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl,
                              VTablePointer number,
                              Pointer<IntPtr> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, VTablePointer number,
                      Pointer<IntPtr> retValuePtr)>()(
          ptr.ref.lpVtbl, numberPtr, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.toDartString();
    } finally {
      WindowsDeleteString(retValuePtr.value);
      free(retValuePtr);
    }
  }

  String formatWithOutputFormat(
      PhoneNumberInfo? number, PhoneNumberFormat numberFormat) {
    final retValuePtr = calloc<HSTRING>();

    try {
      final numberPtr = number == null ? nullptr : number.ptr.ref.lpVtbl;

      final hr = ptr.ref.vtable
              .elementAt(7)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl,
                              VTablePointer number,
                              Int32 numberFormat,
                              Pointer<IntPtr> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, VTablePointer number,
                      int numberFormat, Pointer<IntPtr> retValuePtr)>()(
          ptr.ref.lpVtbl, numberPtr, numberFormat.value, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.toDartString();
    } finally {
      WindowsDeleteString(retValuePtr.value);
      free(retValuePtr);
    }
  }

  String formatPartialString(String number) {
    final retValuePtr = calloc<HSTRING>();

    try {
      final numberHString = number.toHString();

      final hr = ptr.ref.vtable
              .elementAt(8)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(VTablePointer lpVtbl, IntPtr number,
                              Pointer<IntPtr> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, int number,
                      Pointer<IntPtr> retValuePtr)>()(
          ptr.ref.lpVtbl, numberHString, retValuePtr);

      WindowsDeleteString(numberHString);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.toDartString();
    } finally {
      WindowsDeleteString(retValuePtr.value);
      free(retValuePtr);
    }
  }

  String formatString(String number) {
    final retValuePtr = calloc<HSTRING>();

    try {
      final numberHString = number.toHString();

      final hr = ptr.ref.vtable
              .elementAt(9)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(VTablePointer lpVtbl, IntPtr number,
                              Pointer<IntPtr> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, int number,
                      Pointer<IntPtr> retValuePtr)>()(
          ptr.ref.lpVtbl, numberHString, retValuePtr);

      WindowsDeleteString(numberHString);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.toDartString();
    } finally {
      WindowsDeleteString(retValuePtr.value);
      free(retValuePtr);
    }
  }

  String formatStringWithLeftToRightMarkers(String number) {
    final retValuePtr = calloc<HSTRING>();

    try {
      final numberHString = number.toHString();

      final hr = ptr.ref.vtable
              .elementAt(10)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(VTablePointer lpVtbl, IntPtr number,
                              Pointer<IntPtr> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, int number,
                      Pointer<IntPtr> retValuePtr)>()(
          ptr.ref.lpVtbl, numberHString, retValuePtr);

      WindowsDeleteString(numberHString);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.toDartString();
    } finally {
      WindowsDeleteString(retValuePtr.value);
      free(retValuePtr);
    }
  }
}
