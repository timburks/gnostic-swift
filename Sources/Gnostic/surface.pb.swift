// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: github.com/googleapis/gnostic/surface/surface.proto
//
// For information on using the generated types, please see the documenation:
//   https://github.com/apple/swift-protobuf/

// Copyright 2017 Google Inc. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//    http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

// Model an API surface for code generation.

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that your are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

public enum Surface_V1_FieldKind: SwiftProtobuf.Enum {
  public typealias RawValue = Int
  case scalar // = 0
  case map // = 1
  case array // = 2
  case reference // = 3
  case any // = 4
  case UNRECOGNIZED(Int)

  public init() {
    self = .scalar
  }

  public init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .scalar
    case 1: self = .map
    case 2: self = .array
    case 3: self = .reference
    case 4: self = .any
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  public var rawValue: Int {
    switch self {
    case .scalar: return 0
    case .map: return 1
    case .array: return 2
    case .reference: return 3
    case .any: return 4
    case .UNRECOGNIZED(let i): return i
    }
  }

}

#if swift(>=4.2)

extension Surface_V1_FieldKind: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Surface_V1_FieldKind] = [
    .scalar,
    .map,
    .array,
    .reference,
    .any,
  ]
}

#endif  // swift(>=4.2)

public enum Surface_V1_TypeKind: SwiftProtobuf.Enum {
  public typealias RawValue = Int

  /// implement with named fields
  case `struct` // = 0

  /// implement with a map
  case object // = 1
  case UNRECOGNIZED(Int)

  public init() {
    self = .struct
  }

  public init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .struct
    case 1: self = .object
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  public var rawValue: Int {
    switch self {
    case .struct: return 0
    case .object: return 1
    case .UNRECOGNIZED(let i): return i
    }
  }

}

#if swift(>=4.2)

extension Surface_V1_TypeKind: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Surface_V1_TypeKind] = [
    .struct,
    .object,
  ]
}

#endif  // swift(>=4.2)

public enum Surface_V1_Position: SwiftProtobuf.Enum {
  public typealias RawValue = Int
  case body // = 0
  case header // = 1
  case formdata // = 2
  case query // = 3
  case path // = 4
  case UNRECOGNIZED(Int)

  public init() {
    self = .body
  }

  public init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .body
    case 1: self = .header
    case 2: self = .formdata
    case 3: self = .query
    case 4: self = .path
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  public var rawValue: Int {
    switch self {
    case .body: return 0
    case .header: return 1
    case .formdata: return 2
    case .query: return 3
    case .path: return 4
    case .UNRECOGNIZED(let i): return i
    }
  }

}

#if swift(>=4.2)

extension Surface_V1_Position: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Surface_V1_Position] = [
    .body,
    .header,
    .formdata,
    .query,
    .path,
  ]
}

#endif  // swift(>=4.2)

/// Field is a field in a definition and can be associated with
/// a position in a request structure.
public struct Surface_V1_Field {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// the name as specified in the API description
  public var name: String = String()

  /// the specified content type of the field
  public var type: String = String()

  /// what kind of thing is this field? scalar, reference, array, map of strings to the specified type
  public var kind: Surface_V1_FieldKind = .scalar

  /// the specified format of the field
  public var format: String = String()

  /// "body", "header", "formdata", "query", or "path"
  public var position: Surface_V1_Position = .body

  /// the programming-language native type of the field
  public var nativeType: String = String()

  /// the name to use for a data structure field
  public var fieldName: String = String()

  /// the name to use for a function parameter
  public var parameterName: String = String()

  /// true if this field should be serialized (to JSON, etc)
  public var serialize: Bool = false

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// Type typically corresponds to a definition, parameter, or response
/// in an API and is represented by a type in generated code.
public struct Surface_V1_Type {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// the name to use for the type
  public var name: String = String()

  /// a meta-description of the type (struct, map, etc)
  public var kind: Surface_V1_TypeKind = .struct

  /// a comment describing the type
  public var description_p: String = String()

  /// if the type is a map, this is its content type
  public var contentType: String = String()

  /// the fields of the type
  public var fields: [Surface_V1_Field] = []

  /// language-specific type name
  public var typeName: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// Method is an operation of an API and typically has associated client and server code.
public struct Surface_V1_Method {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Operation ID
  public var operation: String = String()

  /// HTTP path
  public var path: String = String()

  /// HTTP method name
  public var method: String = String()

  /// description of method
  public var description_p: String = String()

  /// Operation name, possibly generated from method and path
  public var name: String = String()

