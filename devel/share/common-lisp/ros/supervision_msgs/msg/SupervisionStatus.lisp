; Auto-generated. Do not edit!


(cl:in-package supervision_msgs-msg)


;//! \htmlinclude SupervisionStatus.msg.html

(cl:defclass <SupervisionStatus> (roslisp-msg-protocol:ros-message)
  ((status
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

(cl:defclass SupervisionStatus (<SupervisionStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SupervisionStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SupervisionStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name supervision_msgs-msg:<SupervisionStatus> is deprecated: use supervision_msgs-msg:SupervisionStatus instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <SupervisionStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader supervision_msgs-msg:status-val is deprecated.  Use supervision_msgs-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'details-val :lambda-list '(m))
(cl:defmethod details-val ((m <SupervisionStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader supervision_msgs-msg:details-val is deprecated.  Use supervision_msgs-msg:details instead.")
  (details m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SupervisionStatus>) ostream)
  "Serializes a message object of type '<SupervisionStatus>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SupervisionStatus>) istream)
  "Deserializes a message object of type '<SupervisionStatus>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SupervisionStatus>)))
  "Returns string type for a message object of type '<SupervisionStatus>"
  "supervision_msgs/SupervisionStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SupervisionStatus)))
  "Returns string type for a message object of type 'SupervisionStatus"
  "supervision_msgs/SupervisionStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SupervisionStatus>)))
  "Returns md5sum for a message object of type '<SupervisionStatus>"
  "14c9eacf4b402c8b3ddf2528b4dcf4d9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SupervisionStatus)))
  "Returns md5sum for a message object of type 'SupervisionStatus"
  "14c9eacf4b402c8b3ddf2528b4dcf4d9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SupervisionStatus>)))
  "Returns full string definition for message of type '<SupervisionStatus>"
  (cl:format cl:nil "string status~%string details~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SupervisionStatus)))
  "Returns full string definition for message of type 'SupervisionStatus"
  (cl:format cl:nil "string status~%string details~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SupervisionStatus>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'status))
     4 (cl:length (cl:slot-value msg 'details))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SupervisionStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'SupervisionStatus
    (cl:cons ':status (status msg))
    (cl:cons ':details (details msg))
))
