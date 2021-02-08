// Auto-generated. Do not edit!

// (in-package msgs_demo.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Quaternion = require('./Quaternion.js');
let Vector3 = require('./Vector3.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Imu {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.orientation = null;
      this.orientation_covariance = null;
      this.angular_velocity = null;
      this.angular_velocity_covariance = null;
      this.linear_acceleration = null;
      this.linear_acceleration_covariance = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('orientation')) {
        this.orientation = initObj.orientation
      }
      else {
        this.orientation = new Quaternion();
      }
      if (initObj.hasOwnProperty('orientation_covariance')) {
        this.orientation_covariance = initObj.orientation_covariance
      }
      else {
        this.orientation_covariance = new Array(9).fill(0);
      }
      if (initObj.hasOwnProperty('angular_velocity')) {
        this.angular_velocity = initObj.angular_velocity
      }
      else {
        this.angular_velocity = new Vector3();
      }
      if (initObj.hasOwnProperty('angular_velocity_covariance')) {
        this.angular_velocity_covariance = initObj.angular_velocity_covariance
      }
      else {
        this.angular_velocity_covariance = new Array(9).fill(0);
      }
      if (initObj.hasOwnProperty('linear_acceleration')) {
        this.linear_acceleration = initObj.linear_acceleration
      }
      else {
        this.linear_acceleration = new Vector3();
      }
      if (initObj.hasOwnProperty('linear_acceleration_covariance')) {
        this.linear_acceleration_covariance = initObj.linear_acceleration_covariance
      }
      else {
        this.linear_acceleration_covariance = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Imu
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [orientation]
    bufferOffset = Quaternion.serialize(obj.orientation, buffer, bufferOffset);
    // Check that the constant length array field [orientation_covariance] has the right length
    if (obj.orientation_covariance.length !== 9) {
      throw new Error('Unable to serialize array field orientation_covariance - length must be 9')
    }
    // Serialize message field [orientation_covariance]
    bufferOffset = _arraySerializer.float64(obj.orientation_covariance, buffer, bufferOffset, 9);
    // Serialize message field [angular_velocity]
    bufferOffset = Vector3.serialize(obj.angular_velocity, buffer, bufferOffset);
    // Check that the constant length array field [angular_velocity_covariance] has the right length
    if (obj.angular_velocity_covariance.length !== 9) {
      throw new Error('Unable to serialize array field angular_velocity_covariance - length must be 9')
    }
    // Serialize message field [angular_velocity_covariance]
    bufferOffset = _arraySerializer.float64(obj.angular_velocity_covariance, buffer, bufferOffset, 9);
    // Serialize message field [linear_acceleration]
    bufferOffset = Vector3.serialize(obj.linear_acceleration, buffer, bufferOffset);
    // Serialize message field [linear_acceleration_covariance]
    bufferOffset = _arraySerializer.float64(obj.linear_acceleration_covariance, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Imu
    let len;
    let data = new Imu(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [orientation]
    data.orientation = Quaternion.deserialize(buffer, bufferOffset);
    // Deserialize message field [orientation_covariance]
    data.orientation_covariance = _arrayDeserializer.float64(buffer, bufferOffset, 9)
    // Deserialize message field [angular_velocity]
    data.angular_velocity = Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [angular_velocity_covariance]
    data.angular_velocity_covariance = _arrayDeserializer.float64(buffer, bufferOffset, 9)
    // Deserialize message field [linear_acceleration]
    data.linear_acceleration = Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [linear_acceleration_covariance]
    data.linear_acceleration_covariance = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 8 * object.linear_acceleration_covariance.length;
    return length + 228;
  }

  static datatype() {
    // Returns string type for a message object
    return 'msgs_demo/Imu';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '510e342720397eb6732ae15c52e1758a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #消息包含了从惯性原件中得到的数据，加速度为m/^2，角速度为rad/s
    #如果所有的测量协方差已知，则需要全部填充进来
    #如果只知道方差，则只填充协方差矩阵的对角数据即可
    
    #位置：sensor_msgs/Imu.msg
    
    Header header
    Quaternion orientation
    float64[9] orientation_covariance
    
    Vector3 angular_velocity
    float64[9] angular_velocity_covariance
    
    Vector3 linear_acceleration
    float64[] linear_acceleration_covariance
    
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
    
    ================================================================================
    MSG: msgs_demo/Quaternion
    #消息代表空间中旋转的四元数
    #位置:geometry_msgs/Quaternion.msg
    
    float64 x
    float64 y
    float64 z
    float64 w
    
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
    const resolved = new Imu(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.orientation !== undefined) {
      resolved.orientation = Quaternion.Resolve(msg.orientation)
    }
    else {
      resolved.orientation = new Quaternion()
    }

    if (msg.orientation_covariance !== undefined) {
      resolved.orientation_covariance = msg.orientation_covariance;
    }
    else {
      resolved.orientation_covariance = new Array(9).fill(0)
    }

    if (msg.angular_velocity !== undefined) {
      resolved.angular_velocity = Vector3.Resolve(msg.angular_velocity)
    }
    else {
      resolved.angular_velocity = new Vector3()
    }

    if (msg.angular_velocity_covariance !== undefined) {
      resolved.angular_velocity_covariance = msg.angular_velocity_covariance;
    }
    else {
      resolved.angular_velocity_covariance = new Array(9).fill(0)
    }

    if (msg.linear_acceleration !== undefined) {
      resolved.linear_acceleration = Vector3.Resolve(msg.linear_acceleration)
    }
    else {
      resolved.linear_acceleration = new Vector3()
    }

    if (msg.linear_acceleration_covariance !== undefined) {
      resolved.linear_acceleration_covariance = msg.linear_acceleration_covariance;
    }
    else {
      resolved.linear_acceleration_covariance = []
    }

    return resolved;
    }
};

module.exports = Imu;
