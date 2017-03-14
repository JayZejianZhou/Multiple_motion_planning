; Auto-generated. Do not edit!


(cl:in-package spencer_control_msgs-msg)


;//! \htmlinclude SetHeadJointPosition.msg.html

(cl:defclass <SetHeadJointPosition> (roslisp-msg-protocol:ros-message)
  ((joint
    :reader joint
    :initarg :joint
    :type cl:integer
    :initform 0)
   (angle
    :reader angle
    :initarg :angle
    :type cl:float
    :initform 0.0)
   (velocity
    :reader velocity
    :initarg :velocity
    :type cl:float
    :initform 0.0))
)

(cl:defclass SetHeadJointPosition (<SetHeadJointPosition>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetHeadJointPosition>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetHeadJointPosition)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name spencer_control_msgs-msg:<SetHeadJointPosition> is deprecated: use spencer_control_msgs-msg:SetHeadJointPosition instead.")))

(cl:ensure-generic-function 'joint-val :lambda-list '(m))
(cl:defmethod joint-val ((m <SetHeadJointPosition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spencer_control_msgs-msg:joint-val is deprecated.  Use spencer_control_msgs-msg:joint instead.")
  (joint m))

(cl:ensure-generic-function 'angle-val :lambda-list '(m))
(cl:defmethod angle-val ((m <SetHeadJointPosition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spencer_control_msgs-msg:angle-val is deprecated.  Use spencer_control_msgs-msg:angle instead.")
  (angle m))

(cl:ensure-generic-function 'velocity-val :lambda-list '(m))
(cl:defmethod velocity-val ((m <SetHeadJointPosition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spencer_control_msgs-msg:velocity-val is deprecated.  Use spencer_control_msgs-msg:velocity instead.")
  (velocity m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<SetHeadJointPosition>)))
    "Constants for message type '<SetHeadJointPosition>"
  '((:JOINT_PAN . 0)
    (:JOINT_TILT . 1)
    (:JOINT_EYES . 2)
    (:PAN_MIN_ANGLE . -0.5235)
    (:PAN_MAX_ANGLE . 4.7123)
    (:PAN_HOME . 3.1416)
    (:TILT_MIN_ANGLE . -0.4363)
    (:TILT_MAX_ANGLE . 0.4363)
    (:TILT_HOME . 0.0)
    (:EYES_MIN_ANGLE . -0.4)
    (:EYES_MAX_ANGLE . 0.4)
    (:EYES_HOME . 0.0)
    (:MIN_VEL . 0.05)
    (:MAX_VEL . 2.6))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'SetHeadJointPosition)))
    "Constants for message type 'SetHeadJointPosition"
  '((:JOINT_PAN . 0)
    (:JOINT_TILT . 1)
    (:JOINT_EYES . 2)
    (:PAN_MIN_ANGLE . -0.5235)
    (:PAN_MAX_ANGLE . 4.7123)
    (:PAN_HOME . 3.1416)
    (:TILT_MIN_ANGLE . -0.4363)
    (:TILT_MAX_ANGLE . 0.4363)
    (:TILT_HOME . 0.0)
    (:EYES_MIN_ANGLE . -0.4)
    (:EYES_MAX_ANGLE . 0.4)
    (:EYES_HOME . 0.0)
    (:MIN_VEL . 0.05)
    (:MAX_VEL . 2.6))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetHeadJointPosition>) ostream)
  "Serializes a message object of type '<SetHeadJointPosition>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'joint)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'velocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetHeadJointPosition>) istream)
  "Deserializes a message object of type '<SetHeadJointPosition>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'joint)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angle) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'velocity) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetHeadJointPosition>)))
  "Returns string type for a message object of type '<SetHeadJointPosition>"
  "spencer_control_msgs/SetHeadJointPosition")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetHeadJointPosition)))
  "Returns string type for a message object of type 'SetHeadJointPosition"
  "spencer_control_msgs/SetHeadJointPosition")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetHeadJointPosition>)))
  "Returns md5sum for a message object of type '<SetHeadJointPosition>"
  "cd1f3003aa58891e47e7fafb9472c782")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetHeadJointPosition)))
  "Returns md5sum for a message object of type 'SetHeadJointPosition"
  "cd1f3003aa58891e47e7fafb9472c782")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetHeadJointPosition>)))
  "Returns full string definition for message of type '<SetHeadJointPosition>"
  (cl:format cl:nil "byte    joint  # see list below~%float32 angle  # in radians~%float32 velocity # in radians/second~%~%~%~%### Constants ###~%~%byte    JOINT_PAN = 0~%byte    JOINT_TILT = 1~%byte    JOINT_EYES = 2~%~%float32 PAN_MIN_ANGLE = -0.5235~%float32 PAN_MAX_ANGLE = +4.7123~%float32 PAN_HOME = 3.1416~%~%float32 TILT_MIN_ANGLE = -0.4363~%float32 TILT_MAX_ANGLE = +0.4363~%float32 TILT_HOME = 0~%~%float32 EYES_MIN_ANGLE = -0.4~%float32 EYES_MAX_ANGLE = +0.4~%float32 EYES_HOME = 0~%~%float32 MIN_VEL = 0.05~%float32 MAX_VEL = 2.6~%~%### reference ###~%# -3.6651 = -7pi/6 = -210 degrees right~%# 1.5708 = pi/2 = 90 degrees left~%# -0.4363 = -5pi/36 = 25 degrees up~%# 0.4363 = 5pi/36 = 25 degrees down~%# -1.0471 = -pi/3 = -60 degrees right~%# 1.0471 = pi/3 = 60 degrees left~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetHeadJointPosition)))
  "Returns full string definition for message of type 'SetHeadJointPosition"
  (cl:format cl:nil "byte    joint  # see list below~%float32 angle  # in radians~%float32 velocity # in radians/second~%~%~%~%### Constants ###~%~%byte    JOINT_PAN = 0~%byte    JOINT_TILT = 1~%byte    JOINT_EYES = 2~%~%float32 PAN_MIN_ANGLE = -0.5235~%float32 PAN_MAX_ANGLE = +4.7123~%float32 PAN_HOME = 3.1416~%~%float32 TILT_MIN_ANGLE = -0.4363~%float32 TILT_MAX_ANGLE = +0.4363~%float32 TILT_HOME = 0~%~%float32 EYES_MIN_ANGLE = -0.4~%float32 EYES_MAX_ANGLE = +0.4~%float32 EYES_HOME = 0~%~%float32 MIN_VEL = 0.05~%float32 MAX_VEL = 2.6~%~%### reference ###~%# -3.6651 = -7pi/6 = -210 degrees right~%# 1.5708 = pi/2 = 90 degrees left~%# -0.4363 = -5pi/36 = 25 degrees up~%# 0.4363 = 5pi/36 = 25 degrees down~%# -1.0471 = -pi/3 = -60 degrees right~%# 1.0471 = pi/3 = 60 degrees left~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetHeadJointPosition>))
  (cl:+ 0
     1
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetHeadJointPosition>))
  "Converts a ROS message object to a list"
  (cl:list 'SetHeadJointPosition
    (cl:cons ':joint (joint msg))
    (cl:cons ':angle (angle msg))
    (cl:cons ':velocity (velocity msg))
))
