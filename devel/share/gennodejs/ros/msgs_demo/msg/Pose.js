// Auto-generated. Do not edit!

// (in-package msgs_demo.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Point = require('./Point.js');
let Quaternion = require('./Quaternion.js');

//-----------------------------------------------------------

class Pose {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.position = null;
      this.orientation = null;
    }
    else {
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = new Point();
      }
      if (initObj.hasOwnProperty('orientation')) {
        this.orientation = initObj.orientation
      }
      else {
        this.orientation = new Quaternion();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Pose
    // Serialize message field [position]
    bufferOffset = Point.serialize(obj.position, buffer, bufferOffset);
    // Serialize message field [orientation]
    bufferOffset = Quaternion.serialize(obj.orientation, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Pose
    let len;
    let data = new Pose(null);
    // Deserialize message field [position]
    data.position = Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [orientation]
    data.orientation = Quaternion.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 56;
  }

  static datatype() {
    // Returns string type for a message object
    return 'msgs_demo/Pose';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e45d45a5a1ce597b249e23fb30fc871f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #消息定义自由空间中的位姿信息，包括位置和指向信息
    #位置:geometry_msgs/Pose.msg
    
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: msgs_demo/Point
    #空间中的点的位置
    #位置:geometry_msgs/Point.msg
    
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: msgs_demo/Quaternion
    #消息代表空间中旋转的四元数
    #位置:geometry_msgs/Quaternion.msg
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Pose(null);
    if (msg.position !== undefined) {
      resolved.position = Point.Resolve(msg.position)
    }
    else {
      resolved.position = new Point()
    }

    if (msg.orientation !== undefined) {
      resolved.orientation = Quaternion.Resolve(msg.orientation)
    }
    else {
      resolved.orientation = new Quaternion()
    }

    return resolved;
    }
};

module.exports = Pose;
