// Auto-generated. Do not edit!

// (in-package msgs_demo.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Pose = require('./Pose.js');

//-----------------------------------------------------------

class PoseWithCovariance {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pose = null;
      this.covariance = null;
    }
    else {
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = new Pose();
      }
      if (initObj.hasOwnProperty('covariance')) {
        this.covariance = initObj.covariance
      }
      else {
        this.covariance = new Array(36).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PoseWithCovariance
    // Serialize message field [pose]
    bufferOffset = Pose.serialize(obj.pose, buffer, bufferOffset);
    // Check that the constant length array field [covariance] has the right length
    if (obj.covariance.length !== 36) {
      throw new Error('Unable to serialize array field covariance - length must be 36')
    }
    // Serialize message field [covariance]
    bufferOffset = _arraySerializer.float64(obj.covariance, buffer, bufferOffset, 36);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PoseWithCovariance
    let len;
    let data = new PoseWithCovariance(null);
    // Deserialize message field [pose]
    data.pose = Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [covariance]
    data.covariance = _arrayDeserializer.float64(buffer, bufferOffset, 36)
    return data;
  }

  static getMessageSize(object) {
    return 344;
  }

  static datatype() {
    // Returns string type for a message object
    return 'msgs_demo/PoseWithCovariance';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c23e848cf1b7533a8d7c259073a97e6f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #表示空间中含有不确定性的位姿信息
    #位置：geometry_msgs/PoseWithCovariance.msg
    
    Pose pose
    float64[36] covariance
    
    ================================================================================
    MSG: msgs_demo/Pose
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
    const resolved = new PoseWithCovariance(null);
    if (msg.pose !== undefined) {
      resolved.pose = Pose.Resolve(msg.pose)
    }
    else {
      resolved.pose = new Pose()
    }

    if (msg.covariance !== undefined) {
      resolved.covariance = msg.covariance;
    }
    else {
      resolved.covariance = new Array(36).fill(0)
    }

    return resolved;
    }
};

module.exports = PoseWithCovariance;
