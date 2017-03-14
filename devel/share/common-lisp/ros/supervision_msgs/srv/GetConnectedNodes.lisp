; Auto-generated. Do not edit!


(cl:in-package supervision_msgs-srv)


;//! \htmlinclude GetConnectedNodes-request.msg.html

(cl:defclass <GetConnectedNodes-request> (roslisp-msg-protocol:ros-message)
  ((node
    :reader node
    :initarg :node
    :type cl:string
    :initform ""))
)

(cl:defclass GetConnectedNodes-request (<GetConnectedNodes-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetConnectedNodes-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetConnectedNodes-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name supervision_msgs-srv:<GetConnectedNodes-request> is deprecated: use supervision_msgs-srv:GetConnectedNodes-request instead.")))

(cl:ensure-generic-function 'node-val :lambda-list '(m))
(cl:defmethod node-val ((m <GetConnectedNodes-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader supervision_msgs-srv:node-val is deprecated.  Use supervision_msgs-srv:node instead.")
  (node m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetConnectedNodes-request>) ostream)
  "Serializes a message object of type '<GetConnectedNodes-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'node))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'node))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetConnectedNodes-request>) istream)
  "Deserializes a message object of type '<GetConnectedNodes-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'node) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'node) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetConnectedNodes-request>)))
  "Returns string type for a service object of type '<GetConnectedNodes-request>"
  "supervision_msgs/GetConnectedNodesRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetConnectedNodes-request)))
  "Returns string type for a service object of type 'GetConnectedNodes-request"
  "supervision_msgs/GetConnectedNodesRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetConnectedNodes-request>)))
  "Returns md5sum for a message object of type '<GetConnectedNodes-request>"
  "62c02cb4f61e9f49c378518abb18ee45")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetConnectedNodes-request)))
  "Returns md5sum for a message object of type 'GetConnectedNodes-request"
  "62c02cb4f61e9f49c378518abb18ee45")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetConnectedNodes-request>)))
  "Returns full string definition for message of type '<GetConnectedNodes-request>"
  (cl:format cl:nil "string node~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetConnectedNodes-request)))
  "Returns full string definition for message of type 'GetConnectedNodes-request"
  (cl:format cl:nil "string node~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetConnectedNodes-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'node))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetConnectedNodes-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetConnectedNodes-request
    (cl:cons ':node (node msg))
))
;//! \htmlinclude GetConnectedNodes-response.msg.html

(cl:defclass <GetConnectedNodes-response> (roslisp-msg-protocol:ros-message)
  ((connected_nodes
    :reader connected_nodes
    :initarg :connected_nodes
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass GetConnectedNodes-response (<GetConnectedNodes-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetConnectedNodes-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetConnectedNodes-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name supervision_msgs-srv:<GetConnectedNodes-response> is deprecated: use supervision_msgs-srv:GetConnectedNodes-response instead.")))

(cl:ensure-generic-function 'connected_nodes-val :lambda-list '(m))
(cl:defmethod connected_nodes-val ((m <GetConnectedNodes-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader supervision_msgs-srv:connected_nodes-val is deprecated.  Use supervision_msgs-srv:connected_nodes instead.")
  (connected_nodes m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetConnectedNodes-response>) ostream)
  "Serializes a message object of type '<GetConnectedNodes-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'connected_nodes))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'connected_nodes))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetConnectedNodes-response>) istream)
  "Deserializes a message object of type '<GetConnectedNodes-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'connected_nodes) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'connected_nodes)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetConnectedNodes-response>)))
  "Returns string type for a service object of type '<GetConnectedNodes-response>"
  "supervision_msgs/GetConnectedNodesResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetConnectedNodes-response)))
  "Returns string type for a service object of type 'GetConnectedNodes-response"
  "supervision_msgs/GetConnectedNodesResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetConnectedNodes-response>)))
  "Returns md5sum for a message object of type '<GetConnectedNodes-response>"
  "62c02cb4f61e9f49c378518abb18ee45")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetConnectedNodes-response)))
  "Returns md5sum for a message object of type 'GetConnectedNodes-response"
  "62c02cb4f61e9f49c378518abb18ee45")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetConnectedNodes-response>)))
  "Returns full string definition for message of type '<GetConnectedNodes-response>"
  (cl:format cl:nil "string[] connected_nodes~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetConnectedNodes-response)))
  "Returns full string definition for message of type 'GetConnectedNodes-response"
  (cl:format cl:nil "string[] connected_nodes~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetConnectedNodes-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'connected_nodes) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetConnectedNodes-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetConnectedNodes-response
    (cl:cons ':connected_nodes (connected_nodes msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetConnectedNodes)))
  'GetConnectedNodes-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetConnectedNodes)))
  'GetConnectedNodes-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetConnectedNodes)))
  "Returns string type for a service object of type '<GetConnectedNodes>"
  "supervision_msgs/GetConnectedNodes")