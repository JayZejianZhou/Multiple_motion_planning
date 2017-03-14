; Auto-generated. Do not edit!


(cl:in-package supervision_msgs-msg)


;//! \htmlinclude GuideGroupFeedback.msg.html

(cl:defclass <GuideGroupFeedback> (roslisp-msg-protocol:ros-message)
  ((current_node
    :reader current_node
    :initarg :current_node
    :type cl:string
    :initform "")
   (status
    :reader status
    :initarg :status
    :type cl:string
    :initform "")
   (details
    :reader details
    :initarg :details
    :type cl:string
    :initform ""))
)

(cl:defclass GuideGroupFeedback (<GuideGroupFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GuideGroupFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GuideGroupFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name supervision_msgs-msg:<GuideGroupFeedback> is deprecated: use supervision_msgs-msg:GuideGroupFeedback instead.")))

(cl:ensure-generic-function 'current_node-val :lambda-list '(m))
(cl:defmethod current_node-val ((m <GuideGroupFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader supervision_msgs-msg:current_node-val is deprecated.  Use supervision_msgs-msg:current_node instead.")
  (current_node m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <GuideGroupFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader supervision_msgs-msg:status-val is deprecated.  Use supervision_msgs-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'details-val :lambda-list '(m))
(cl:defmethod details-val ((m <GuideGroupFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader supervision_msgs-msg:details-val is deprecated.  Use supervision_msgs-msg:details instead.")
  (details m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GuideGroupFeedback>) ostream)
  "Serializes a message object of type '<GuideGroupFeedback>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'current_node))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'current_node))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'status))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'details))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'details))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GuideGroupFeedback>) istream)
  "Deserializes a message object of type '<GuideGroupFeedback>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'current_node) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'current_node) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'status) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'details) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'details) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GuideGroupFeedback>)))
  "Returns string type for a message object of type '<GuideGroupFeedback>"
  "supervision_msgs/GuideGroupFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GuideGroupFeedback)))
  "Returns string type for a message object of type 'GuideGroupFeedback"
  "supervision_msgs/GuideGroupFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GuideGroupFeedback>)))
  "Returns md5sum for a message object of type '<GuideGroupFeedback>"
  "ff5dc2d5c7947e422d7dbf80c347f3da")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GuideGroupFeedback)))
  "Returns md5sum for a message object of type 'GuideGroupFeedback"
  "ff5dc2d5c7947e422d7dbf80c347f3da")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GuideGroupFeedback>)))
  "Returns full string definition for message of type '<GuideGroupFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%string current_node~%string status~%string details~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GuideGroupFeedback)))
  "Returns full string definition for message of type 'GuideGroupFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%string current_node~%string status~%string details~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GuideGroupFeedback>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'current_node))
     4 (cl:length (cl:slot-value msg 'status))
     4 (cl:length (cl:slot-value msg 'details))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GuideGroupFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'GuideGroupFeedback
    (cl:cons ':current_node (current_node msg))
    (cl:cons ':status (status msg))
    (cl:cons ':details (details msg))
))
