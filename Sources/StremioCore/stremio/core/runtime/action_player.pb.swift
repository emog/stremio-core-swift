// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: stremio/core/runtime/action_player.proto
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

public struct Stremio_Core_Runtime_ActionPlayer {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var args: Stremio_Core_Runtime_ActionPlayer.OneOf_Args? = nil

  public var videoParamsChanged: Stremio_Core_Models_Player.VideoParams {
    get {
      if case .videoParamsChanged(let v)? = args {return v}
      return Stremio_Core_Models_Player.VideoParams()
    }
    set {args = .videoParamsChanged(newValue)}
  }

  public var streamStateChanged: Stremio_Core_Models_Player.StreamState {
    get {
      if case .streamStateChanged(let v)? = args {return v}
      return Stremio_Core_Models_Player.StreamState()
    }
    set {args = .streamStateChanged(newValue)}
  }

  public var timeChanged: Stremio_Core_Runtime_ActionPlayer.PlayerItemState {
    get {
      if case .timeChanged(let v)? = args {return v}
      return Stremio_Core_Runtime_ActionPlayer.PlayerItemState()
    }
    set {args = .timeChanged(newValue)}
  }

  public var pausedChanged: Bool {
    get {
      if case .pausedChanged(let v)? = args {return v}
      return false
    }
    set {args = .pausedChanged(newValue)}
  }

  public var nextVideo: SwiftProtobuf.Google_Protobuf_Empty {
    get {
      if case .nextVideo(let v)? = args {return v}
      return SwiftProtobuf.Google_Protobuf_Empty()
    }
    set {args = .nextVideo(newValue)}
  }

