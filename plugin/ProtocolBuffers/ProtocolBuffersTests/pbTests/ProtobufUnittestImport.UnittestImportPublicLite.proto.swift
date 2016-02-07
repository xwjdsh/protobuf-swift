// Generated by the protocol buffer compiler.  DO NOT EDIT!
// Source file unittest_import_public_lite.proto

import Foundation
import ProtocolBuffers


public extension ProtobufUnittestImport{}

public func == (lhs: ProtobufUnittestImport.PublicImportMessageLite, rhs: ProtobufUnittestImport.PublicImportMessageLite) -> Bool {
  if (lhs === rhs) {
    return true
  }
  var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
  fieldCheck = fieldCheck && (lhs.hasE == rhs.hasE) && (!lhs.hasE || lhs.e == rhs.e)
  fieldCheck = (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
  return fieldCheck
}

public extension ProtobufUnittestImport {
  public struct UnittestImportPublicLiteRoot {
    public static var sharedInstance : UnittestImportPublicLiteRoot {
     struct Static {
         static let instance : UnittestImportPublicLiteRoot = UnittestImportPublicLiteRoot()
     }
     return Static.instance
    }
    public var extensionRegistry:ExtensionRegistry

    init() {
      extensionRegistry = ExtensionRegistry()
      registerAllExtensions(extensionRegistry)
    }
    public func registerAllExtensions(registry:ExtensionRegistry) {
    }
  }

  final public class PublicImportMessageLite : GeneratedMessage, GeneratedMessageProtocol {
    public private(set) var hasE:Bool = false
    public private(set) var e:Int32 = Int32(0)

    required public init() {
         super.init()
    }
    override public func isInitialized() -> Bool {
     return true
    }
    override public func writeToCodedOutputStream(output:CodedOutputStream) throws {
      if hasE {
        try output.writeInt32(1, value:e)
      }
      try unknownFields.writeToCodedOutputStream(output)
    }
    override public func serializedSize() -> Int32 {
      var serialize_size:Int32 = memoizedSerializedSize
      if serialize_size != -1 {
       return serialize_size
      }

      serialize_size = 0
      if hasE {
        serialize_size += e.computeInt32Size(1)
      }
      serialize_size += unknownFields.serializedSize()
      memoizedSerializedSize = serialize_size
      return serialize_size
    }
    public class func parseArrayDelimitedFromInputStream(input:NSInputStream) throws -> Array<ProtobufUnittestImport.PublicImportMessageLite> {
      var mergedArray = Array<ProtobufUnittestImport.PublicImportMessageLite>()
      while let value = try parseFromDelimitedFromInputStream(input) {
        mergedArray += [value]
      }
      return mergedArray
    }
    public class func parseFromDelimitedFromInputStream(input:NSInputStream) throws -> ProtobufUnittestImport.PublicImportMessageLite? {
      return try ProtobufUnittestImport.PublicImportMessageLite.Builder().mergeDelimitedFromInputStream(input)?.build()
    }
    public class func parseFromData(data:NSData) throws -> ProtobufUnittestImport.PublicImportMessageLite {
      return try ProtobufUnittestImport.PublicImportMessageLite.Builder().mergeFromData(data, extensionRegistry:ProtobufUnittestImport.UnittestImportPublicLiteRoot.sharedInstance.extensionRegistry).build()
    }
    public class func parseFromData(data:NSData, extensionRegistry:ExtensionRegistry) throws -> ProtobufUnittestImport.PublicImportMessageLite {
      return try ProtobufUnittestImport.PublicImportMessageLite.Builder().mergeFromData(data, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFromInputStream(input:NSInputStream) throws -> ProtobufUnittestImport.PublicImportMessageLite {
      return try ProtobufUnittestImport.PublicImportMessageLite.Builder().mergeFromInputStream(input).build()
    }
    public class func parseFromInputStream(input:NSInputStream, extensionRegistry:ExtensionRegistry) throws -> ProtobufUnittestImport.PublicImportMessageLite {
      return try ProtobufUnittestImport.PublicImportMessageLite.Builder().mergeFromInputStream(input, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFromCodedInputStream(input:CodedInputStream) throws -> ProtobufUnittestImport.PublicImportMessageLite {
      return try ProtobufUnittestImport.PublicImportMessageLite.Builder().mergeFromCodedInputStream(input).build()
    }
    public class func parseFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> ProtobufUnittestImport.PublicImportMessageLite {
      return try ProtobufUnittestImport.PublicImportMessageLite.Builder().mergeFromCodedInputStream(input, extensionRegistry:extensionRegistry).build()
    }
    public class func getBuilder() -> ProtobufUnittestImport.PublicImportMessageLite.Builder {
      return ProtobufUnittestImport.PublicImportMessageLite.classBuilder() as! ProtobufUnittestImport.PublicImportMessageLite.Builder
    }
    public func getBuilder() -> ProtobufUnittestImport.PublicImportMessageLite.Builder {
      return classBuilder() as! ProtobufUnittestImport.PublicImportMessageLite.Builder
    }
    public override class func classBuilder() -> MessageBuilder {
      return ProtobufUnittestImport.PublicImportMessageLite.Builder()
    }
    public override func classBuilder() -> MessageBuilder {
      return ProtobufUnittestImport.PublicImportMessageLite.Builder()
    }
    public func toBuilder() throws -> ProtobufUnittestImport.PublicImportMessageLite.Builder {
      return try ProtobufUnittestImport.PublicImportMessageLite.builderWithPrototype(self)
    }
    public class func builderWithPrototype(prototype:ProtobufUnittestImport.PublicImportMessageLite) throws -> ProtobufUnittestImport.PublicImportMessageLite.Builder {
      return try ProtobufUnittestImport.PublicImportMessageLite.Builder().mergeFrom(prototype)
    }
    override public func getDescription(indent:String) throws -> String {
      var output:String = ""
      if hasE {
        output += "\(indent) e: \(e) \n"
      }
      output += unknownFields.getDescription(indent)
      return output
    }
    override public var hashValue:Int {
        get {
            var hashCode:Int = 7
            if hasE {
               hashCode = (hashCode &* 31) &+ e.hashValue
            }
            hashCode = (hashCode &* 31) &+  unknownFields.hashValue
            return hashCode
        }
    }


    //Meta information declaration start

    override public class func className() -> String {
        return "ProtobufUnittestImport.PublicImportMessageLite"
    }
    override public func className() -> String {
        return "ProtobufUnittestImport.PublicImportMessageLite"
    }
    override public func classMetaType() -> GeneratedMessage.Type {
        return ProtobufUnittestImport.PublicImportMessageLite.self
    }
    //Meta information declaration end

    final public class Builder : GeneratedMessageBuilder {
      private var builderResult:ProtobufUnittestImport.PublicImportMessageLite = ProtobufUnittestImport.PublicImportMessageLite()
      public func getMessage() -> ProtobufUnittestImport.PublicImportMessageLite {
          return builderResult
      }

      required override public init () {
         super.init()
      }
      public var hasE:Bool {
           get {
                return builderResult.hasE
           }
      }
      public var e:Int32 {
           get {
                return builderResult.e
           }
           set (value) {
               builderResult.hasE = true
               builderResult.e = value
           }
      }
      public func setE(value:Int32) -> ProtobufUnittestImport.PublicImportMessageLite.Builder {
        self.e = value
        return self
      }
      public func clearE() -> ProtobufUnittestImport.PublicImportMessageLite.Builder{
           builderResult.hasE = false
           builderResult.e = Int32(0)
           return self
      }
      override public var internalGetResult:GeneratedMessage {
           get {
              return builderResult
           }
      }
      public override func clear() -> ProtobufUnittestImport.PublicImportMessageLite.Builder {
        builderResult = ProtobufUnittestImport.PublicImportMessageLite()
        return self
      }
      public override func clone() throws -> ProtobufUnittestImport.PublicImportMessageLite.Builder {
        return try ProtobufUnittestImport.PublicImportMessageLite.builderWithPrototype(builderResult)
      }
      public override func build() throws -> ProtobufUnittestImport.PublicImportMessageLite {
           try checkInitialized()
           return buildPartial()
      }
      public func buildPartial() -> ProtobufUnittestImport.PublicImportMessageLite {
        let returnMe:ProtobufUnittestImport.PublicImportMessageLite = builderResult
        return returnMe
      }
      public func mergeFrom(other:ProtobufUnittestImport.PublicImportMessageLite) throws -> ProtobufUnittestImport.PublicImportMessageLite.Builder {
        if other == ProtobufUnittestImport.PublicImportMessageLite() {
         return self
        }
        if other.hasE {
             e = other.e
        }
        try mergeUnknownFields(other.unknownFields)
        return self
      }
      public override func mergeFromCodedInputStream(input:CodedInputStream) throws -> ProtobufUnittestImport.PublicImportMessageLite.Builder {
           return try mergeFromCodedInputStream(input, extensionRegistry:ExtensionRegistry())
      }
      public override func mergeFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> ProtobufUnittestImport.PublicImportMessageLite.Builder {
        let unknownFieldsBuilder:UnknownFieldSet.Builder = try UnknownFieldSet.builderWithUnknownFields(self.unknownFields)
        while (true) {
          let protobufTag = try input.readTag()
          switch protobufTag {
          case 0: 
            self.unknownFields = try unknownFieldsBuilder.build()
            return self

          case 8 :
            e = try input.readInt32()

          default:
            if (!(try parseUnknownField(input,unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:protobufTag))) {
               unknownFields = try unknownFieldsBuilder.build()
               return self
            }
          }
        }
      }
    }

  }

}

// @@protoc_insertion_point(global_scope)
