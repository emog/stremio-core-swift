// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: stremio/core/runtime/action.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that you are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

public struct Stremio_Core_Runtime_RuntimeAction {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var field: Stremio_Core_Runtime_Field {
    get {return _field ?? .ctx}
    set {_field = newValue}
  }
  /// Returns true if `field` has been explicitly set.
  public var hasField: Bool {return self._field != nil}
  /// Clears the value of `field`. Subsequent reads from it will return its default value.
  public mutating func clearField() {self._field = nil}

  public var action: Stremio_Core_Runtime_Action {
    get {return _action ?? Stremio_Core_Runtime_Action()}
    set {_action = newValue}
  }
  /// Returns true if `action` has been explicitly set.
  public var hasAction: Bool {return self._action != nil}
  /// Clears the value of `action`. Subsequent reads from it will return its default value.
  public mutating func clearAction() {self._action = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _field: Stremio_Core_Runtime_Field? = nil
  fileprivate var _action: Stremio_Core_Runtime_Action? = nil
}

public struct Stremio_Core_Runtime_Action {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var type: Stremio_Core_Runtime_Action.OneOf_Type? = nil

  public var ctx: Stremio_Core_Runtime_ActionCtx {
    get {
      if case .ctx(let v)? = type {return v}
      return Stremio_Core_Runtime_ActionCtx()
    }
    set {type = .ctx(newValue)}
  }

  public var link: Stremio_Core_Runtime_ActionLink {
    get {
      if case .link(let v)? = type {return v}
      return Stremio_Core_Runtime_ActionLink()
    }
    set {type = .link(newValue)}
  }

  public var catalogWithFilters: Stremio_Core_Runtime_ActionCatalogWithFilters {
    get {
      if case .catalogWithFilters(let v)? = type {return v}
      return Stremio_Core_Runtime_ActionCatalogWithFilters()
    }
    set {type = .catalogWithFilters(newValue)}
  }

  public var catalogsWithExtra: Stremio_Core_Runtime_ActionCatalogsWithExtra {
    get {
      if case .catalogsWithExtra(let v)? = type {return v}
      return Stremio_Core_Runtime_ActionCatalogsWithExtra()
    }
    set {type = .catalogsWithExtra(newValue)}
  }

  public var libraryByType: Stremio_Core_Runtime_ActionLibraryByType {
    get {
      if case .libraryByType(let v)? = type {return v}
      return Stremio_Core_Runtime_ActionLibraryByType()
    }
    set {type = .libraryByType(newValue)}
  }

  public var metaDetails: Stremio_Core_Runtime_ActionMetaDetails {
    get {
      if case .metaDetails(let v)? = type {return v}
      return Stremio_Core_Runtime_ActionMetaDetails()
    }
    set {type = .metaDetails(newValue)}
  }

  public var streamingServer: Stremio_Core_Runtime_ActionStreamingServer {
    get {
      if case .streamingServer(let v)? = type {return v}
      return Stremio_Core_Runtime_ActionStreamingServer()
    }
    set {type = .streamingServer(newValue)}
  }

  public var player: Stremio_Core_Runtime_ActionPlayer {
    get {
      if case .player(let v)? = type {return v}
      return Stremio_Core_Runtime_ActionPlayer()
    }
    set {type = .player(newValue)}
  }

  public var load: Stremio_Core_Runtime_ActionLoad {
    get {
      if case .load(let v)? = type {return v}
      return Stremio_Core_Runtime_ActionLoad()
    }
    set {type = .load(newValue)}
  }

