; Auto-generated. Do not edit!


(cl:in-package spencer_control_msgs-msg)


;//! \htmlinclude SafetyRectangle.msg.html

(cl:defclass <SafetyRectangle> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (warning_depth
    :reader warning_depth
    :initarg :warning_depth
    :type cl:float
    :initform 0.0)
   (warning_half_width
    :reader warning_half_width
    :initarg :warning_half_width
    :type cl:float
    :initform 0.0)
   (error_depth
    :reader error_depth
    :initarg :error_depth
    :type cl:float
    :initform 0.0)
   (error_half_width
    :reader error_half_width
    :initarg :error_half_width
    :type cl:float
    :initform 0.0))
)

(cl:defclass SafetyRectangle (<SafetyRectangle>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SafetyRectangle>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SafetyRectangle)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name spencer_control_msgs-msg:<SafetyRectangle> is deprecated: use spencer_control_msgs-msg:SafetyRectangle instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <SafetyRectangle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spencer_control_msgs-msg:header-val is deprecated.  Use spencer_control_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'warning_depth-val :lambda-list '(m))
(cl:defmethod warning_depth-val ((m <SafetyRectangle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spencer_control_msgs-msg:warning_depth-val is deprecated.  Use spencer_control_msgs-msg:warning_depth instead.")
  (warning_depth m))

(cl:ensure-generic-function 'warning_half_width-val :lambda-list '(m))
(cl:defmethod warning_half_width-val ((m <SafetyRectangle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spencer_control_msgs-msg:warning_half_width-val is deprecated.  Use spencer_control_msgs-msg:warning_half_width instead.")
  (warning_half_width m))

(cl:ensure-generic-function 'error_depth-val :lambda-list '(m))
(cl:defmethod error_depth-val ((m <SafetyRectangle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spencer_control_msgs-msg:error_depth-val is deprecated.  Use spencer_control_msgs-msg:error_depth instead.")
  (error_depth m))

(cl:ensure-generic-function 'error_half_width-val :lambda-list '(m))
(cl:defmethod error_half_width-val ((m <SafetyRectangle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spencer_control_msgs-msg:error_half_width-val is deprecated.  Use spencer_control_msgs-msg:error_half_width instead.")
  (error_half_width m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SafetyRectangle>) ostream)
  "Serializes a message object of type '<SafetyRectangle>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'warning_depth))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'warning_half_width))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'error_depth))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'error_half_width))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SafetyRectangle>) istream)
  "Deserializes a message object of type '<SafetyRectangle>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'warning_depth) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'warning_half_width) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'error_depth) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'error_half_width) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SafetyRectangle>)))
  "Returns string type for a message object of type '<SafetyRectangle>"
  "spencer_control_msgs/SafetyRectangle")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SafetyRectangle)))
  "Returns string type for a message object of type 'SafetyRectangle"
  "spencer_control_msgs/SafetyRectangle")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SafetyRectangle>)))
  "Returns md5sum for a message object of type '<SafetyRectangle>"
  "9c34de6ca4a8977249c48fa1beb73b3c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SafetyRectangle)))
  "Returns md5sum for a message object of type 'SafetyRectangle"
  "9c34de6ca4a8977249c48fa1beb73b3c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SafetyRectangle>)))
  "Returns full string definition for message of type '<SafetyRectangle>"
  (cl:format cl:nil "std_msgs/Header     header~%~%# Depth and half width of the safety rectangle.~%#~%# NOTE: Half width instead of full width, since the safety rectangle is *centered* at the y coordinate~%# of the coordinate frame specified in the header (frame_id).~%# In the x direction (depth), however, the safety rectangle *begins* in the origin (x = 0).~%~%float32             warning_depth        # into x direction~%float32             warning_half_width   # into y direction~%~%float32             error_depth          # into x direction~%float32             error_half_width     # into y direction~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SafetyRectangle)))
  "Returns full string definition for message of type 'SafetyRectangle"
  (cl:format cl:nil "std_msgs/Header     header~%~%# Depth and half width of the safety rectangle.~%#~%# NOTE: Half width instead of full width, since the safety rectangle is *centered* at the y coordinate~%# of the coordinate frame specified in the header (frame_id).~%# In the x direction (depth), however, the safety rectangle *begins* in the origin (x = 0).~%~%float32             warning_depth        # into x direction~%float32             warning_half_width   # into y direction~%~%float32             error_depth          # into x direction~%float32             error_half_width     # into y direction~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SafetyRectangle>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SafetyRectangle>))
  "Converts a ROS message object to a list"
  (cl:list 'SafetyRectangle
    (cl:cons ':header (header msg))
    (cl:cons ':warning_depth (warning_depth msg))
    (cl:cons ':warning_half_width (warning_half_width msg))
    (cl:cons ':error_depth (error_depth msg))
    (cl:cons ':error_half_width (error_half_width msg))
))
