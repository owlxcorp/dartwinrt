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
import 'package:windows_ui/windows_ui.dart';

import 'mediacapturerelativepanelwatcher.dart';
import 'streamingcapturemode.dart';

/// @nodoc
const IID_IMediaCapture7 = '{9169f102-8888-541a-95bc-24e4d462542a}';

class IMediaCapture7 extends IInspectable {
  IMediaCapture7.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IMediaCapture7Vtbl>().ref;

  final _IMediaCapture7Vtbl _vtable;

  factory IMediaCapture7.from(IInspectable interface) =>
      interface.cast(IMediaCapture7.fromPtr, IID_IMediaCapture7);

  MediaCaptureRelativePanelWatcher? createRelativePanelWatcher(
      StreamingCaptureMode captureMode, DisplayRegion? displayRegion) {
    final result = calloc<COMObject>();

    final hr = _vtable.CreateRelativePanelWatcher.asFunction<
            int Function(VTablePointer lpVtbl, int captureMode,
                VTablePointer displayRegion, Pointer<COMObject> result)>()(
        lpVtbl, captureMode.value, displayRegion.lpVtbl, result);

    if (FAILED(hr)) {
      free(result);
      throwWindowsException(hr);
    }

    if (result.isNull) {
      free(result);
      return null;
    }

    return MediaCaptureRelativePanelWatcher.fromPtr(result);
  }
}

final class _IMediaCapture7Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Int32 captureMode,
              VTablePointer displayRegion,
              Pointer<COMObject> result)>> CreateRelativePanelWatcher;
}
