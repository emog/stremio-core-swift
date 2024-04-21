// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: stremio/core/runtime/action_meta_details.proto
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

public struct Stremio_Core_Runtime_ActionMetaDetails {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var args: Stremio_Core_Runtime_ActionMetaDetails.OneOf_Args? = nil

  public var markAsWatched: Bool {
    get {
      if case .markAsWatched(let v)? = args {return v}
      return false
    }
    set {args = .markAsWatched(newValue)}
  }

  public var markVideoAsWatched: Stremio_Core_Runtime_ActionMetaDetails.VideoState {
    get {
      if case .markVideoAsWatched(let v)? = args {return v}
      return Stremio_Core_Runtime_ActionMetaDetails.VideoState()
    }
    set {args = .markVideoAsWatched(newValue)}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public enum OneOf_Args: Equatable {
    case markAsWatched(Bool)
    case markVideoAsWatched(Stremio_Core_Runtime_ActionMetaDetails.VideoState)

    fileprivate var isInitialized: Bool {
      guard case .markVideoAsWatched(let v) = self else {return true}
      return v.isInitialized
    }

  #if !swift(>=4.1)
    public static func ==(lhs: Stremio_Core_Runtime_ActionMetaDetails.OneOf_Args, rhs: Stremio_Core_Runtime_ActionMetaDetails.OneOf_Args) -> Bool {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch (lhs, rhs) {
      case (.markAsWatched, .markAsWatched): return {
        guard case .markAsWatched(let l) = lhs, case .markAsWatched(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.markVideoAsWatched, .markVideoAsWatched): return {
        guard case .markVideoAsWatched(let l) = lhs, case .markVideoAsWatched(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      default: return false
      }
    }
  #endif
  }

  public struct VideoState {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    public var video: Stremio_Core_Types_Video {
      get {return _video ?? Stremio_Core_Types_Video()}
      set {_video = newValue}
    }
    /// Returns true if `video` has been explicitly set.
    public var hasVideo: Bool {return self._video != nil}
    /// Clears the value of `video`. Subsequent reads from it will return its default value.
    public mutating func clearVideo() {self._video = nil}

    public var isWatched: Bool {
      get {return _isWatched ?? false}
      set {_isWatched = newValue}
    }
    /// Returns true if `isWatched` has been explicitly set.
    public var hasIsWatched: Bool {return self._isWatched != nil}
    /// Clears the value of `isWatched`. Subsequent reads from it will return its default value.
    public mutating func clearIsWatched() {self._isWatched = nil}

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    public init() {}

    fileprivate var _video: Stremio_Core_Types_Video? = nil
    fileprivate var _isWatched: Bool? = nil
  }

  public init() {}
}

#if swift(>=5.5) && canImport(_Concurrency)
extension Stremio_Core_Runtime_ActionMetaDetails: @unchecked Sendable {}
extension Stremio_Core_Runtime_ActionMetaDetails.OneOf_Args: @unchecked Sendable {}
extension Stremio_Core_Runtime_ActionMetaDetails.VideoState: @unchecked Sendable {}
#endif  // swift(>=5.5) && canImport(_Concurrency)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "stremio.core.runtime"

extension Stremio_Core_Runtime_ActionMetaDetails: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ActionMetaDetails"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "mark_as_watched"),
    2: .standard(proto: "mark_video_as_watched"),
  ]

  public var isInitialized: Bool {
    if let v = self.args, !v.isInitialized {return false}
    return true
  }

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try {
        var v: Bool?
        try decoder.decodeSingularBoolField(value: &v)
        if let v = v {
          if self.args != nil {try decoder.handleConflictingOneOf()}
          self.args = .markAsWatched(v)
        }
      }()
      case 2: try {
        var v: Stremio_Core_Runtime_ActionMetaDetails.VideoState?
        var hadOneofValue = false
        if let current = self.args {
          hadOneofValue = true
          if case .markVideoAsWatched(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {
          if hadOneofValue {try decoder.handleConflictingOneOf()}
          self.args = .markVideoAsWatched(v)
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
    switch self.args {
    case .markAsWatched?: try {
      guard case .markAsWatched(let v)? = self.args else { preconditionFailure() }
      try visitor.visitSingularBoolField(value: v, fieldNumber: 1)
    }()
    case .markVideoAsWatched?: try {
      guard case .markVideoAsWatched(let v)? = self.args else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }()
    case nil: break
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Stremio_Core_Runtime_ActionMetaDetails, rhs: Stremio_Core_Runtime_ActionMetaDetails) -> Bool {
    if lhs.args != rhs.args {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Stremio_Core_Runtime_ActionMetaDetails.VideoState: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = Stremio_Core_Runtime_ActionMetaDetails.protoMessageName + ".VideoState"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "video"),
    2: .standard(proto: "is_watched"),
  ]

  public var isInitialized: Bool {
    if self._video == nil {return false}
    if self._isWatched == nil {return false}
    if let v = self._video, !v.isInitialized {return false}
    return true
  }

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._video) }()
      case 2: try { try decoder.decodeSingularBoolField(value: &self._isWatched) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._video {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    } }()
    try { if let v = self._isWatched {
      try visitor.visitSingularBoolField(value: v, fieldNumber: 2)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Stremio_Core_Runtime_ActionMetaDetails.VideoState, rhs: Stremio_Core_Runtime_ActionMetaDetails.VideoState) -> Bool {
    if lhs._video != rhs._video {return false}
    if lhs._isWatched != rhs._isWatched {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