  /// name of the generated handler
  public var handlerName: String = String()

  /// name of the processing function in the service interface
  public var processorName: String = String()

  /// name of client
  public var clientName: String = String()

  /// parameters (input), with fields corresponding to input parameters
  public var parametersTypeName: String = String()

  /// responses (output), with fields corresponding to possible response values
  public var responsesTypeName: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

/// Model represents an API for code generation.
public struct Surface_V1_Model {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// a free-form title for the API
  public var name: String = String()

  /// the types used by the API
  public var types: [Surface_V1_Type] = []

  /// the methods (functions) of the API
  public var methods: [Surface_V1_Method] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "surface.v1"

extension Surface_V1_FieldKind: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "SCALAR"),
    1: .same(proto: "MAP"),
    2: .same(proto: "ARRAY"),
    3: .same(proto: "REFERENCE"),
    4: .same(proto: "ANY"),
  ]
}

extension Surface_V1_TypeKind: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "STRUCT"),
    1: .same(proto: "OBJECT"),
  ]
}

extension Surface_V1_Position: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "BODY"),
    1: .same(proto: "HEADER"),
    2: .same(proto: "FORMDATA"),
    3: .same(proto: "QUERY"),
    4: .same(proto: "PATH"),
  ]
}

extension Surface_V1_Field: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Field"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "name"),
    2: .same(proto: "type"),
    3: .same(proto: "kind"),
    4: .same(proto: "format"),
    5: .same(proto: "position"),
    6: .same(proto: "nativeType"),
    7: .same(proto: "fieldName"),
    8: .same(proto: "parameterName"),
    9: .same(proto: "serialize"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.name)
      case 2: try decoder.decodeSingularStringField(value: &self.type)
      case 3: try decoder.decodeSingularEnumField(value: &self.kind)
      case 4: try decoder.decodeSingularStringField(value: &self.format)
      case 5: try decoder.decodeSingularEnumField(value: &self.position)
      case 6: try decoder.decodeSingularStringField(value: &self.nativeType)
      case 7: try decoder.decodeSingularStringField(value: &self.fieldName)
      case 8: try decoder.decodeSingularStringField(value: &self.parameterName)
      case 9: try decoder.decodeSingularBoolField(value: &self.serialize)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 1)
    }
    if !self.type.isEmpty {
      try visitor.visitSingularStringField(value: self.type, fieldNumber: 2)
    }
    if self.kind != .scalar {
      try visitor.visitSingularEnumField(value: self.kind, fieldNumber: 3)
    }
    if !self.format.isEmpty {
      try visitor.visitSingularStringField(value: self.format, fieldNumber: 4)
    }
    if self.position != .body {
      try visitor.visitSingularEnumField(value: self.position, fieldNumber: 5)
    }
    if !self.nativeType.isEmpty {
      try visitor.visitSingularStringField(value: self.nativeType, fieldNumber: 6)
    }
    if !self.fieldName.isEmpty {
      try visitor.visitSingularStringField(value: self.fieldName, fieldNumber: 7)
    }
    if !self.parameterName.isEmpty {
      try visitor.visitSingularStringField(value: self.parameterName, fieldNumber: 8)
    }
    if self.serialize != false {
      try visitor.visitSingularBoolField(value: self.serialize, fieldNumber: 9)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Surface_V1_Field, rhs: Surface_V1_Field) -> Bool {
    if lhs.name != rhs.name {return false}
    if lhs.type != rhs.type {return false}
    if lhs.kind != rhs.kind {return false}
    if lhs.format != rhs.format {return false}
    if lhs.position != rhs.position {return false}
    if lhs.nativeType != rhs.nativeType {return false}
    if lhs.fieldName != rhs.fieldName {return false}
    if lhs.parameterName != rhs.parameterName {return false}
    if lhs.serialize != rhs.serialize {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Surface_V1_Type: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Type"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "name"),
    2: .same(proto: "kind"),
    3: .same(proto: "description"),
    4: .same(proto: "contentType"),
    5: .same(proto: "fields"),
    6: .same(proto: "typeName"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.name)
      case 2: try decoder.decodeSingularEnumField(value: &self.kind)
      case 3: try decoder.decodeSingularStringField(value: &self.description_p)
      case 4: try decoder.decodeSingularStringField(value: &self.contentType)
      case 5: try decoder.decodeRepeatedMessageField(value: &self.fields)
      case 6: try decoder.decodeSingularStringField(value: &self.typeName)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 1)
    }
    if self.kind != .struct {
      try visitor.visitSingularEnumField(value: self.kind, fieldNumber: 2)
    }
    if !self.description_p.isEmpty {
      try visitor.visitSingularStringField(value: self.description_p, fieldNumber: 3)
    }
    if !self.contentType.isEmpty {
      try visitor.visitSingularStringField(value: self.contentType, fieldNumber: 4)
    }
    if !self.fields.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.fields, fieldNumber: 5)
    }
    if !self.typeName.isEmpty {
      try visitor.visitSingularStringField(value: self.typeName, fieldNumber: 6)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Surface_V1_Type, rhs: Surface_V1_Type) -> Bool {
    if lhs.name != rhs.name {return false}
    if lhs.kind != rhs.kind {return false}
    if lhs.description_p != rhs.description_p {return false}
    if lhs.contentType != rhs.contentType {return false}
    if lhs.fields != rhs.fields {return false}
    if lhs.typeName != rhs.typeName {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Surface_V1_Method: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Method"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "operation"),
    2: .same(proto: "path"),
    3: .same(proto: "method"),
    4: .same(proto: "description"),
    5: .same(proto: "name"),
    6: .same(proto: "handlerName"),
    7: .same(proto: "processorName"),
    8: .same(proto: "clientName"),
    9: .same(proto: "parametersTypeName"),
    10: .same(proto: "responsesTypeName"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.operation)
      case 2: try decoder.decodeSingularStringField(value: &self.path)
      case 3: try decoder.decodeSingularStringField(value: &self.method)
      case 4: try decoder.decodeSingularStringField(value: &self.description_p)
      case 5: try decoder.decodeSingularStringField(value: &self.name)
      case 6: try decoder.decodeSingularStringField(value: &self.handlerName)
      case 7: try decoder.decodeSingularStringField(value: &self.processorName)
      case 8: try decoder.decodeSingularStringField(value: &self.clientName)
      case 9: try decoder.decodeSingularStringField(value: &self.parametersTypeName)
      case 10: try decoder.decodeSingularStringField(value: &self.responsesTypeName)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.operation.isEmpty {
      try visitor.visitSingularStringField(value: self.operation, fieldNumber: 1)
    }
    if !self.path.isEmpty {
      try visitor.visitSingularStringField(value: self.path, fieldNumber: 2)
    }
    if !self.method.isEmpty {
      try visitor.visitSingularStringField(value: self.method, fieldNumber: 3)
    }
    if !self.description_p.isEmpty {
      try visitor.visitSingularStringField(value: self.description_p, fieldNumber: 4)
    }
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 5)
    }
    if !self.handlerName.isEmpty {
      try visitor.visitSingularStringField(value: self.handlerName, fieldNumber: 6)
    }
    if !self.processorName.isEmpty {
      try visitor.visitSingularStringField(value: self.processorName, fieldNumber: 7)
    }
    if !self.clientName.isEmpty {
      try visitor.visitSingularStringField(value: self.clientName, fieldNumber: 8)
    }
    if !self.parametersTypeName.isEmpty {
      try visitor.visitSingularStringField(value: self.parametersTypeName, fieldNumber: 9)
    }
    if !self.responsesTypeName.isEmpty {
      try visitor.visitSingularStringField(value: self.responsesTypeName, fieldNumber: 10)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Surface_V1_Method, rhs: Surface_V1_Method) -> Bool {
    if lhs.operation != rhs.operation {return false}
    if lhs.path != rhs.path {return false}
    if lhs.method != rhs.method {return false}
    if lhs.description_p != rhs.description_p {return false}
    if lhs.name != rhs.name {return false}
    if lhs.handlerName != rhs.handlerName {return false}
    if lhs.processorName != rhs.processorName {return false}
    if lhs.clientName != rhs.clientName {return false}
    if lhs.parametersTypeName != rhs.parametersTypeName {return false}
    if lhs.responsesTypeName != rhs.responsesTypeName {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Surface_V1_Model: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Model"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "name"),
    2: .same(proto: "types"),
    3: .same(proto: "methods"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.name)
      case 2: try decoder.decodeRepeatedMessageField(value: &self.types)
      case 3: try decoder.decodeRepeatedMessageField(value: &self.methods)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 1)
    }
    if !self.types.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.types, fieldNumber: 2)
    }
    if !self.methods.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.methods, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Surface_V1_Model, rhs: Surface_V1_Model) -> Bool {
    if lhs.name != rhs.name {return false}
    if lhs.types != rhs.types {return false}
    if lhs.methods != rhs.methods {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