  public var unload: Stremio_Core_Runtime_Action.ActionUnload {
    get {
      if case .unload(let v)? = type {return v}
      return Stremio_Core_Runtime_Action.ActionUnload()
    }
    set {type = .unload(newValue)}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public enum OneOf_Type: Equatable {
    case ctx(Stremio_Core_Runtime_ActionCtx)
    case link(Stremio_Core_Runtime_ActionLink)
    case catalogWithFilters(Stremio_Core_Runtime_ActionCatalogWithFilters)
    case catalogsWithExtra(Stremio_Core_Runtime_ActionCatalogsWithExtra)
    case libraryByType(Stremio_Core_Runtime_ActionLibraryByType)
    case metaDetails(Stremio_Core_Runtime_ActionMetaDetails)
    case streamingServer(Stremio_Core_Runtime_ActionStreamingServer)
    case player(Stremio_Core_Runtime_ActionPlayer)
    case load(Stremio_Core_Runtime_ActionLoad)
    case unload(Stremio_Core_Runtime_Action.ActionUnload)

    fileprivate var isInitialized: Bool {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch self {
      case .ctx: return {
        guard case .ctx(let v) = self else { preconditionFailure() }
        return v.isInitialized
      }()
      case .catalogsWithExtra: return {
        guard case .catalogsWithExtra(let v) = self else { preconditionFailure() }
        return v.isInitialized
      }()
      case .metaDetails: return {
        guard case .metaDetails(let v) = self else { preconditionFailure() }
        return v.isInitialized
      }()
      case .streamingServer: return {
        guard case .streamingServer(let v) = self else { preconditionFailure() }
        return v.isInitialized
      }()
      case .player: return {
        guard case .player(let v) = self else { preconditionFailure() }
        return v.isInitialized
      }()
      case .load: return {
        guard case .load(let v) = self else { preconditionFailure() }
        return v.isInitialized
      }()
      default: return true
      }
    }

  #if !swift(>=4.1)
    public static func ==(lhs: Stremio_Core_Runtime_Action.OneOf_Type, rhs: Stremio_Core_Runtime_Action.OneOf_Type) -> Bool {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch (lhs, rhs) {
      case (.ctx, .ctx): return {
        guard case .ctx(let l) = lhs, case .ctx(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.link, .link): return {
        guard case .link(let l) = lhs, case .link(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.catalogWithFilters, .catalogWithFilters): return {
        guard case .catalogWithFilters(let l) = lhs, case .catalogWithFilters(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.catalogsWithExtra, .catalogsWithExtra): return {
        guard case .catalogsWithExtra(let l) = lhs, case .catalogsWithExtra(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.libraryByType, .libraryByType): return {
        guard case .libraryByType(let l) = lhs, case .libraryByType(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.metaDetails, .metaDetails): return {
        guard case .metaDetails(let l) = lhs, case .metaDetails(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.streamingServer, .streamingServer): return {
        guard case .streamingServer(let l) = lhs, case .streamingServer(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.player, .player): return {
        guard case .player(let l) = lhs, case .player(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.load, .load): return {
        guard case .load(let l) = lhs, case .load(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.unload, .unload): return {
        guard case .unload(let l) = lhs, case .unload(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      default: return false
      }
    }
  #endif
  }

  public struct ActionUnload {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    public init() {}
  }

  public init() {}
}

#if swift(>=5.5) && canImport(_Concurrency)
extension Stremio_Core_Runtime_RuntimeAction: @unchecked Sendable {}
extension Stremio_Core_Runtime_Action: @unchecked Sendable {}
extension Stremio_Core_Runtime_Action.OneOf_Type: @unchecked Sendable {}
extension Stremio_Core_Runtime_Action.ActionUnload: @unchecked Sendable {}
#endif  // swift(>=5.5) && canImport(_Concurrency)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "stremio.core.runtime"

extension Stremio_Core_Runtime_RuntimeAction: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".RuntimeAction"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "field"),
    2: .same(proto: "action"),
  ]

  public var isInitialized: Bool {
    if self._action == nil {return false}
    if let v = self._action, !v.isInitialized {return false}
    return true
  }

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularEnumField(value: &self._field) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._action) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._field {
      try visitor.visitSingularEnumField(value: v, fieldNumber: 1)
    } }()
    try { if let v = self._action {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Stremio_Core_Runtime_RuntimeAction, rhs: Stremio_Core_Runtime_RuntimeAction) -> Bool {
    if lhs._field != rhs._field {return false}
    if lhs._action != rhs._action {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Stremio_Core_Runtime_Action: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Action"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "ctx"),
    2: .same(proto: "link"),
    3: .standard(proto: "catalog_with_filters"),
    4: .standard(proto: "catalogs_with_extra"),
    5: .standard(proto: "library_by_type"),
    6: .standard(proto: "meta_details"),
    7: .standard(proto: "streaming_server"),
    8: .same(proto: "player"),
    9: .same(proto: "load"),
    10: .same(proto: "unload"),
  ]

  public var isInitialized: Bool {
    if let v = self.type, !v.isInitialized {return false}
    return true
  }

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try {
        var v: Stremio_Core_Runtime_ActionCtx?
        var hadOneofValue = false
        if let current = self.type {
          hadOneofValue = true
          if case .ctx(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {
          if hadOneofValue {try decoder.handleConflictingOneOf()}
          self.type = .ctx(v)
        }
      }()
      case 2: try {
        var v: Stremio_Core_Runtime_ActionLink?
        var hadOneofValue = false
        if let current = self.type {
          hadOneofValue = true
          if case .link(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {
          if hadOneofValue {try decoder.handleConflictingOneOf()}
          self.type = .link(v)
        }
      }()
      case 3: try {
        var v: Stremio_Core_Runtime_ActionCatalogWithFilters?
        var hadOneofValue = false
        if let current = self.type {
          hadOneofValue = true
          if case .catalogWithFilters(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {
          if hadOneofValue {try decoder.handleConflictingOneOf()}
          self.type = .catalogWithFilters(v)
        }
      }()
      case 4: try {
        var v: Stremio_Core_Runtime_ActionCatalogsWithExtra?
        var hadOneofValue = false
        if let current = self.type {
          hadOneofValue = true
          if case .catalogsWithExtra(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {
          if hadOneofValue {try decoder.handleConflictingOneOf()}
          self.type = .catalogsWithExtra(v)
        }
      }()
      case 5: try {
        var v: Stremio_Core_Runtime_ActionLibraryByType?
        var hadOneofValue = false
        if let current = self.type {
          hadOneofValue = true
          if case .libraryByType(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {
          if hadOneofValue {try decoder.handleConflictingOneOf()}
          self.type = .libraryByType(v)
        }
      }()
      case 6: try {
        var v: Stremio_Core_Runtime_ActionMetaDetails?
        var hadOneofValue = false
        if let current = self.type {
          hadOneofValue = true
          if case .metaDetails(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {
          if hadOneofValue {try decoder.handleConflictingOneOf()}
          self.type = .metaDetails(v)
        }
      }()
      case 7: try {
        var v: Stremio_Core_Runtime_ActionStreamingServer?
        var hadOneofValue = false
        if let current = self.type {
          hadOneofValue = true
          if case .streamingServer(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {
          if hadOneofValue {try decoder.handleConflictingOneOf()}
          self.type = .streamingServer(v)
        }
      }()
      case 8: try {
        var v: Stremio_Core_Runtime_ActionPlayer?
        var hadOneofValue = false
        if let current = self.type {
          hadOneofValue = true
          if case .player(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {
          if hadOneofValue {try decoder.handleConflictingOneOf()}
          self.type = .player(v)
        }
      }()
      case 9: try {
        var v: Stremio_Core_Runtime_ActionLoad?
        var hadOneofValue = false
        if let current = self.type {
          hadOneofValue = true
          if case .load(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {
          if hadOneofValue {try decoder.handleConflictingOneOf()}
          self.type = .load(v)
        }
      }()
      case 10: try {
        var v: Stremio_Core_Runtime_Action.ActionUnload?
        var hadOneofValue = false
        if let current = self.type {
          hadOneofValue = true
          if case .unload(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {
          if hadOneofValue {try decoder.handleConflictingOneOf()}
          self.type = .unload(v)
        }
      }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    switch self.type {
    case .ctx?: try {
      guard case .ctx(let v)? = self.type else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }()
    case .link?: try {
      guard case .link(let v)? = self.type else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }()
    case .catalogWithFilters?: try {
      guard case .catalogWithFilters(let v)? = self.type else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    }()
    case .catalogsWithExtra?: try {
      guard case .catalogsWithExtra(let v)? = self.type else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
    }()
    case .libraryByType?: try {
      guard case .libraryByType(let v)? = self.type else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 5)
    }()
    case .metaDetails?: try {
      guard case .metaDetails(let v)? = self.type else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 6)
    }()
    case .streamingServer?: try {
      guard case .streamingServer(let v)? = self.type else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 7)
    }()
    case .player?: try {
      guard case .player(let v)? = self.type else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 8)
    }()
    case .load?: try {
      guard case .load(let v)? = self.type else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 9)
    }()
    case .unload?: try {
      guard case .unload(let v)? = self.type else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 10)
    }()
    case nil: break
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Stremio_Core_Runtime_Action, rhs: Stremio_Core_Runtime_Action) -> Bool {
    if lhs.type != rhs.type {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Stremio_Core_Runtime_Action.ActionUnload: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = Stremio_Core_Runtime_Action.protoMessageName + ".ActionUnload"
  public static let _protobuf_nameMap = SwiftProtobuf._NameMap()

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let _ = try decoder.nextFieldNumber() {
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Stremio_Core_Runtime_Action.ActionUnload, rhs: Stremio_Core_Runtime_Action.ActionUnload) -> Bool {
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
