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

import 'commonfilequery.dart';
import 'commonfolderquery.dart';
import 'queryoptions.dart';

/// @nodoc
const IID_IQueryOptionsFactory = '{032e1f8c-a9c1-4e71-8011-0dee9d4811a3}';

/// {@category interface}
class IQueryOptionsFactory extends IInspectable {
  // vtable begins at 6, is 2 entries long.
  IQueryOptionsFactory.fromPtr(super.ptr);

  factory IQueryOptionsFactory.from(IInspectable interface) =>
      IQueryOptionsFactory.fromPtr(
          interface.toInterface(IID_IQueryOptionsFactory));

  QueryOptions createCommonFileQuery(
      CommonFileQuery query, IIterable<String> fileTypeFilter) {
    final retValuePtr = calloc<COMObject>();
    final fileTypeFilterPtr = IInspectable(fileTypeFilter
            .toInterface('{e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e}'))
        .ptr
        .ref
        .lpVtbl;

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            Int32 query,
                            VTablePointer fileTypeFilter,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    int query,
                    VTablePointer fileTypeFilter,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, query.value, fileTypeFilterPtr, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return QueryOptions.fromPtr(retValuePtr);
  }

  QueryOptions createCommonFolderQuery(CommonFolderQuery query) {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(7)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Int32 query,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int query,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, query.value, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return QueryOptions.fromPtr(retValuePtr);
  }
}
