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

class LaserScan {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.angle_min = null;
      this.angle_max = null;
      this.angle_increment = null;
      this.time_increment = null;
      this.scan_time = null;
      this.range_min = null;
      this.range_max = null;
      this.ranges = null;
      this.intensities = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('angle_min')) {
        this.angle_min = initObj.angle_min
      }
      else {
        this.angle_min = 0.0;
      }
      if (initObj.hasOwnProperty('angle_max')) {
        this.angle_max = initObj.angle_max
      }
      else {
        this.angle_max = 0.0;
      }
      if (initObj.hasOwnProperty('angle_increment')) {
        this.angle_increment = initObj.angle_increment
      }
      else {
        this.angle_increment = 0.0;
      }
      if (initObj.hasOwnProperty('time_increment')) {
        this.time_increment = initObj.time_increment
      }
      else {
        this.time_increment = 0.0;
      }
      if (initObj.hasOwnProperty('scan_time')) {
        this.scan_time = initObj.scan_time
      }
      else {
        this.scan_time = 0.0;
      }
      if (initObj.hasOwnProperty('range_min')) {
        this.range_min = initObj.range_min
      }
      else {
        this.range_min = 0.0;
      }
      if (initObj.hasOwnProperty('range_max')) {
        this.range_max = initObj.range_max
      }
      else {
        this.range_max = 0.0;
      }
      if (initObj.hasOwnProperty('ranges')) {
        this.ranges = initObj.ranges
      }
      else {
        this.ranges = [];
      }
      if (initObj.hasOwnProperty('intensities')) {
        this.intensities = initObj.intensities
      }
      else {
        this.intensities = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LaserScan
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [angle_min]
    bufferOffset = _serializer.float32(obj.angle_min, buffer, bufferOffset);
    // Serialize message field [angle_max]
    bufferOffset = _serializer.float32(obj.angle_max, buffer, bufferOffset);
    // Serialize message field [angle_increment]
    bufferOffset = _serializer.float32(obj.angle_increment, buffer, bufferOffset);
    // Serialize message field [time_increment]
    bufferOffset = _serializer.float32(obj.time_increment, buffer, bufferOffset);
    // Serialize message field [scan_time]
    bufferOffset = _serializer.float32(obj.scan_time, buffer, bufferOffset);
    // Serialize message field [range_min]
    bufferOffset = _serializer.float32(obj.range_min, buffer, bufferOffset);
    // Serialize message field [range_max]
    bufferOffset = _serializer.float32(obj.range_max, buffer, bufferOffset);
    // Serialize message field [ranges]
    bufferOffset = _arraySerializer.float32(obj.ranges, buffer, bufferOffset, null);
    // Serialize message field [intensities]
    bufferOffset = _arraySerializer.float32(obj.intensities, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LaserScan
    let len;
    let data = new LaserScan(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [angle_min]
    data.angle_min = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [angle_max]
    data.angle_max = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [angle_increment]
    data.angle_increment = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [time_increment]
    data.time_increment = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [scan_time]
    data.scan_time = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [range_min]
    data.range_min = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [range_max]
    data.range_max = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [ranges]
    data.ranges = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [intensities]
    data.intensities = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 4 * object.ranges.length;
    length += 4 * object.intensities.length;
    return length + 36;
  }

  static datatype() {
    // Returns string type for a message object
    return 'msgs_demo/LaserScan';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '90c7ef2dc6895d81024acba2ac42f369';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #平面内的激光测距扫描数据，注意此消息类型仅仅适配激光测距设备
    #如果有其他类型的测距设备(如声呐)，需要另外创建不同类型的消息
    
    #位置：sensor_msgs/LaserScan.msg
    
    Header header			#时间戳为接收到第一束激光的时间
    float32 angle_min		#扫描开始时的角度(单位为rad)
    float32 angle_max		#扫描结束时的角度(单位为rad)
    float32 angle_increment	#两次测量之间的角度增量(单位为rad)
    
    float32 time_increment	#两次测量之间的时间增量(单位为s)
    
    float32 scan_time		#两次扫描之间的时间间隔(单位为s)
    
    float32 range_min		#距离最小值(m)
    float32 range_max		#距离最大值(m)
    
    float32[] ranges		#测距数据(m,如果数据不在最小数据和最大数据之间，则抛弃)
    
    float32[] intensities	#强度，具体单位由测量设备确定，如果仪器没有强度测量，则数组为空即可
    
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
    const resolved = new LaserScan(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.angle_min !== undefined) {
      resolved.angle_min = msg.angle_min;
    }
    else {
      resolved.angle_min = 0.0
    }

    if (msg.angle_max !== undefined) {
      resolved.angle_max = msg.angle_max;
    }
    else {
      resolved.angle_max = 0.0
    }

    if (msg.angle_increment !== undefined) {
      resolved.angle_increment = msg.angle_increment;
    }
    else {
      resolved.angle_increment = 0.0
    }

    if (msg.time_increment !== undefined) {
      resolved.time_increment = msg.time_increment;
    }
    else {
      resolved.time_increment = 0.0
    }

    if (msg.scan_time !== undefined) {
      resolved.scan_time = msg.scan_time;
    }
    else {
      resolved.scan_time = 0.0
    }

    if (msg.range_min !== undefined) {
      resolved.range_min = msg.range_min;
    }
    else {
      resolved.range_min = 0.0
    }

    if (msg.range_max !== undefined) {
      resolved.range_max = msg.range_max;
    }
    else {
      resolved.range_max = 0.0
    }

    if (msg.ranges !== undefined) {
      resolved.ranges = msg.ranges;
    }
    else {
      resolved.ranges = []
    }

    if (msg.intensities !== undefined) {
      resolved.intensities = msg.intensities;
    }
    else {
      resolved.intensities = []
    }

    return resolved;
    }
};

module.exports = LaserScan;
