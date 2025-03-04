// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

@TestOn('windows')

import 'package:test/test.dart';
import 'package:win32/win32.dart';
import 'package:windows_foundation/uri.dart' as winrt_uri;

void main() {
  if (!isWindowsRuntimeAvailable()) {
    print('Skipping tests because Windows Runtime is not available.');
    return;
  }

  test('createUri', () {
    final dartUri = Uri.parse(
        'https://www.example.com:443/path/to/file.html?q1=v1&q2=v2#fragment');
    final winrtUri = winrt_uri.Uri.createUri(dartUri.toString());
    expect(winrtUri.rawUri, equals(dartUri.toString()));
    expect(winrtUri.absoluteUri, equals(dartUri.toString()));
    expect(winrtUri.absoluteCanonicalUri, equals(dartUri.toString()));
    expect(winrtUri.displayIri, equals(dartUri.toString()));
    expect(winrtUri.displayUri, equals(dartUri.toString()));
    expect(winrtUri.toString(), equals(dartUri.toString()));
    expect(winrtUri.schemeName, equals('https'));
    expect(winrtUri.host, equals('www.example.com'));
    expect(winrtUri.domain, equals('example.com'));
    expect(winrtUri.port, equals(443));
    expect(winrtUri.userName, isEmpty);
    expect(winrtUri.password, isEmpty);
    expect(winrtUri.path, equals('/path/to/file.html'));
    expect(winrtUri.extension, equals('.html'));
    expect(winrtUri.query, equals('?q1=v1&q2=v2'));
    final queryParsed = winrtUri.queryParsed;
    expect(queryParsed.size, equals(2));
    final queryParameters = queryParsed.toList();
    expect(queryParameters.length, equals(2));
    final firstQueryParam = queryParameters.first;
    expect(firstQueryParam.name, equals('q1'));
    expect(firstQueryParam.value, equals('v1'));
    final lastQueryParam = queryParameters.last;
    expect(lastQueryParam.name, equals('q2'));
    expect(lastQueryParam.value, equals('v2'));
    expect(winrtUri.fragment, equals('#fragment'));
  });
}
