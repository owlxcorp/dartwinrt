// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

@TestOn('windows')

import 'package:test/test.dart';
import 'package:win32/win32.dart';
import 'package:winrtgen/winrtgen.dart';

void main() {
  test('fileNameFromType', () {
    expect(fileNameFromType('Windows.Globalization.Calendar'),
        equals('calendar.dart'));
    expect(fileNameFromType('Windows.Foundation.Collections.IMapView`2'),
        equals('imapview.dart'));
  });

  test('folderFromType', () {
    expect(folderFromType('Windows.Globalization.Calendar'),
        equals('windows_globalization/lib/src'));
    expect(folderFromType('Windows.Storage.Pickers.FileOpenPicker'),
        equals('windows_storage/lib/src/pickers'));
    expect(folderFromType('Windows.Devices.Geolocation.Geofencing.Geofence'),
        equals('windows_devices/lib/src/geolocation/geofencing'));
  });

  test('getMetadataForType', () {
    expect(getMetadataForType('Windows.Globalization.Calendar').name,
        equals('Windows.Globalization.Calendar'));
    expect(
      () => getMetadataForType('Windows.Foo.Bar'),
      throwsA(isA<WinRTGenException>().having((e) => e.message, 'message',
          equals("Couldn't find type: Windows.Foo.Bar"))),
    );
  });

  group('iidFromSignature', () {
    test('returns the IID of IAsyncOperation<IReference<Duration>>', () {
      expect(
          iidFromSignature(
                  'pinterface({9fc2b0bb-e446-44e2-aa61-9cab8f636af2};pinterface({61c17706-2d65-11e0-9ae8-d48564015472};struct(Windows.Foundation.TimeSpan;i8)))')
              .toString(),
          equals('{24a901ad-910f-5c0f-b23c-67007577a558}'));
    });

    test('returns the IID of IMap<Guid, Object>', () {
      expect(
          iidFromSignature(
                  'pinterface({3c2925fe-8519-45c1-aa79-197b6718c1c1};g16;cinterface(IInspectable))')
              .toString(),
          equals('{5ee3189c-7dbf-5998-ad07-5414fb82567c}'));
    });

    test('returns the IID of IIterable<IKeyValuePair<Guid, Object>>', () {
      expect(
          iidFromSignature(
                  'pinterface({faa585ea-6214-4217-afda-7f46de5869b3};pinterface({02b51929-c1c4-4a7e-8940-0312b5c18500};g16;cinterface(IInspectable)))')
              .toString(),
          equals('{f3b20528-e3b3-5331-b2d0-0c2623aee785}'));
    });

    test('returns the IID of IIterable<IKeyValuePair<String, IJsonValue>>', () {
      expect(
          iidFromSignature(
                  'pinterface({faa585ea-6214-4217-afda-7f46de5869b3};pinterface({02b51929-c1c4-4a7e-8940-0312b5c18500};string;{a3219ecb-f0b3-4dcd-beee-19d48cd3ed1e}))')
              .toString(),
          equals('{dfabb6e1-0411-5a8f-aa87-354e7110f099}'));
    });

    test('returns the IID of IIterable<String>', () {
      expect(
          iidFromSignature(
                  'pinterface({faa585ea-6214-4217-afda-7f46de5869b3};string)')
              .toString(),
          equals('{e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e}'));
    });

    test('returns the IID of IMap<String, String>', () {
      expect(
          iidFromSignature(
                  'pinterface({3c2925fe-8519-45c1-aa79-197b6718c1c1};string;string)')
              .toString(),
          equals('{f6d1f700-49c2-52ae-8154-826f9908773c}'));
    });

    test('returns the IID of IMapView<PedometerStepKind, PedometerReading>',
        () {
      expect(
          iidFromSignature(
                  'pinterface({e480ce40-a338-4ada-adcf-272272e48cb9};enum(Windows.Devices.Sensors.PedometerStepKind;i4);rc(Windows.Devices.Sensors.PedometerReading;{2245dcf4-a8e1-432f-896a-be0dd9b02d24}))')
              .toString(),
          equals('{64f0c54c-4865-56bd-ac98-64a98451e362}'));
    });

    test('returns the IID of IVector<IJsonValue>', () {
      expect(
          iidFromSignature(
                  'pinterface({913337e9-11a1-4345-a3a2-4e7f956e222d};{a3219ecb-f0b3-4dcd-beee-19d48cd3ed1e})')
              .toString(),
          equals('{d44662bc-dce3-59a8-9272-4b210f33908b}'));
    });

    test('returns the IID of IVector<String>', () {
      expect(
          iidFromSignature(
                  'pinterface({913337e9-11a1-4345-a3a2-4e7f956e222d};string)')
              .toString(),
          equals('{98b9acc1-4b56-532e-ac73-03d5291cca90}'));
    });
  });

  test('isValidIID', () {
    expect(isValidIID('ca30221d-86d9-40fb-a26b-d44eb7cf08ea'), isFalse);
    expect(isValidIID('{ca30221d-86d9-40fb-a26b-d44eb7cf08ea}'), isTrue);
    expect(isValidIID('{CA30221D-86D9-40FB-A26B-D44EB7CF08EA}'), isTrue);
    expect(isValidIID('ca30221d-86d9-40fb-a26b-d44eb7cf08ea}'), isFalse);
    expect(isValidIID('{ca30221d-86d9-40fb-a26b-d44eb7cf08ea'), isFalse);
    expect(isValidIID('not an IID'), isFalse);
  });

  group('iterableIidFromMapType', () {
    test(
        'returns the IID of IIterable<IKeyValuePair<String, IVectorView<TextSegment>>>',
        () {
      final typeDef =
          getMetadataForType('Windows.Storage.Search.IStorageFileQueryResult2');
      expect(
          iterableIidFromMapType(typeDef
                  .findMethod('GetMatchingPropertiesWithRanges')!
                  .returnType // IMap<String, IVectorView<TextSegment>>
                  .typeIdentifier)
              .toString(),
          equals('{f819a276-b3f5-54d4-b8fd-c9adb7f700e3}'));
    });

    test(
        'returns the IID of IIterable<IKeyValuePair<PedometerStepKind, PedometerReading>>',
        () {
      final typeDef = getMetadataForType('Windows.Devices.Sensors.IPedometer2');
      expect(
          iterableIidFromMapType(typeDef
                  .findMethod('GetCurrentReadings')!
                  .returnType // IMapView<PedometerStepKind, PedometerReading>
                  .typeIdentifier)
              .toString(),
          equals('{098f29cb-bc91-5639-a541-d5a4811ec35b}'));
    });
  }, skip: !isWindowsRuntimeAvailable());

  group('iterableIidFromVectorType', () {
    test('returns the IID of IIterable<String>', () {
      final typeDef =
          getMetadataForType('Windows.Storage.Pickers.IFileOpenPicker');
      expect(
          iterableIidFromVectorType(typeDef
                  .findMethod('get_FileTypeFilter')!
                  .returnType // IVector<String>
                  .typeIdentifier)
              .toString(),
          equals('{e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e}'));
    });

    test('returns the IID of IIterable<HostName>', () {
      final typeDef = getMetadataForType(
          'Windows.Networking.Connectivity.INetworkInformationStatics');
      expect(
          iterableIidFromVectorType(typeDef
                  .findMethod('GetHostNames')!
                  .returnType // IVectorView<HostName>
                  .typeIdentifier)
              .toString(),
          equals('{9e5f3ed0-cf1c-5d38-832c-acea6164bf5c}'));
    });
  }, skip: !isWindowsRuntimeAvailable());

  test('lastComponent', () {
    expect(lastComponent('Windows.Globalization.Calendar'), equals('Calendar'));
    expect(lastComponent('Windows.Foundation.Collections.IVector`1'),
        equals('IVector`1'));
  });

  test('nullable', () {
    expect(nullable('StorageFile'), equals('StorageFile?'));
    expect(nullable('Calendar?'), equals('Calendar?'));
    expect(nullable('IIterable<IKeyValuePair<String, String>>'),
        equals('IIterable<IKeyValuePair<String, String>>?'));
  });

  test('outerType', () {
    expect(
        outerType('IAsyncOperation<StorageFile?>'), equals('IAsyncOperation'));
    expect(outerType('IMap<String, Object?>'), equals('IMap'));
    expect(outerType('IMapView<String, IVectorView<TextSegment>?>'),
        equals('IMapView'));
  });

  test('packageNameFromType', () {
    expect(packageNameFromType('Windows.Globalization.Calendar'),
        equals('windows_globalization'));
    expect(packageNameFromType('Windows.Storage.Pickers.FileOpenPicker'),
        equals('windows_storage'));
    expect(
        packageNameFromType('Windows.Devices.Geolocation.Geofencing.Geofence'),
        equals('windows_devices'));
  });

  test('parentNamespace', () {
    expect(parentNamespace('Windows.Foundation.IAsyncInfo'),
        equals('Windows.Foundation'));
    expect(parentNamespace('Windows.Gaming.Input.Gamepad'),
        equals('Windows.Gaming.Input'));
    expect(parentNamespace('Windows.Devices.Display.Core.DisplayManager'),
        equals('Windows.Devices.Display.Core'));
  });

  test('quote', () {
    expect(quote('foo'), equals("'foo'"));
  });

  test('relativeFolderPathFromType', () {
    expect(relativeFolderPathFromType('Windows.Globalization.Calendar'),
        equals('../../packages/windows_globalization/lib/src'));
    expect(relativeFolderPathFromType('Windows.Storage.Pickers.FileOpenPicker'),
        equals('../../packages/windows_storage/lib/src/pickers'));
    expect(
        relativeFolderPathFromType(
            'Windows.Devices.Geolocation.Geofencing.Geofence'),
        equals(
            '../../packages/windows_devices/lib/src/geolocation/geofencing'));
  });

  test('relativePath', () {
    expect(
        relativePath('windows_foundation/lib/src/helpers.dart',
            start: 'windows_foundation/lib/src/collections'),
        equals('../helpers.dart'));
    expect(
        relativePath('windows_foundation/lib/src/collections/iiterator.dart',
            start: 'windows_foundation/lib/src'),
        equals('collections/iiterator.dart'));
    expect(
        relativePath('windows_foundation/lib/internal.dart',
            start: 'windows_foundation/lib/src'),
        equals('../internal.dart'));
    expect(
        relativePath(
            'windows_globalization/lib/src/phonenumberformatting/phonenumberformatter.dart',
            start: 'windows_globalization/lib/src'),
        equals('phonenumberformatting/phonenumberformatter.dart'));
  });

  test('safeIdentifierForString', () {
    expect(safeIdentifierForString('null'), equals('null_'));
    expect(safeIdentifierForString('double'), equals('double_'));
    expect(safeIdentifierForString('__valueSize'), equals('valueSize'));
  });

  test('sortImports', () {
    expect(
        sortImports([
          "import 'fileproperties/basicproperties.dart';",
          "import 'dart:ffi';",
          "import 'package:ffi/ffi.dart';",
          "import 'dart:async';",
          "import 'package:win32/win32.dart';",
          "import 'istoragefile.dart';",
          "import 'istoragefilestatics.dart';",
          "import 'istorageitem.dart';",
        ]),
        orderedEquals([
          "import 'dart:async';",
          "import 'dart:ffi';",
          '',
          "import 'package:ffi/ffi.dart';",
          "import 'package:win32/win32.dart';",
          '',
          "import 'fileproperties/basicproperties.dart';",
          "import 'istoragefile.dart';",
          "import 'istoragefilestatics.dart';",
          "import 'istorageitem.dart';",
        ]));
  });

  test('stripGenerics', () {
    expect(stripGenerics('IAsyncOperation`1<IVector`1<String>>'),
        equals('IAsyncOperation<IVector<String>>'));
    expect(stripGenerics('TypedEventHandler`2'), equals('TypedEventHandler'));
    expect(stripGenerics('LicenseChangedEventHandler'),
        equals('LicenseChangedEventHandler'));
  });

  test('stripLeadingUnderscores', () {
    expect(stripLeadingUnderscores('_leading'), equals('leading'));
    expect(stripLeadingUnderscores('__valueSize'), equals('valueSize'));
    expect(stripLeadingUnderscores('noUnderscore'), equals('noUnderscore'));
  });

  test('stripQuestionMarkSuffix', () {
    expect(stripQuestionMarkSuffix('IJsonValue?'), equals('IJsonValue'));
    expect(stripQuestionMarkSuffix('IJsonValue'), equals('IJsonValue'));
  });

  test('typeArguments', () {
    expect(
        typeArguments('IAsyncOperation<StorageFile?>'), equals('StorageFile?'));
    expect(typeArguments('IMap<String, Object?>'), equals('String, Object?'));
    expect(typeArguments('IMapView<String, IVectorView<TextSegment>?>'),
        equals('String, IVectorView<TextSegment>?'));
  });

  test('wrapCommentText', () {
    expect(wrapCommentText('', 12), isEmpty);
    expect(wrapCommentText('This is a short string', 8),
        equals('/// This\n/// is a\n/// short\n/// string'));
    expect(wrapCommentText('This is a short string', 12),
        equals('/// This is\n/// a short\n/// string'));
    expect(wrapCommentText('This is a short string', 20),
        equals('/// This is a short\n/// string'));
    expect(wrapCommentText('This is a short string', 200),
        equals('/// This is a short string'));
  });

  test('wrapWithPointer', () {
    expect(wrapWithPointer('Int32'), equals('Pointer<Int32>'));
    expect(
        wrapWithPointer('Pointer<Int32>'), equals('Pointer<Pointer<Int32>>'));
    expect(wrapWithPointer('Pointer<COMObject>'), equals('Pointer<COMObject>'));
  });
}
