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

/// @nodoc
const IID_ILanguageStatics3 = '{d15ecb5a-71de-5752-9542-fac5b4f27261}';

/// {@category interface}
class ILanguageStatics3 extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  ILanguageStatics3.fromPtr(super.ptr);

  factory ILanguageStatics3.from(IInspectable interface) =>
      ILanguageStatics3.fromPtr(interface.toInterface(IID_ILanguageStatics3));

  IVector<String> getMuiCompatibleLanguageListFromLanguageTags(
      IIterable<String>? languageTags) {
    final retValuePtr = calloc<COMObject>();
    final languageTagsPtr = languageTags == null
        ? nullptr
        : IInspectable(languageTags
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
                            VTablePointer languageTags,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, VTablePointer languageTags,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, languageTagsPtr, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return IVector.fromPtr(retValuePtr,
        iterableIid: '{e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e}');
  }
}
