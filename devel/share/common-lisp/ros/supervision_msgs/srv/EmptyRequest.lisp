; Auto-generated. Do not edit!


(cl:in-package supervision_msgs-srv)


;//! \htmlinclude EmptyRequest-request.msg.html

(cl:defclass <EmptyRequest-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass EmptyRequest-request (<EmptyRequest-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EmptyRequest-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EmptyRequest-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name supervision_msgs-srv:<EmptyRequest-request> is deprecated: use supervision_msgs-srv:EmptyRequest-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EmptyRequest-request>) ostream)
  "Serializes a message object of type '<EmptyRequest-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EmptyRequest-request>) istream)
  "Deserializes a message object of type '<EmptyRequest-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EmptyRequest-request>)))
  "Returns string type for a service object of type '<EmptyRequest-request>"
  "supervision_msgs/EmptyRequestRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EmptyRequest-request)))
  "Returns string type for a service object of type 'EmptyRequest-request"
  "supervision_msgs/EmptyRequestRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EmptyRequest-request>)))
  "Returns md5sum for a message object of type '<EmptyRequest-request>"
  "c22f2a1ed8654a0b365f1bb3f7ff2c0f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EmptyRequest-request)))
  "Returns md5sum for a message object of type 'EmptyRequest-request"
  "c22f2a1ed8654a0b365f1bb3f7ff2c0f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EmptyRequest-request>)))
  "Returns full string definition for message of type '<EmptyRequest-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EmptyRequest-request)))
  "Returns full string definition for message of type 'EmptyRequest-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EmptyRequest-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EmptyRequest-request>))
  "Converts a ROS message object to a list"
  (cl:list 'EmptyRequest-request
))
;//! \htmlinclude EmptyRequest-response.msg.html

(cl:defclass <EmptyRequest-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:string
    :initform ""))
)

(cl:defclass EmptyRequest-response (<EmptyRequest-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EmptyRequest-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EmptyRequest-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name supervision_msgs-srv:<EmptyRequest-response> is deprecated: use supervision_msgs-srv:EmptyRequest-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <EmptyRequest-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader supervision_msgs-srv:result-val is deprecated.  Use supervision_msgs-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EmptyRequest-response>) ostream)
  "Serializes a message object of type '<EmptyRequest-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'result))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'result))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EmptyRequest-response>) istream)
  "Deserializes a message object of type '<EmptyRequest-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'result) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EmptyRequest-response>)))
  "Returns string type for a service object of type '<EmptyRequest-response>"
  "supervision_msgs/EmptyRequestResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EmptyRequest-response)))
  "Returns string type for a service object of type 'EmptyRequest-response"
  "supervision_msgs/EmptyRequestResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EmptyRequest-response>)))
  "Returns md5sum for a message object of type '<EmptyRequest-response>"
  "c22f2a1ed8654a0b365f1bb3f7ff2c0f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EmptyRequest-response)))
  "Returns md5sum for a message object of type 'EmptyRequest-response"
  "c22f2a1ed8654a0b365f1bb3f7ff2c0f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EmptyRequest-response>)))
  "Returns full string definition for message of type '<EmptyRequest-response>"
  (cl:format cl:nil "string result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EmptyRequest-response)))
  "Returns full string definition for message of type 'EmptyRequest-response"
  (cl:format cl:nil "string result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EmptyRequest-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'result))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EmptyRequest-response>))
  "Converts a ROS message object to a list"
  (cl:list 'EmptyRequest-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'EmptyRequest)))
  'EmptyRequest-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'EmptyRequest)))
  'EmptyRequest-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EmptyRequest)))
  "Returns string type for a service object of type '<EmptyRequest>"
  "supervision_msgs/EmptyRequest")