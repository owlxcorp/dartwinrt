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

import 'ixmlelement.dart';
import 'ixmlnode.dart';
import 'ixmlnodeselector.dart';
import 'ixmlnodeserializer.dart';
import 'nodetype.dart';
import 'xmlattribute.dart';
import 'xmldocument.dart';
import 'xmlnamednodemap.dart';
import 'xmlnodelist.dart';

/// Encapsulates information specific to XML Element nodes.
///
/// {@category class}
class XmlElement extends IInspectable
    implements IXmlElement, IXmlNode, IXmlNodeSerializer, IXmlNodeSelector {
  XmlElement.fromPtr(super.ptr);

  late final _iXmlElement = IXmlElement.from(this);

  @override
  String get tagName => _iXmlElement.tagName;

  @override
  String getAttribute(String attributeName) =>
      _iXmlElement.getAttribute(attributeName);

  @override
  void setAttribute(String attributeName, String attributeValue) =>
      _iXmlElement.setAttribute(attributeName, attributeValue);

  @override
  void removeAttribute(String attributeName) =>
      _iXmlElement.removeAttribute(attributeName);

  @override
  XmlAttribute? getAttributeNode(String attributeName) =>
      _iXmlElement.getAttributeNode(attributeName);

  @override
  XmlAttribute? setAttributeNode(XmlAttribute? newAttribute) =>
      _iXmlElement.setAttributeNode(newAttribute);

  @override
  XmlAttribute? removeAttributeNode(XmlAttribute? attributeNode) =>
      _iXmlElement.removeAttributeNode(attributeNode);

  @override
  XmlNodeList getElementsByTagName(String tagName) =>
      _iXmlElement.getElementsByTagName(tagName);

  @override
  void setAttributeNS(
          Object? namespaceUri, String qualifiedName, String value) =>
      _iXmlElement.setAttributeNS(namespaceUri, qualifiedName, value);

  @override
  String getAttributeNS(Object? namespaceUri, String localName) =>
      _iXmlElement.getAttributeNS(namespaceUri, localName);

  @override
  void removeAttributeNS(Object? namespaceUri, String localName) =>
      _iXmlElement.removeAttributeNS(namespaceUri, localName);

  @override
  XmlAttribute? setAttributeNodeNS(XmlAttribute? newAttribute) =>
      _iXmlElement.setAttributeNodeNS(newAttribute);

  @override
  XmlAttribute? getAttributeNodeNS(Object? namespaceUri, String localName) =>
      _iXmlElement.getAttributeNodeNS(namespaceUri, localName);

  late final _iXmlNode = IXmlNode.from(this);

  @override
  Object? get nodeValue => _iXmlNode.nodeValue;

  @override
  set nodeValue(Object? value) => _iXmlNode.nodeValue = value;

  @override
  NodeType get nodeType => _iXmlNode.nodeType;

  @override
  String get nodeName => _iXmlNode.nodeName;

  @override
  IXmlNode? get parentNode => _iXmlNode.parentNode;

  @override
  XmlNodeList get childNodes => _iXmlNode.childNodes;

  @override
  IXmlNode? get firstChild => _iXmlNode.firstChild;

  @override
  IXmlNode? get lastChild => _iXmlNode.lastChild;

  @override
  IXmlNode? get previousSibling => _iXmlNode.previousSibling;

  @override
  IXmlNode? get nextSibling => _iXmlNode.nextSibling;

  @override
  XmlNamedNodeMap get attributes => _iXmlNode.attributes;

  @override
  bool hasChildNodes() => _iXmlNode.hasChildNodes();

  @override
  XmlDocument? get ownerDocument => _iXmlNode.ownerDocument;

  @override
  IXmlNode? insertBefore(IXmlNode? newChild, IXmlNode? referenceChild) =>
      _iXmlNode.insertBefore(newChild, referenceChild);

  @override
  IXmlNode? replaceChild(IXmlNode? newChild, IXmlNode? referenceChild) =>
      _iXmlNode.replaceChild(newChild, referenceChild);

  @override
  IXmlNode? removeChild(IXmlNode? childNode) =>
      _iXmlNode.removeChild(childNode);

  @override
  IXmlNode? appendChild(IXmlNode? newChild) => _iXmlNode.appendChild(newChild);

  @override
  IXmlNode? cloneNode(bool deep) => _iXmlNode.cloneNode(deep);

  @override
  Object? get namespaceUri => _iXmlNode.namespaceUri;

  @override
  Object? get localName => _iXmlNode.localName;

  @override
  Object? get prefix => _iXmlNode.prefix;

  @override
  void normalize() => _iXmlNode.normalize();

  @override
  set prefix(Object? value) => _iXmlNode.prefix = value;

  late final _iXmlNodeSerializer = IXmlNodeSerializer.from(this);

  @override
  String getXml() => _iXmlNodeSerializer.getXml();

  @override
  String get innerText => _iXmlNodeSerializer.innerText;

  @override
  set innerText(String value) => _iXmlNodeSerializer.innerText = value;

  late final _iXmlNodeSelector = IXmlNodeSelector.from(this);

  @override
  IXmlNode? selectSingleNode(String xpath) =>
      _iXmlNodeSelector.selectSingleNode(xpath);

  @override
  XmlNodeList selectNodes(String xpath) => _iXmlNodeSelector.selectNodes(xpath);

  @override
  IXmlNode? selectSingleNodeNS(String xpath, Object? namespaces) =>
      _iXmlNodeSelector.selectSingleNodeNS(xpath, namespaces);

  @override
  XmlNodeList selectNodesNS(String xpath, Object? namespaces) =>
      _iXmlNodeSelector.selectNodesNS(xpath, namespaces);
}
