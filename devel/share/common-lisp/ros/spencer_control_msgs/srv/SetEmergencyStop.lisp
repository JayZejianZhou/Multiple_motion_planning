; Auto-generated. Do not edit!


(cl:in-package spencer_control_msgs-srv)


;//! \htmlinclude SetEmergencyStop-request.msg.html

(cl:defclass <SetEmergencyStop-request> (roslisp-msg-protocol:ros-message)
  ((componentId
    :reader componentId
    :initarg :componentId
    :type cl:string
    :initform "")
   (reason
    :reader reason
    :initarg :reason
    :type cl:string
    :initform ""))
)

(cl:defclass SetEmergencyStop-request (<SetEmergencyStop-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetEmergencyStop-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetEmergencyStop-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name spencer_control_msgs-srv:<SetEmergencyStop-request> is deprecated: use spencer_control_msgs-srv:SetEmergencyStop-request instead.")))

(cl:ensure-generic-function 'componentId-val :lambda-list '(m))
(cl:defmethod componentId-val ((m <SetEmergencyStop-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spencer_control_msgs-srv:componentId-val is deprecated.  Use spencer_control_msgs-srv:componentId instead.")
  (componentId m))

(cl:ensure-generic-function 'reason-val :lambda-list '(m))
(cl:defmethod reason-val ((m <SetEmergencyStop-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spencer_control_msgs-srv:reason-val is deprecated.  Use spencer_control_msgs-srv:reason instead.")
  (reason m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetEmergencyStop-request>) ostream)
  "Serializes a message object of type '<SetEmergencyStop-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'componentId))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'componentId))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'reason))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'reason))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetEmergencyStop-request>) istream)
  "Deserializes a message object of type '<SetEmergencyStop-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'componentId) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'componentId) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'reason) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'reason) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetEmergencyStop-request>)))
  "Returns string type for a service object of type '<SetEmergencyStop-request>"
  "spencer_control_msgs/SetEmergencyStopRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetEmergencyStop-request)))
  "Returns string type for a service object of type 'SetEmergencyStop-request"
  "spencer_control_msgs/SetEmergencyStopRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetEmergencyStop-request>)))
  "Returns md5sum for a message object of type '<SetEmergencyStop-request>"
  "d2838a5b80262371973005b47940876f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetEmergencyStop-request)))
  "Returns md5sum for a message object of type 'SetEmergencyStop-request"
  "d2838a5b80262371973005b47940876f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetEmergencyStop-request>)))
  "Returns full string definition for message of type '<SetEmergencyStop-request>"
  (cl:format cl:nil "string componentId~%string reason~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetEmergencyStop-request)))
  "Returns full string definition for message of type 'SetEmergencyStop-request"
  (cl:format cl:nil "string componentId~%string reason~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetEmergencyStop-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'componentId))
     4 (cl:length (cl:slot-value msg 'reason))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetEmergencyStop-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetEmergencyStop-request
    (cl:cons ':componentId (componentId msg))
    (cl:cons ':reason (reason msg))
))
;//! \htmlinclude SetEmergencyStop-response.msg.html

(cl:defclass <SetEmergencyStop-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetEmergencyStop-response (<SetEmergencyStop-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetEmergencyStop-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetEmergencyStop-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name spencer_control_msgs-srv:<SetEmergencyStop-response> is deprecated: use spencer_control_msgs-srv:SetEmergencyStop-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SetEmergencyStop-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spencer_control_msgs-srv:success-val is deprecated.  Use spencer_control_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetEmergencyStop-response>) ostream)
  "Serializes a message object of type '<SetEmergencyStop-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetEmergencyStop-response>) istream)
  "Deserializes a message object of type '<SetEmergencyStop-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetEmergencyStop-response>)))
  "Returns string type for a service object of type '<SetEmergencyStop-response>"
  "spencer_control_msgs/SetEmergencyStopResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetEmergencyStop-response)))
  "Returns string type for a service object of type 'SetEmergencyStop-response"
  "spencer_control_msgs/SetEmergencyStopResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetEmergencyStop-response>)))
  "Returns md5sum for a message object of type '<SetEmergencyStop-response>"
  "d2838a5b80262371973005b47940876f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetEmergencyStop-response)))
  "Returns md5sum for a message object of type 'SetEmergencyStop-response"
  "d2838a5b80262371973005b47940876f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetEmergencyStop-response>)))
  "Returns full string definition for message of type '<SetEmergencyStop-response>"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetEmergencyStop-response)))
  "Returns full string definition for message of type 'SetEmergencyStop-response"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetEmergencyStop-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetEmergencyStop-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetEmergencyStop-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetEmergencyStop)))
  'SetEmergencyStop-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetEmergencyStop)))
  'SetEmergencyStop-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetEmergencyStop)))
  "Returns string type for a service object of type '<SetEmergencyStop>"
  "spencer_control_msgs/SetEmergencyStop")