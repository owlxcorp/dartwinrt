// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Indicates the shape of a geographic region.
enum GeoshapeType implements WinRTEnum {
  geopoint(0),
  geocircle(1),
  geopath(2),
  geoboundingBox(3);

  @override
  final int value;

  const GeoshapeType(this.value);

  factory GeoshapeType.from(int value) => GeoshapeType.values.byValue(value);
}