  public var ended: SwiftProtobuf.Google_Protobuf_Empty {
    get {
      if case .ended(let v)? = args {return v}
      return SwiftProtobuf.Google_Protobuf_Empty()
    }
    set {args = .ended(newValue)}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public enum OneOf_Args: Equatable {
    case videoParamsChanged(Stremio_Core_Models_Player.VideoParams)
    case streamStateChanged(Stremio_Core_Models_Player.StreamState)
    case timeChanged(Stremio_Core_Runtime_ActionPlayer.PlayerItemState)
    case pausedChanged(Bool)
    case nextVideo(SwiftProtobuf.Google_Protobuf_Empty)
    case ended(SwiftProtobuf.Google_Protobuf_Empty)

    fileprivate var isInitialized: Bool {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch self {
      case .streamStateChanged: return {
        guard case .streamStateChanged(let v) = self else { preconditionFailure() }
        return v.isInitialized
      }()
      case .timeChanged: return {
        guard case .timeChanged(let v) = self else { preconditionFailure() }
        return v.isInitialized
      }()
      default: return true
      }
    }

  #if !swift(>=4.1)
    public static func ==(lhs: Stremio_Core_Runtime_ActionPlayer.OneOf_Args, rhs: Stremio_Core_Runtime_ActionPlayer.OneOf_Args) -> Bool {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch (lhs, rhs) {
      case (.videoParamsChanged, .videoParamsChanged): return {
        guard case .videoParamsChanged(let l) = lhs, case .videoParamsChanged(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.streamStateChanged, .streamStateChanged): return {
        guard case .streamStateChanged(let l) = lhs, case .streamStateChanged(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.timeChanged, .timeChanged): return {
        guard case .timeChanged(let l) = lhs, case .timeChanged(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.pausedChanged, .pausedChanged): return {
        guard case .pausedChanged(let l) = lhs, case .pausedChanged(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.nextVideo, .nextVideo): return {
        guard case .nextVideo(let l) = lhs, case .nextVideo(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.ended, .ended): return {
        guard case .ended(let l) = lhs, case .ended(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      default: return false
      }
    }
  #endif
  }

  public struct PlayerItemState {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    public var time: UInt64 {
      get {return _time ?? 0}
      set {_time = newValue}
    }
    /// Returns true if `time` has been explicitly set.
    public var hasTime: Bool {return self._time != nil}
    /// Clears the value of `time`. Subsequent reads from it will return its default value.
    public mutating func clearTime() {self._time = nil}

    public var duration: UInt64 {
      get {return _duration ?? 0}
      set {_duration = newValue}
    }
    /// Returns true if `duration` has been explicitly set.
    public var hasDuration: Bool {return self._duration != nil}
    /// Clears the value of `duration`. Subsequent reads from it will return its default value.
    public mutating func clearDuration() {self._duration = nil}

    public var device: String {
      get {return _device ?? String()}
      set {_device = newValue}
    }
    /// Returns true if `device` has been explicitly set.
    public var hasDevice: Bool {return self._device != nil}
    /// Clears the value of `device`. Subsequent reads from it will return its default value.
    public mutating func clearDevice() {self._device = nil}

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    public init() {}

    fileprivate var _time: UInt64? = nil
    fileprivate var _duration: UInt64? = nil
    fileprivate var _device: String? = nil
  }

  public init() {}
}

#if swift(>=5.5) && canImport(_Concurrency)
extension Stremio_Core_Runtime_ActionPlayer: @unchecked Sendable {}
extension Stremio_Core_Runtime_ActionPlayer.OneOf_Args: @unchecked Sendable {}
extension Stremio_Core_Runtime_ActionPlayer.PlayerItemState: @unchecked Sendable {}
#endif  // swift(>=5.5) && canImport(_Concurrency)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "stremio.core.runtime"

extension Stremio_Core_Runtime_ActionPlayer: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".ActionPlayer"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "video_params_changed"),
    2: .standard(proto: "stream_state_changed"),
    3: .standard(proto: "time_changed"),
    4: .standard(proto: "paused_changed"),
    5: .standard(proto: "next_video"),
    6: .same(proto: "ended"),
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
        var v: Stremio_Core_Models_Player.VideoParams?
        var hadOneofValue = false
        if let current = self.args {
          hadOneofValue = true
          if case .videoParamsChanged(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {
          if hadOneofValue {try decoder.handleConflictingOneOf()}
          self.args = .videoParamsChanged(v)
        }
      }()
      case 2: try {
        var v: Stremio_Core_Models_Player.StreamState?
        var hadOneofValue = false
        if let current = self.args {
          hadOneofValue = true
          if case .streamStateChanged(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {
          if hadOneofValue {try decoder.handleConflictingOneOf()}
          self.args = .streamStateChanged(v)
        }
      }()
      case 3: try {
        var v: Stremio_Core_Runtime_ActionPlayer.PlayerItemState?
        var hadOneofValue = false
        if let current = self.args {
          hadOneofValue = true
          if case .timeChanged(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {
          if hadOneofValue {try decoder.handleConflictingOneOf()}
          self.args = .timeChanged(v)
        }
      }()
      case 4: try {
        var v: Bool?
        try decoder.decodeSingularBoolField(value: &v)
        if let v = v {
          if self.args != nil {try decoder.handleConflictingOneOf()}
          self.args = .pausedChanged(v)
        }
      }()
      case 5: try {
        var v: SwiftProtobuf.Google_Protobuf_Empty?
        var hadOneofValue = false
        if let current = self.args {
          hadOneofValue = true
          if case .nextVideo(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {
          if hadOneofValue {try decoder.handleConflictingOneOf()}
          self.args = .nextVideo(v)
        }
      }()
      case 6: try {
        var v: SwiftProtobuf.Google_Protobuf_Empty?
        var hadOneofValue = false
        if let current = self.args {
          hadOneofValue = true
          if case .ended(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {
          if hadOneofValue {try decoder.handleConflictingOneOf()}
          self.args = .ended(v)
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
    case .videoParamsChanged?: try {
      guard case .videoParamsChanged(let v)? = self.args else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }()
    case .streamStateChanged?: try {
      guard case .streamStateChanged(let v)? = self.args else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }()
    case .timeChanged?: try {
      guard case .timeChanged(let v)? = self.args else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    }()
    case .pausedChanged?: try {
      guard case .pausedChanged(let v)? = self.args else { preconditionFailure() }
      try visitor.visitSingularBoolField(value: v, fieldNumber: 4)
    }()
    case .nextVideo?: try {
      guard case .nextVideo(let v)? = self.args else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 5)
    }()
    case .ended?: try {
      guard case .ended(let v)? = self.args else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 6)
    }()
    case nil: break
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Stremio_Core_Runtime_ActionPlayer, rhs: Stremio_Core_Runtime_ActionPlayer) -> Bool {
    if lhs.args != rhs.args {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Stremio_Core_Runtime_ActionPlayer.PlayerItemState: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = Stremio_Core_Runtime_ActionPlayer.protoMessageName + ".PlayerItemState"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "time"),
    2: .same(proto: "duration"),
    3: .same(proto: "device"),
  ]

  public var isInitialized: Bool {
    if self._time == nil {return false}
    if self._duration == nil {return false}
    if self._device == nil {return false}
    return true
  }

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularUInt64Field(value: &self._time) }()
      case 2: try { try decoder.decodeSingularUInt64Field(value: &self._duration) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self._device) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._time {
      try visitor.visitSingularUInt64Field(value: v, fieldNumber: 1)
    } }()
    try { if let v = self._duration {
      try visitor.visitSingularUInt64Field(value: v, fieldNumber: 2)
    } }()
    try { if let v = self._device {
      try visitor.visitSingularStringField(value: v, fieldNumber: 3)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Stremio_Core_Runtime_ActionPlayer.PlayerItemState, rhs: Stremio_Core_Runtime_ActionPlayer.PlayerItemState) -> Bool {
    if lhs._time != rhs._time {return false}
    if lhs._duration != rhs._duration {return false}
    if lhs._device != rhs._device {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
