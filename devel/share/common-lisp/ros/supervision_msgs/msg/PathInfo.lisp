; Auto-generated. Do not edit!


(cl:in-package supervision_msgs-msg)


;//! \htmlinclude PathInfo.msg.html

(cl:defclass <PathInfo> (roslisp-msg-protocol:ros-message)
  ((total_seconds
    :reader total_seconds
    :initarg :total_seconds
    :type cl:fixnum
    :initform 0)
   (total_length
    :reader total_length
    :initarg :total_length
    :type cl:float
    :initform 0.0)
   (remaining_seconds
    :reader remaining_seconds
    :initarg :remaining_seconds
    :type cl:fixnum
    :initform 0)
   (remaining_length
    :reader remaining_length
    :initarg :remaining_length
    :type cl:float
    :initform 0.0))
)

(cl:defclass PathInfo (<PathInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PathInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PathInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name supervision_msgs-msg:<PathInfo> is deprecated: use supervision_msgs-msg:PathInfo instead.")))

(cl:ensure-generic-function 'total_seconds-val :lambda-list '(m))
(cl:defmethod total_seconds-val ((m <PathInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader supervision_msgs-msg:total_seconds-val is deprecated.  Use supervision_msgs-msg:total_seconds instead.")
  (total_seconds m))

(cl:ensure-generic-function 'total_length-val :lambda-list '(m))
(cl:defmethod total_length-val ((m <PathInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader supervision_msgs-msg:total_length-val is deprecated.  Use supervision_msgs-msg:total_length instead.")
  (total_length m))

(cl:ensure-generic-function 'remaining_seconds-val :lambda-list '(m))
(cl:defmethod remaining_seconds-val ((m <PathInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader supervision_msgs-msg:remaining_seconds-val is deprecated.  Use supervision_msgs-msg:remaining_seconds instead.")
  (remaining_seconds m))

(cl:ensure-generic-function 'remaining_length-val :lambda-list '(m))
(cl:defmethod remaining_length-val ((m <PathInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader supervision_msgs-msg:remaining_length-val is deprecated.  Use supervision_msgs-msg:remaining_length instead.")
  (remaining_length m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PathInfo>) ostream)
  "Serializes a message object of type '<PathInfo>"
  (cl:let* ((signed (cl:slot-value msg 'total_seconds)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'total_length))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'remaining_seconds)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'remaining_length))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PathInfo>) istream)
  "Deserializes a message object of type '<PathInfo>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'total_seconds) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'total_length) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'remaining_seconds) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'remaining_length) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PathInfo>)))
  "Returns string type for a message object of type '<PathInfo>"
  "supervision_msgs/PathInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PathInfo)))
  "Returns string type for a message object of type 'PathInfo"
  "supervision_msgs/PathInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PathInfo>)))
  "Returns md5sum for a message object of type '<PathInfo>"
  "14255af10539725f58e7cb7d2173aba9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PathInfo)))
  "Returns md5sum for a message object of type 'PathInfo"
  "14255af10539725f58e7cb7d2173aba9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PathInfo>)))
  "Returns full string definition for message of type '<PathInfo>"
  (cl:format cl:nil "int16 total_seconds~%float32 total_length~%int16 remaining_seconds~%float32 remaining_length~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PathInfo)))
  "Returns full string definition for message of type 'PathInfo"
  (cl:format cl:nil "int16 total_seconds~%float32 total_length~%int16 remaining_seconds~%float32 remaining_length~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PathInfo>))
  (cl:+ 0
     2
     4
     2
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PathInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'PathInfo
    (cl:cons ':total_seconds (total_seconds msg))
    (cl:cons ':total_length (total_length msg))
    (cl:cons ':remaining_seconds (remaining_seconds msg))
    (cl:cons ':remaining_length (remaining_length msg))
))
