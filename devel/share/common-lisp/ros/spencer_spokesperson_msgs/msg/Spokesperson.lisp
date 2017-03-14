; Auto-generated. Do not edit!


(cl:in-package spencer_spokesperson_msgs-msg)


;//! \htmlinclude Spokesperson.msg.html

(cl:defclass <Spokesperson> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (subject_id
    :reader subject_id
    :initarg :subject_id
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (spokesperson_prob
    :reader spokesperson_prob
    :initarg :spokesperson_prob
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass Spokesperson (<Spokesperson>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Spokesperson>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Spokesperson)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name spencer_spokesperson_msgs-msg:<Spokesperson> is deprecated: use spencer_spokesperson_msgs-msg:Spokesperson instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Spokesperson>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spencer_spokesperson_msgs-msg:header-val is deprecated.  Use spencer_spokesperson_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'subject_id-val :lambda-list '(m))
(cl:defmethod subject_id-val ((m <Spokesperson>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spencer_spokesperson_msgs-msg:subject_id-val is deprecated.  Use spencer_spokesperson_msgs-msg:subject_id instead.")
  (subject_id m))

(cl:ensure-generic-function 'spokesperson_prob-val :lambda-list '(m))
(cl:defmethod spokesperson_prob-val ((m <Spokesperson>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spencer_spokesperson_msgs-msg:spokesperson_prob-val is deprecated.  Use spencer_spokesperson_msgs-msg:spokesperson_prob instead.")
  (spokesperson_prob m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Spokesperson>) ostream)
  "Serializes a message object of type '<Spokesperson>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'subject_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream))
   (cl:slot-value msg 'subject_id))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'spokesperson_prob))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'spokesperson_prob))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Spokesperson>) istream)
  "Deserializes a message object of type '<Spokesperson>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'subject_id) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'subject_id)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'spokesperson_prob) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'spokesperson_prob)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Spokesperson>)))
  "Returns string type for a message object of type '<Spokesperson>"
  "spencer_spokesperson_msgs/Spokesperson")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Spokesperson)))
  "Returns string type for a message object of type 'Spokesperson"
  "spencer_spokesperson_msgs/Spokesperson")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Spokesperson>)))
  "Returns md5sum for a message object of type '<Spokesperson>"
  "f71a6c259057c52342e0fad60aaec68c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Spokesperson)))
  "Returns md5sum for a message object of type 'Spokesperson"
  "f71a6c259057c52342e0fad60aaec68c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Spokesperson>)))
  "Returns full string definition for message of type '<Spokesperson>"
  (cl:format cl:nil "std_msgs/Header header~%~%# Spokesperson detection outputs a rand-ordered list with the probability that a subject is the spokesperson~%# For example: When there are 5 subjects being tracked and no spokesperson is detected, each subject will receive prob. 0.2 (i.e. 1/5)~%~%uint32[]            subject_id~%float64[]           spokesperson_prob~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Spokesperson)))
  "Returns full string definition for message of type 'Spokesperson"
  (cl:format cl:nil "std_msgs/Header header~%~%# Spokesperson detection outputs a rand-ordered list with the probability that a subject is the spokesperson~%# For example: When there are 5 subjects being tracked and no spokesperson is detected, each subject will receive prob. 0.2 (i.e. 1/5)~%~%uint32[]            subject_id~%float64[]           spokesperson_prob~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Spokesperson>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'subject_id) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'spokesperson_prob) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Spokesperson>))
  "Converts a ROS message object to a list"
  (cl:list 'Spokesperson
    (cl:cons ':header (header msg))
    (cl:cons ':subject_id (subject_id msg))
    (cl:cons ':spokesperson_prob (spokesperson_prob msg))
))
