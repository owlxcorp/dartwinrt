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
import 'package:windows_system/windows_system.dart';

import '../../../credentials/webaccount.dart';
import '../../../credentials/webaccountprovider.dart';
import 'findallaccountsresult.dart';
import 'iwebauthenticationcoremanagerstatics.dart';
import 'webtokenrequest.dart';
import 'webtokenrequestresult.dart';

/// @nodoc
const IID_IWebAuthenticationCoreManagerStatics4 =
    '{54e633fe-96e0-41e8-9832-1298897c2aaf}';

/// {@category interface}
class IWebAuthenticationCoreManagerStatics4 extends IInspectable
    implements IWebAuthenticationCoreManagerStatics {
  // vtable begins at 6, is 5 entries long.
  IWebAuthenticationCoreManagerStatics4.fromPtr(super.ptr);

  factory IWebAuthenticationCoreManagerStatics4.from(IInspectable interface) =>
      IWebAuthenticationCoreManagerStatics4.fromPtr(
          interface.toInterface(IID_IWebAuthenticationCoreManagerStatics4));

  Future<FindAllAccountsResult?> findAllAccountsAsync(
      WebAccountProvider? provider) {
    final retValuePtr = calloc<COMObject>();
    final providerPtr = provider == null ? nullptr : provider.ptr.ref.lpVtbl;

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            VTablePointer provider,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, VTablePointer provider,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, providerPtr, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<FindAllAccountsResult?>.fromPtr(
        retValuePtr,
        creator: FindAllAccountsResult.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<FindAllAccountsResult?> findAllAccountsWithClientIdAsync(
      WebAccountProvider? provider, String clientId) {
    final retValuePtr = calloc<COMObject>();
    final providerPtr = provider == null ? nullptr : provider.ptr.ref.lpVtbl;
    final clientIdHString = clientId.toHString();

    final hr = ptr.ref.vtable
            .elementAt(7)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            VTablePointer provider,
                            IntPtr clientId,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, VTablePointer provider,
                    int clientId, Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, providerPtr, clientIdHString, retValuePtr);

    WindowsDeleteString(clientIdHString);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<FindAllAccountsResult?>.fromPtr(
        retValuePtr,
        creator: FindAllAccountsResult.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<WebAccountProvider?> findSystemAccountProviderAsync(
      String webAccountProviderId) {
    final retValuePtr = calloc<COMObject>();
    final webAccountProviderIdHString = webAccountProviderId.toHString();

    final hr = ptr.ref.vtable
            .elementAt(8)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            IntPtr webAccountProviderId,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int webAccountProviderId,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, webAccountProviderIdHString, retValuePtr);

    WindowsDeleteString(webAccountProviderIdHString);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<WebAccountProvider?>.fromPtr(
        retValuePtr,
        creator: WebAccountProvider.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<WebAccountProvider?> findSystemAccountProviderWithAuthorityAsync(
      String webAccountProviderId, String authority) {
    final retValuePtr = calloc<COMObject>();
    final webAccountProviderIdHString = webAccountProviderId.toHString();
    final authorityHString = authority.toHString();

    final hr = ptr.ref.vtable
            .elementAt(9)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            IntPtr webAccountProviderId,
                            IntPtr authority,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int webAccountProviderId,
                    int authority, Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl,
        webAccountProviderIdHString,
        authorityHString,
        retValuePtr);

    WindowsDeleteString(webAccountProviderIdHString);
    WindowsDeleteString(authorityHString);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<WebAccountProvider?>.fromPtr(
        retValuePtr,
        creator: WebAccountProvider.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<WebAccountProvider?>
      findSystemAccountProviderWithAuthorityForUserAsync(
          String webAccountProviderId, String authority, User? user) {
    final retValuePtr = calloc<COMObject>();
    final webAccountProviderIdHString = webAccountProviderId.toHString();
    final authorityHString = authority.toHString();
    final userPtr = user == null ? nullptr : user.ptr.ref.lpVtbl;

    final hr = ptr.ref.vtable
            .elementAt(10)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            IntPtr webAccountProviderId,
                            IntPtr authority,
                            VTablePointer user,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    int webAccountProviderId,
                    int authority,
                    VTablePointer user,
                    Pointer<COMObject> retValuePtr)>()(ptr.ref.lpVtbl,
        webAccountProviderIdHString, authorityHString, userPtr, retValuePtr);

    WindowsDeleteString(webAccountProviderIdHString);
    WindowsDeleteString(authorityHString);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<WebAccountProvider?>.fromPtr(
        retValuePtr,
        creator: WebAccountProvider.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  late final _iWebAuthenticationCoreManagerStatics =
      IWebAuthenticationCoreManagerStatics.from(this);

  @override
  Future<WebTokenRequestResult?> getTokenSilentlyAsync(
          WebTokenRequest? request) =>
      _iWebAuthenticationCoreManagerStatics.getTokenSilentlyAsync(request);

  @override
  Future<WebTokenRequestResult?> getTokenSilentlyWithWebAccountAsync(
          WebTokenRequest? request, WebAccount? webAccount) =>
      _iWebAuthenticationCoreManagerStatics.getTokenSilentlyWithWebAccountAsync(
          request, webAccount);

  @override
  Future<WebTokenRequestResult?> requestTokenAsync(WebTokenRequest? request) =>
      _iWebAuthenticationCoreManagerStatics.requestTokenAsync(request);

  @override
  Future<WebTokenRequestResult?> requestTokenWithWebAccountAsync(
          WebTokenRequest? request, WebAccount? webAccount) =>
      _iWebAuthenticationCoreManagerStatics.requestTokenWithWebAccountAsync(
          request, webAccount);

  @override
  Future<WebAccount?> findAccountAsync(
          WebAccountProvider? provider, String webAccountId) =>
      _iWebAuthenticationCoreManagerStatics.findAccountAsync(
          provider, webAccountId);

  @override
  Future<WebAccountProvider?> findAccountProviderAsync(
          String webAccountProviderId) =>
      _iWebAuthenticationCoreManagerStatics
          .findAccountProviderAsync(webAccountProviderId);

  @override
  Future<WebAccountProvider?> findAccountProviderWithAuthorityAsync(
          String webAccountProviderId, String authority) =>
      _iWebAuthenticationCoreManagerStatics
          .findAccountProviderWithAuthorityAsync(
              webAccountProviderId, authority);
}
