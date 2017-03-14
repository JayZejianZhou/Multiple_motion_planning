; Auto-generated. Do not edit!


(cl:in-package spencer_control_msgs-srv)


;//! \htmlinclude GetMaxVelocity-request.msg.html

(cl:defclass <GetMaxVelocity-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetMaxVelocity-request (<GetMaxVelocity-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetMaxVelocity-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetMaxVelocity-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name spencer_control_msgs-srv:<GetMaxVelocity-request> is deprecated: use spencer_control_msgs-srv:GetMaxVelocity-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetMaxVelocity-request>) ostream)
  "Serializes a message object of type '<GetMaxVelocity-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetMaxVelocity-request>) istream)
  "Deserializes a message object of type '<GetMaxVelocity-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetMaxVelocity-request>)))
  "Returns string type for a service object of type '<GetMaxVelocity-request>"
  "spencer_control_msgs/GetMaxVelocityRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetMaxVelocity-request)))
  "Returns string type for a service object of type 'GetMaxVelocity-request"
  "spencer_control_msgs/GetMaxVelocityRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetMaxVelocity-request>)))
  "Returns md5sum for a message object of type '<GetMaxVelocity-request>"
  "c3d002ed0ab158592aaa625149bc3810")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetMaxVelocity-request)))
  "Returns md5sum for a message object of type 'GetMaxVelocity-request"
  "c3d002ed0ab158592aaa625149bc3810")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetMaxVelocity-request>)))
  "Returns full string definition for message of type '<GetMaxVelocity-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetMaxVelocity-request)))
  "Returns full string definition for message of type 'GetMaxVelocity-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetMaxVelocity-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetMaxVelocity-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetMaxVelocity-request
))
;//! \htmlinclude GetMaxVelocity-response.msg.html

(cl:defclass <GetMaxVelocity-response> (roslisp-msg-protocol:ros-message)
  ((max_linear_velocity
    :reader max_linear_velocity
    :initarg :max_linear_velocity
    :type cl:float
    :initform 0.0)
   (max_angular_velocity
    :reader max_angular_velocity
    :initarg :max_angular_velocity
    :type cl:float
    :initform 0.0))
)

(cl:defclass GetMaxVelocity-response (<GetMaxVelocity-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetMaxVelocity-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetMaxVelocity-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name spencer_control_msgs-srv:<GetMaxVelocity-response> is deprecated: use spencer_control_msgs-srv:GetMaxVelocity-response instead.")))

(cl:ensure-generic-function 'max_linear_velocity-val :lambda-list '(m))
(cl:defmethod max_linear_velocity-val ((m <GetMaxVelocity-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spencer_control_msgs-srv:max_linear_velocity-val is deprecated.  Use spencer_control_msgs-srv:max_linear_velocity instead.")
  (max_linear_velocity m))

(cl:ensure-generic-function 'max_angular_velocity-val :lambda-list '(m))
(cl:defmethod max_angular_velocity-val ((m <GetMaxVelocity-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spencer_control_msgs-srv:max_angular_velocity-val is deprecated.  Use spencer_control_msgs-srv:max_angular_velocity instead.")
  (max_angular_velocity m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetMaxVelocity-response>) ostream)
  "Serializes a message object of type '<GetMaxVelocity-response>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'max_linear_velocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'max_angular_velocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetMaxVelocity-response>) istream)
  "Deserializes a message object of type '<GetMaxVelocity-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_linear_velocity) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_angular_velocity) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetMaxVelocity-response>)))
  "Returns string type for a service object of type '<GetMaxVelocity-response>"
  "spencer_control_msgs/GetMaxVelocityResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetMaxVelocity-response)))
  "Returns string type for a service object of type 'GetMaxVelocity-response"
  "spencer_control_msgs/GetMaxVelocityResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetMaxVelocity-response>)))
  "Returns md5sum for a message object of type '<GetMaxVelocity-response>"
  "c3d002ed0ab158592aaa625149bc3810")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetMaxVelocity-response)))
  "Returns md5sum for a message object of type 'GetMaxVelocity-response"
  "c3d002ed0ab158592aaa625149bc3810")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetMaxVelocity-response>)))
  "Returns full string definition for message of type '<GetMaxVelocity-response>"
  (cl:format cl:nil "float64 max_linear_velocity~%float64 max_angular_velocity~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetMaxVelocity-response)))
  "Returns full string definition for message of type 'GetMaxVelocity-response"
  (cl:format cl:nil "float64 max_linear_velocity~%float64 max_angular_velocity~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetMaxVelocity-response>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetMaxVelocity-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetMaxVelocity-response
    (cl:cons ':max_linear_velocity (max_linear_velocity msg))
    (cl:cons ':max_angular_velocity (max_angular_velocity msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetMaxVelocity)))
  'GetMaxVelocity-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetMaxVelocity)))
  'GetMaxVelocity-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetMaxVelocity)))
  "Returns string type for a service object of type '<GetMaxVelocity>"
  "spencer_control_msgs/GetMaxVelocity")