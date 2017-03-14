; Auto-generated. Do not edit!


(cl:in-package spencer_control_msgs-msg)


;//! \htmlinclude SetHeadJointVelocity.msg.html

(cl:defclass <SetHeadJointVelocity> (roslisp-msg-protocol:ros-message)
  ((joint
    :reader joint
    :initarg :joint
    :type cl:integer
    :initform 0)
   (velocity
    :reader velocity
    :initarg :velocity
    :type cl:float
    :initform 0.0))
)

(cl:defclass SetHeadJointVelocity (<SetHeadJointVelocity>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetHeadJointVelocity>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetHeadJointVelocity)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name spencer_control_msgs-msg:<SetHeadJointVelocity> is deprecated: use spencer_control_msgs-msg:SetHeadJointVelocity instead.")))

(cl:ensure-generic-function 'joint-val :lambda-list '(m))
(cl:defmethod joint-val ((m <SetHeadJointVelocity>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spencer_control_msgs-msg:joint-val is deprecated.  Use spencer_control_msgs-msg:joint instead.")
  (joint m))

(cl:ensure-generic-function 'velocity-val :lambda-list '(m))
(cl:defmethod velocity-val ((m <SetHeadJointVelocity>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spencer_control_msgs-msg:velocity-val is deprecated.  Use spencer_control_msgs-msg:velocity instead.")
  (velocity m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<SetHeadJointVelocity>)))
    "Constants for message type '<SetHeadJointVelocity>"
  '((:MIN_VEL . -2.6)
    (:MAX_VEL . 2.6))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'SetHeadJointVelocity)))
    "Constants for message type 'SetHeadJointVelocity"
  '((:MIN_VEL . -2.6)
    (:MAX_VEL . 2.6))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetHeadJointVelocity>) ostream)
  "Serializes a message object of type '<SetHeadJointVelocity>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'joint)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'velocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetHeadJointVelocity>) istream)
  "Deserializes a message object of type '<SetHeadJointVelocity>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'joint)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'velocity) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetHeadJointVelocity>)))
  "Returns string type for a message object of type '<SetHeadJointVelocity>"
  "spencer_control_msgs/SetHeadJointVelocity")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetHeadJointVelocity)))
  "Returns string type for a message object of type 'SetHeadJointVelocity"
  "spencer_control_msgs/SetHeadJointVelocity")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetHeadJointVelocity>)))
  "Returns md5sum for a message object of type '<SetHeadJointVelocity>"
  "c4175a8ec2b1f343eb72dc3f49d4e624")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetHeadJointVelocity)))
  "Returns md5sum for a message object of type 'SetHeadJointVelocity"
  "c4175a8ec2b1f343eb72dc3f49d4e624")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetHeadJointVelocity>)))
  "Returns full string definition for message of type '<SetHeadJointVelocity>"
  (cl:format cl:nil "byte    joint  # see list below~%float32 velocity # in radians/second~%~%### Constants ###~%float32 MIN_VEL = -2.6~%float32 MAX_VEL = 2.6~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetHeadJointVelocity)))
  "Returns full string definition for message of type 'SetHeadJointVelocity"
  (cl:format cl:nil "byte    joint  # see list below~%float32 velocity # in radians/second~%~%### Constants ###~%float32 MIN_VEL = -2.6~%float32 MAX_VEL = 2.6~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetHeadJointVelocity>))
  (cl:+ 0
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetHeadJointVelocity>))
  "Converts a ROS message object to a list"
  (cl:list 'SetHeadJointVelocity
    (cl:cons ':joint (joint msg))
    (cl:cons ':velocity (velocity msg))
))
