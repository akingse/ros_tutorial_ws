// Auto-generated. Do not edit!

// (in-package msgs_demo.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Twist = require('./Twist.js');

//-----------------------------------------------------------

class TwistWithCovariance {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.twist = null;
      this.covariance = null;
    }
    else {
      if (initObj.hasOwnProperty('twist')) {
        this.twist = initObj.twist
      }
      else {
        this.twist = new Twist();
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
    // Serializes a message object of type TwistWithCovariance
    // Serialize message field [twist]
    bufferOffset = Twist.serialize(obj.twist, buffer, bufferOffset);
    // Check that the constant length array field [covariance] has the right length
    if (obj.covariance.length !== 36) {
      throw new Error('Unable to serialize array field covariance - length must be 36')
    }
    // Serialize message field [covariance]
    bufferOffset = _arraySerializer.float64(obj.covariance, buffer, bufferOffset, 36);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TwistWithCovariance
    let len;
    let data = new TwistWithCovariance(null);
    // Deserialize message field [twist]
    data.twist = Twist.deserialize(buffer, bufferOffset);
    // Deserialize message field [covariance]
    data.covariance = _arrayDeserializer.float64(buffer, bufferOffset, 36)
    return data;
  }

  static getMessageSize(object) {
    return 336;
  }

  static datatype() {
    // Returns string type for a message object
    return 'msgs_demo/TwistWithCovariance';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1fe8a28e6890a4cc3ae4c3ca5c7d82e6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #消息定义了包含不确定性的速度量，协方差矩阵按行分别表示：
    #沿x方向速度的不确定性，沿y方向速度的不确定性，沿z方向速度的不确定性
    #绕x转动角速度的不确定性，绕y轴转动的角速度的不确定性，绕z轴转动的角速度的不确定性
    
    #位置：geometry_msgs/TwistWithCovariance.msg
    
    Twist twist
    float64[36] covariance  #分别表示[x; y; z; Rx; Ry; Rz]
    
    ================================================================================
    MSG: msgs_demo/Twist
    #定义空间中物体运动的线速度和角速度
    #位置：geometry_msgs/Twist.msg
    
    Vector3 linear
    Vector3 angular
    
    ================================================================================
    MSG: msgs_demo/Vector3
    #位置:geometry_msgs/Vector3.msg
    
    float64 x
    float64 y
    float64 z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TwistWithCovariance(null);
    if (msg.twist !== undefined) {
      resolved.twist = Twist.Resolve(msg.twist)
    }
    else {
      resolved.twist = new Twist()
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

module.exports = TwistWithCovariance;
