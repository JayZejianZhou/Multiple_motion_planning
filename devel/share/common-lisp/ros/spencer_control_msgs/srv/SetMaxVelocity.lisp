; Auto-generated. Do not edit!


(cl:in-package spencer_control_msgs-srv)


;//! \htmlinclude SetMaxVelocity-request.msg.html

(cl:defclass <SetMaxVelocity-request> (roslisp-msg-protocol:ros-message)
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

(cl:defclass SetMaxVelocity-request (<SetMaxVelocity-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetMaxVelocity-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetMaxVelocity-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name spencer_control_msgs-srv:<SetMaxVelocity-request> is deprecated: use spencer_control_msgs-srv:SetMaxVelocity-request instead.")))

(cl:ensure-generic-function 'max_linear_velocity-val :lambda-list '(m))
(cl:defmethod max_linear_velocity-val ((m <SetMaxVelocity-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spencer_control_msgs-srv:max_linear_velocity-val is deprecated.  Use spencer_control_msgs-srv:max_linear_velocity instead.")
  (max_linear_velocity m))

(cl:ensure-generic-function 'max_angular_velocity-val :lambda-list '(m))
(cl:defmethod max_angular_velocity-val ((m <SetMaxVelocity-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spencer_control_msgs-srv:max_angular_velocity-val is deprecated.  Use spencer_control_msgs-srv:max_angular_velocity instead.")
  (max_angular_velocity m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetMaxVelocity-request>) ostream)
  "Serializes a message object of type '<SetMaxVelocity-request>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetMaxVelocity-request>) istream)
  "Deserializes a message object of type '<SetMaxVelocity-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetMaxVelocity-request>)))
  "Returns string type for a service object of type '<SetMaxVelocity-request>"
  "spencer_control_msgs/SetMaxVelocityRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetMaxVelocity-request)))
  "Returns string type for a service object of type 'SetMaxVelocity-request"
  "spencer_control_msgs/SetMaxVelocityRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetMaxVelocity-request>)))
  "Returns md5sum for a message object of type '<SetMaxVelocity-request>"
  "1327cb85d6759dd1d5d69db85244469b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetMaxVelocity-request)))
  "Returns md5sum for a message object of type 'SetMaxVelocity-request"
  "1327cb85d6759dd1d5d69db85244469b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetMaxVelocity-request>)))
  "Returns full string definition for message of type '<SetMaxVelocity-request>"
  (cl:format cl:nil "float64 max_linear_velocity~%float64 max_angular_velocity~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetMaxVelocity-request)))
  "Returns full string definition for message of type 'SetMaxVelocity-request"
  (cl:format cl:nil "float64 max_linear_velocity~%float64 max_angular_velocity~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetMaxVelocity-request>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetMaxVelocity-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetMaxVelocity-request
    (cl:cons ':max_linear_velocity (max_linear_velocity msg))
    (cl:cons ':max_angular_velocity (max_angular_velocity msg))
))
;//! \htmlinclude SetMaxVelocity-response.msg.html

(cl:defclass <SetMaxVelocity-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetMaxVelocity-response (<SetMaxVelocity-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetMaxVelocity-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetMaxVelocity-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name spencer_control_msgs-srv:<SetMaxVelocity-response> is deprecated: use spencer_control_msgs-srv:SetMaxVelocity-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SetMaxVelocity-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spencer_control_msgs-srv:success-val is deprecated.  Use spencer_control_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetMaxVelocity-response>) ostream)
  "Serializes a message object of type '<SetMaxVelocity-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetMaxVelocity-response>) istream)
  "Deserializes a message object of type '<SetMaxVelocity-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetMaxVelocity-response>)))
  "Returns string type for a service object of type '<SetMaxVelocity-response>"
  "spencer_control_msgs/SetMaxVelocityResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetMaxVelocity-response)))
  "Returns string type for a service object of type 'SetMaxVelocity-response"
  "spencer_control_msgs/SetMaxVelocityResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetMaxVelocity-response>)))
  "Returns md5sum for a message object of type '<SetMaxVelocity-response>"
  "1327cb85d6759dd1d5d69db85244469b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetMaxVelocity-response)))
  "Returns md5sum for a message object of type 'SetMaxVelocity-response"
  "1327cb85d6759dd1d5d69db85244469b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetMaxVelocity-response>)))
  "Returns full string definition for message of type '<SetMaxVelocity-response>"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetMaxVelocity-response)))
  "Returns full string definition for message of type 'SetMaxVelocity-response"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetMaxVelocity-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetMaxVelocity-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetMaxVelocity-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetMaxVelocity)))
  'SetMaxVelocity-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetMaxVelocity)))
  'SetMaxVelocity-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetMaxVelocity)))
  "Returns string type for a service object of type '<SetMaxVelocity>"
  "spencer_control_msgs/SetMaxVelocity")