// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart';

import '../../utilities/utilities.dart';
import '../getter.dart';
import '../method.dart';
import '../type.dart';

mixin _VectorMixin on MethodProjection {
  /// The type argument of `IVector` and `IVectorView`, as represented in the
  /// [returnTypeProjection]'s [TypeIdentifier] (e.g. `int`, `String`,
  /// `StorageFile`).
  String get vectorTypeArg =>
      typeArguments(returnTypeProjection.typeIdentifier.name);

  /// The constructor arguments passed to the constructors of `IVector` and
  /// `IVectorView`.
  String get vectorConstructorArgs {
    final typeProjection =
        TypeProjection(returnTypeProjection.typeIdentifier.typeArgs.first);

    // If the type argument is an enum or a WinRT object (e.g. StorageFile), the
    // constructor of that class must be passed in the 'enumCreator' parameter
    // for enums, 'creator' parameter for WinRT objects so that the IVector and
    // IVectorView implementations can instantiate the object
    final creator = returnTypeProjection.typeIdentifier.typeArgs.first.creator;

    // The IID for IIterable<T> must be passed in the 'iterableIid' parameter so
    // that the IVector and IVectorView implementations can use the correct IID
    // when instantiating the IIterable object
    final iterableIid =
        iterableIidFromVectorType(returnTypeProjection.typeIdentifier);

    // If the type argument is an int, 'intType' parameter must be specified so
    // that the IVector and IVectorView implementations can use the appropriate
    // native integer type
    final intType = vectorTypeArg == 'int'
        ? 'IntType.${typeProjection.nativeType.toLowerCase()}'
        : null;

    final args = <String>["iterableIid: ${quote(iterableIid)}"];
    if (typeProjection.isWinRTEnum) {
      args.add('enumCreator: $creator');
    } else if (creator != null) {
      args.add('creator: $creator');
    }
    if (intType != null) {
      args.add('intType: $intType');
    }

    return ', ${args.join(', ')}';
  }

  @override
  String get returnType => 'IVector<$vectorTypeArg>';

  @override
  String get methodDeclaration => '''
  $methodHeader {
    final retValuePtr = calloc<COMObject>();
    ${ffiCall(freeRetValOnFailure: true)}

    return IVector.fromPtr(retValuePtr$vectorConstructorArgs);
  }
''';
}

/// Method projection for methods that return `IVector<T>`.
final class VectorMethodProjection extends MethodProjection with _VectorMixin {
  VectorMethodProjection(super.method, super.vtableOffset);
}

/// Getter projection for `IVector<T>` getters.
final class VectorGetterProjection extends GetterProjection with _VectorMixin {
  VectorGetterProjection(super.method, super.vtableOffset);
}

/// Method projection for methods that return `IVectorView<T>` (exposed as
/// `List<T>`).
final class VectorViewMethodProjection extends MethodProjection
    with _VectorMixin {
  VectorViewMethodProjection(super.method, super.vtableOffset);

  @override
  String get returnType => 'List<$vectorTypeArg>';

  @override
  String get methodDeclaration => '''
  $methodHeader {
    final retValuePtr = calloc<COMObject>();
    ${ffiCall(freeRetValOnFailure: true)}

    final vectorView = IVectorView<$vectorTypeArg>.fromPtr
        (retValuePtr$vectorConstructorArgs);
    return vectorView.toList();
  }
''';
}

/// Getter projection for `IVectorView<T>` (exposed as `List<T>`) getters.
final class VectorViewGetterProjection extends GetterProjection
    with _VectorMixin {
  VectorViewGetterProjection(super.method, super.vtableOffset);

  @override
  String get returnType => 'List<$vectorTypeArg>';

  @override
  String get methodDeclaration => '''
  $methodHeader {
    final retValuePtr = calloc<COMObject>();
    ${ffiCall(freeRetValOnFailure: true)}

    final vectorView = IVectorView<$vectorTypeArg>.fromPtr
        (retValuePtr$vectorConstructorArgs);
    return vectorView.toList();
  }
''';
}
