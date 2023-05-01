// Auto-generated. Do not edit!

// (in-package my_package.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class SetRotationMatrixRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.r11 = null;
      this.r12 = null;
      this.r13 = null;
      this.r21 = null;
      this.r22 = null;
      this.r23 = null;
      this.r31 = null;
      this.r32 = null;
      this.r33 = null;
    }
    else {
      if (initObj.hasOwnProperty('r11')) {
        this.r11 = initObj.r11
      }
      else {
        this.r11 = 0.0;
      }
      if (initObj.hasOwnProperty('r12')) {
        this.r12 = initObj.r12
      }
      else {
        this.r12 = 0.0;
      }
      if (initObj.hasOwnProperty('r13')) {
        this.r13 = initObj.r13
      }
      else {
        this.r13 = 0.0;
      }
      if (initObj.hasOwnProperty('r21')) {
        this.r21 = initObj.r21
      }
      else {
        this.r21 = 0.0;
      }
      if (initObj.hasOwnProperty('r22')) {
        this.r22 = initObj.r22
      }
      else {
        this.r22 = 0.0;
      }
      if (initObj.hasOwnProperty('r23')) {
        this.r23 = initObj.r23
      }
      else {
        this.r23 = 0.0;
      }
      if (initObj.hasOwnProperty('r31')) {
        this.r31 = initObj.r31
      }
      else {
        this.r31 = 0.0;
      }
      if (initObj.hasOwnProperty('r32')) {
        this.r32 = initObj.r32
      }
      else {
        this.r32 = 0.0;
      }
      if (initObj.hasOwnProperty('r33')) {
        this.r33 = initObj.r33
      }
      else {
        this.r33 = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetRotationMatrixRequest
    // Serialize message field [r11]
    bufferOffset = _serializer.float32(obj.r11, buffer, bufferOffset);
    // Serialize message field [r12]
    bufferOffset = _serializer.float32(obj.r12, buffer, bufferOffset);
    // Serialize message field [r13]
    bufferOffset = _serializer.float32(obj.r13, buffer, bufferOffset);
    // Serialize message field [r21]
    bufferOffset = _serializer.float32(obj.r21, buffer, bufferOffset);
    // Serialize message field [r22]
    bufferOffset = _serializer.float32(obj.r22, buffer, bufferOffset);
    // Serialize message field [r23]
    bufferOffset = _serializer.float32(obj.r23, buffer, bufferOffset);
    // Serialize message field [r31]
    bufferOffset = _serializer.float32(obj.r31, buffer, bufferOffset);
    // Serialize message field [r32]
    bufferOffset = _serializer.float32(obj.r32, buffer, bufferOffset);
    // Serialize message field [r33]
    bufferOffset = _serializer.float32(obj.r33, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetRotationMatrixRequest
    let len;
    let data = new SetRotationMatrixRequest(null);
    // Deserialize message field [r11]
    data.r11 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [r12]
    data.r12 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [r13]
    data.r13 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [r21]
    data.r21 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [r22]
    data.r22 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [r23]
    data.r23 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [r31]
    data.r31 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [r32]
    data.r32 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [r33]
    data.r33 = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 36;
  }

  static datatype() {
    // Returns string type for a service object
    return 'my_package/SetRotationMatrixRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c470553b4922c2811589e9927ace9b4e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 r11
    float32 r12
    float32 r13
    float32 r21
    float32 r22
    float32 r23
    float32 r31
    float32 r32
    float32 r33
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetRotationMatrixRequest(null);
    if (msg.r11 !== undefined) {
      resolved.r11 = msg.r11;
    }
    else {
      resolved.r11 = 0.0
    }

    if (msg.r12 !== undefined) {
      resolved.r12 = msg.r12;
    }
    else {
      resolved.r12 = 0.0
    }

    if (msg.r13 !== undefined) {
      resolved.r13 = msg.r13;
    }
    else {
      resolved.r13 = 0.0
    }

    if (msg.r21 !== undefined) {
      resolved.r21 = msg.r21;
    }
    else {
      resolved.r21 = 0.0
    }

    if (msg.r22 !== undefined) {
      resolved.r22 = msg.r22;
    }
    else {
      resolved.r22 = 0.0
    }

    if (msg.r23 !== undefined) {
      resolved.r23 = msg.r23;
    }
    else {
      resolved.r23 = 0.0
    }

    if (msg.r31 !== undefined) {
      resolved.r31 = msg.r31;
    }
    else {
      resolved.r31 = 0.0
    }

    if (msg.r32 !== undefined) {
      resolved.r32 = msg.r32;
    }
    else {
      resolved.r32 = 0.0
    }

    if (msg.r33 !== undefined) {
      resolved.r33 = msg.r33;
    }
    else {
      resolved.r33 = 0.0
    }

    return resolved;
    }
};

class SetRotationMatrixResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.angle = null;
    }
    else {
      if (initObj.hasOwnProperty('angle')) {
        this.angle = initObj.angle
      }
      else {
        this.angle = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetRotationMatrixResponse
    // Serialize message field [angle]
    bufferOffset = _serializer.float32(obj.angle, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetRotationMatrixResponse
    let len;
    let data = new SetRotationMatrixResponse(null);
    // Deserialize message field [angle]
    data.angle = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'my_package/SetRotationMatrixResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2d11dcdbe5a6f73dd324353dc52315ab';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 angle
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetRotationMatrixResponse(null);
    if (msg.angle !== undefined) {
      resolved.angle = msg.angle;
    }
    else {
      resolved.angle = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: SetRotationMatrixRequest,
  Response: SetRotationMatrixResponse,
  md5sum() { return 'e26b0831b5184f4a3c0b59f189c892e6'; },
  datatype() { return 'my_package/SetRotationMatrix'; }
};
