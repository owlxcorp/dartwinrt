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
import 'package:windows_storage/windows_storage.dart';

import 'xmldocument.dart';
import 'xmlloadsettings.dart';

/// @nodoc
const IID_IXmlDocumentStatics = '{5543d254-d757-4b79-9539-232b18f50bf1}';

/// {@category interface}
class IXmlDocumentStatics extends IInspectable {
  // vtable begins at 6, is 4 entries long.
  IXmlDocumentStatics.fromPtr(super.ptr);

  factory IXmlDocumentStatics.from(IInspectable interface) =>
      IXmlDocumentStatics.fromPtr(
          interface.toInterface(IID_IXmlDocumentStatics));

  Future<XmlDocument?> loadFromUriAsync(Uri? uri) {
    final retValuePtr = calloc<COMObject>();
    final uriUri = uri?.toWinRTUri();

    final hr =
        ptr.ref.vtable
                .elementAt(6)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl,
                                VTablePointer uri,
                                Pointer<COMObject> retValuePtr)>>>()
                .value
                .asFunction<
                    int Function(VTablePointer lpVtbl, VTablePointer uri,
                        Pointer<COMObject> retValuePtr)>()(ptr.ref.lpVtbl,
            uriUri == null ? nullptr : uriUri.ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<XmlDocument?>.fromPtr(retValuePtr,
        creator: XmlDocument.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<XmlDocument?> loadFromUriWithSettingsAsync(
      Uri? uri, XmlLoadSettings? loadSettings) {
    final retValuePtr = calloc<COMObject>();
    final uriUri = uri?.toWinRTUri();
    final loadSettingsPtr =
        loadSettings == null ? nullptr : loadSettings.ptr.ref.lpVtbl;

    final hr = ptr.ref.vtable
            .elementAt(7)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            VTablePointer uri,
                            VTablePointer loadSettings,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    VTablePointer uri,
                    VTablePointer loadSettings,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl,
        uriUri == null ? nullptr : uriUri.ptr.ref.lpVtbl,
        loadSettingsPtr,
        retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<XmlDocument?>.fromPtr(retValuePtr,
        creator: XmlDocument.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<XmlDocument?> loadFromFileAsync(IStorageFile? file) {
    final retValuePtr = calloc<COMObject>();
    final filePtr = file == null ? nullptr : file.ptr.ref.lpVtbl;

    final hr =
        ptr.ref.vtable
                .elementAt(8)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl,
                                VTablePointer file,
                                Pointer<COMObject> retValuePtr)>>>()
                .value
                .asFunction<
                    int Function(VTablePointer lpVtbl, VTablePointer file,
                        Pointer<COMObject> retValuePtr)>()(
            ptr.ref.lpVtbl, filePtr, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<XmlDocument?>.fromPtr(retValuePtr,
        creator: XmlDocument.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<XmlDocument?> loadFromFileWithSettingsAsync(
      IStorageFile? file, XmlLoadSettings? loadSettings) {
    final retValuePtr = calloc<COMObject>();
    final filePtr = file == null ? nullptr : file.ptr.ref.lpVtbl;
    final loadSettingsPtr =
        loadSettings == null ? nullptr : loadSettings.ptr.ref.lpVtbl;

    final hr = ptr.ref.vtable
            .elementAt(9)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            VTablePointer file,
                            VTablePointer loadSettings,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    VTablePointer file,
                    VTablePointer loadSettings,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, filePtr, loadSettingsPtr, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<XmlDocument?>.fromPtr(retValuePtr,
        creator: XmlDocument.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }
}
