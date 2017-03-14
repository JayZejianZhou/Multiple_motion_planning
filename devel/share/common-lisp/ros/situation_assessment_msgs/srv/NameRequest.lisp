; Auto-generated. Do not edit!


(cl:in-package situation_assessment_msgs-srv)


;//! \htmlinclude NameRequest-request.msg.html

(cl:defclass <NameRequest-request> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform ""))
)

(cl:defclass NameRequest-request (<NameRequest-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NameRequest-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NameRequest-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name situation_assessment_msgs-srv:<NameRequest-request> is deprecated: use situation_assessment_msgs-srv:NameRequest-request instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <NameRequest-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader situation_assessment_msgs-srv:name-val is deprecated.  Use situation_assessment_msgs-srv:name instead.")
  (name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NameRequest-request>) ostream)
  "Serializes a message object of type '<NameRequest-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NameRequest-request>) istream)
  "Deserializes a message object of type '<NameRequest-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NameRequest-request>)))
  "Returns string type for a service object of type '<NameRequest-request>"
  "situation_assessment_msgs/NameRequestRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NameRequest-request)))
  "Returns string type for a service object of type 'NameRequest-request"
  "situation_assessment_msgs/NameRequestRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NameRequest-request>)))
  "Returns md5sum for a message object of type '<NameRequest-request>"
  "ee91d68745ef4d7a247816a59dffedf2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NameRequest-request)))
  "Returns md5sum for a message object of type 'NameRequest-request"
  "ee91d68745ef4d7a247816a59dffedf2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NameRequest-request>)))
  "Returns full string definition for message of type '<NameRequest-request>"
  (cl:format cl:nil "string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NameRequest-request)))
  "Returns full string definition for message of type 'NameRequest-request"
  (cl:format cl:nil "string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NameRequest-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NameRequest-request>))
  "Converts a ROS message object to a list"
  (cl:list 'NameRequest-request
    (cl:cons ':name (name msg))
))
;//! \htmlinclude NameRequest-response.msg.html

(cl:defclass <NameRequest-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass NameRequest-response (<NameRequest-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NameRequest-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NameRequest-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name situation_assessment_msgs-srv:<NameRequest-response> is deprecated: use situation_assessment_msgs-srv:NameRequest-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <NameRequest-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader situation_assessment_msgs-srv:result-val is deprecated.  Use situation_assessment_msgs-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NameRequest-response>) ostream)
  "Serializes a message object of type '<NameRequest-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NameRequest-response>) istream)
  "Deserializes a message object of type '<NameRequest-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NameRequest-response>)))
  "Returns string type for a service object of type '<NameRequest-response>"
  "situation_assessment_msgs/NameRequestResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NameRequest-response)))
  "Returns string type for a service object of type 'NameRequest-response"
  "situation_assessment_msgs/NameRequestResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NameRequest-response>)))
  "Returns md5sum for a message object of type '<NameRequest-response>"
  "ee91d68745ef4d7a247816a59dffedf2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NameRequest-response)))
  "Returns md5sum for a message object of type 'NameRequest-response"
  "ee91d68745ef4d7a247816a59dffedf2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NameRequest-response>)))
  "Returns full string definition for message of type '<NameRequest-response>"
  (cl:format cl:nil "bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NameRequest-response)))
  "Returns full string definition for message of type 'NameRequest-response"
  (cl:format cl:nil "bool result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NameRequest-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NameRequest-response>))
  "Converts a ROS message object to a list"
  (cl:list 'NameRequest-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'NameRequest)))
  'NameRequest-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'NameRequest)))
  'NameRequest-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NameRequest)))
  "Returns string type for a service object of type '<NameRequest>"
  "situation_assessment_msgs/NameRequest")