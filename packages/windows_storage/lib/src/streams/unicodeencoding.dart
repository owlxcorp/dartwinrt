// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Specifies the type of character encoding for a stream.
///
/// {@category enum}
enum UnicodeEncoding implements WinRTEnum {
  utf8(0),
  utf16LE(1),
  utf16BE(2);

  @override
  final int value;

  const UnicodeEncoding(this.value);

  factory UnicodeEncoding.from(int value) =>
      UnicodeEncoding.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}
