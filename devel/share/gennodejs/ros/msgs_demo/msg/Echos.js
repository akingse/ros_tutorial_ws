// Auto-generated. Do not edit!

// (in-package msgs_demo.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Echos {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.front_left = null;
      this.front_center = null;
      this.front_right = null;
      this.rear_left = null;
      this.rear_center = null;
      this.rear_right = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('front_left')) {
        this.front_left = initObj.front_left
      }
      else {
        this.front_left = 0;
      }
      if (initObj.hasOwnProperty('front_center')) {
        this.front_center = initObj.front_center
      }
      else {
        this.front_center = 0;
      }
      if (initObj.hasOwnProperty('front_right')) {
        this.front_right = initObj.front_right
      }
      else {
        this.front_right = 0;
      }
      if (initObj.hasOwnProperty('rear_left')) {
        this.rear_left = initObj.rear_left
      }
      else {
        this.rear_left = 0;
      }
      if (initObj.hasOwnProperty('rear_center')) {
        this.rear_center = initObj.rear_center
      }
      else {
        this.rear_center = 0;
      }
      if (initObj.hasOwnProperty('rear_right')) {
        this.rear_right = initObj.rear_right
      }
      else {
        this.rear_right = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Echos
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [front_left]
    bufferOffset = _serializer.uint16(obj.front_left, buffer, bufferOffset);
    // Serialize message field [front_center]
    bufferOffset = _serializer.uint16(obj.front_center, buffer, bufferOffset);
    // Serialize message field [front_right]
    bufferOffset = _serializer.uint16(obj.front_right, buffer, bufferOffset);
    // Serialize message field [rear_left]
    bufferOffset = _serializer.uint16(obj.rear_left, buffer, bufferOffset);
    // Serialize message field [rear_center]
    bufferOffset = _serializer.uint16(obj.rear_center, buffer, bufferOffset);
    // Serialize message field [rear_right]
    bufferOffset = _serializer.uint16(obj.rear_right, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Echos
    let len;
    let data = new Echos(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [front_left]
    data.front_left = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [front_center]
    data.front_center = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [front_right]
    data.front_right = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [rear_left]
    data.rear_left = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [rear_center]
    data.rear_center = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [rear_right]
    data.rear_right = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'msgs_demo/Echos';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '41b4a21d92f5fd9f5c8f7dc9c07e154a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    uint16 front_left
    uint16 front_center
    uint16 front_right
    uint16 rear_left
    uint16 rear_center
    uint16 rear_right
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    # 0: no frame
    # 1: global frame
    string frame_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Echos(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.front_left !== undefined) {
      resolved.front_left = msg.front_left;
    }
    else {
      resolved.front_left = 0
    }

    if (msg.front_center !== undefined) {
      resolved.front_center = msg.front_center;
    }
    else {
      resolved.front_center = 0
    }

    if (msg.front_right !== undefined) {
      resolved.front_right = msg.front_right;
    }
    else {
      resolved.front_right = 0
    }

    if (msg.rear_left !== undefined) {
      resolved.rear_left = msg.rear_left;
    }
    else {
      resolved.rear_left = 0
    }

    if (msg.rear_center !== undefined) {
      resolved.rear_center = msg.rear_center;
    }
    else {
      resolved.rear_center = 0
    }

    if (msg.rear_right !== undefined) {
      resolved.rear_right = msg.rear_right;
    }
    else {
      resolved.rear_right = 0
    }

    return resolved;
    }
};

module.exports = Echos;
