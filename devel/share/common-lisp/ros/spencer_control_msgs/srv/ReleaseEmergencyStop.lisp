; Auto-generated. Do not edit!


(cl:in-package spencer_control_msgs-srv)


;//! \htmlinclude ReleaseEmergencyStop-request.msg.html

(cl:defclass <ReleaseEmergencyStop-request> (roslisp-msg-protocol:ros-message)
  ((magicWord
    :reader magicWord
    :initarg :magicWord
    :type cl:string
    :initform ""))
)

(cl:defclass ReleaseEmergencyStop-request (<ReleaseEmergencyStop-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ReleaseEmergencyStop-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ReleaseEmergencyStop-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name spencer_control_msgs-srv:<ReleaseEmergencyStop-request> is deprecated: use spencer_control_msgs-srv:ReleaseEmergencyStop-request instead.")))

(cl:ensure-generic-function 'magicWord-val :lambda-list '(m))
(cl:defmethod magicWord-val ((m <ReleaseEmergencyStop-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spencer_control_msgs-srv:magicWord-val is deprecated.  Use spencer_control_msgs-srv:magicWord instead.")
  (magicWord m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ReleaseEmergencyStop-request>) ostream)
  "Serializes a message object of type '<ReleaseEmergencyStop-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'magicWord))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'magicWord))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ReleaseEmergencyStop-request>) istream)
  "Deserializes a message object of type '<ReleaseEmergencyStop-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'magicWord) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'magicWord) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ReleaseEmergencyStop-request>)))
  "Returns string type for a service object of type '<ReleaseEmergencyStop-request>"
  "spencer_control_msgs/ReleaseEmergencyStopRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ReleaseEmergencyStop-request)))
  "Returns string type for a service object of type 'ReleaseEmergencyStop-request"
  "spencer_control_msgs/ReleaseEmergencyStopRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ReleaseEmergencyStop-request>)))
  "Returns md5sum for a message object of type '<ReleaseEmergencyStop-request>"
  "1669ac49779199ede2945a8648a7b2a0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ReleaseEmergencyStop-request)))
  "Returns md5sum for a message object of type 'ReleaseEmergencyStop-request"
  "1669ac49779199ede2945a8648a7b2a0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ReleaseEmergencyStop-request>)))
  "Returns full string definition for message of type '<ReleaseEmergencyStop-request>"
  (cl:format cl:nil "string  magicWord~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ReleaseEmergencyStop-request)))
  "Returns full string definition for message of type 'ReleaseEmergencyStop-request"
  (cl:format cl:nil "string  magicWord~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ReleaseEmergencyStop-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'magicWord))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ReleaseEmergencyStop-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ReleaseEmergencyStop-request
    (cl:cons ':magicWord (magicWord msg))
))
;//! \htmlinclude ReleaseEmergencyStop-response.msg.html

(cl:defclass <ReleaseEmergencyStop-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ReleaseEmergencyStop-response (<ReleaseEmergencyStop-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ReleaseEmergencyStop-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ReleaseEmergencyStop-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name spencer_control_msgs-srv:<ReleaseEmergencyStop-response> is deprecated: use spencer_control_msgs-srv:ReleaseEmergencyStop-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <ReleaseEmergencyStop-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spencer_control_msgs-srv:success-val is deprecated.  Use spencer_control_msgs-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ReleaseEmergencyStop-response>) ostream)
  "Serializes a message object of type '<ReleaseEmergencyStop-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ReleaseEmergencyStop-response>) istream)
  "Deserializes a message object of type '<ReleaseEmergencyStop-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ReleaseEmergencyStop-response>)))
  "Returns string type for a service object of type '<ReleaseEmergencyStop-response>"
  "spencer_control_msgs/ReleaseEmergencyStopResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ReleaseEmergencyStop-response)))
  "Returns string type for a service object of type 'ReleaseEmergencyStop-response"
  "spencer_control_msgs/ReleaseEmergencyStopResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ReleaseEmergencyStop-response>)))
  "Returns md5sum for a message object of type '<ReleaseEmergencyStop-response>"
  "1669ac49779199ede2945a8648a7b2a0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ReleaseEmergencyStop-response)))
  "Returns md5sum for a message object of type 'ReleaseEmergencyStop-response"
  "1669ac49779199ede2945a8648a7b2a0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ReleaseEmergencyStop-response>)))
  "Returns full string definition for message of type '<ReleaseEmergencyStop-response>"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ReleaseEmergencyStop-response)))
  "Returns full string definition for message of type 'ReleaseEmergencyStop-response"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ReleaseEmergencyStop-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ReleaseEmergencyStop-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ReleaseEmergencyStop-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ReleaseEmergencyStop)))
  'ReleaseEmergencyStop-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ReleaseEmergencyStop)))
  'ReleaseEmergencyStop-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ReleaseEmergencyStop)))
  "Returns string type for a service object of type '<ReleaseEmergencyStop>"
  "spencer_control_msgs/ReleaseEmergencyStop")