// Auto-generated. Do not edit!

// (in-package msgs_demo.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let PoseWithCovariance = require('./PoseWithCovariance.js');
let TwistWithCovariance = require('./TwistWithCovariance.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Odometry {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.child_frame_id = null;
      this.pose = null;
      this.twist = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('child_frame_id')) {
        this.child_frame_id = initObj.child_frame_id
      }
      else {
        this.child_frame_id = '';
      }
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = new PoseWithCovariance();
      }
      if (initObj.hasOwnProperty('twist')) {
        this.twist = initObj.twist
      }
      else {
        this.twist = new TwistWithCovariance();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Odometry
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [child_frame_id]
    bufferOffset = _serializer.string(obj.child_frame_id, buffer, bufferOffset);
    // Serialize message field [pose]
    bufferOffset = PoseWithCovariance.serialize(obj.pose, buffer, bufferOffset);
    // Serialize message field [twist]
    bufferOffset = TwistWithCovariance.serialize(obj.twist, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Odometry
    let len;
    let data = new Odometry(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [child_frame_id]
    data.child_frame_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [pose]
    data.pose = PoseWithCovariance.deserialize(buffer, bufferOffset);
    // Deserialize message field [twist]
    data.twist = TwistWithCovariance.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.child_frame_id.length;
    return length + 684;
  }

  static datatype() {
    // Returns string type for a message object
    return 'msgs_demo/Odometry';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cd5e73d190d741a2f92e81eda573aca7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #消息描述了自由空间中位置和速度的估计值
    #位置：nav_msgs/Odometry.msg
    
    Header header
    string child_frame_id
    PoseWithCovariance pose
    TwistWithCovariance twist
    
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
    MSG: msgs_demo/PoseWithCovariance
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
    
    ================================================================================
    MSG: msgs_demo/TwistWithCovariance
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
    const resolved = new Odometry(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.child_frame_id !== undefined) {
      resolved.child_frame_id = msg.child_frame_id;
    }
    else {
      resolved.child_frame_id = ''
    }

    if (msg.pose !== undefined) {
      resolved.pose = PoseWithCovariance.Resolve(msg.pose)
    }
    else {
      resolved.pose = new PoseWithCovariance()
    }

    if (msg.twist !== undefined) {
      resolved.twist = TwistWithCovariance.Resolve(msg.twist)
    }
    else {
      resolved.twist = new TwistWithCovariance()
    }

    return resolved;
    }
};

module.exports = Odometry;
