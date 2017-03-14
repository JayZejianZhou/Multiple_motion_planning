; Auto-generated. Do not edit!


(cl:in-package spencer_nav_msgs-msg)


;//! \htmlinclude NavParams.msg.html

(cl:defclass <NavParams> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (directional_cost
    :reader directional_cost
    :initarg :directional_cost
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass NavParams (<NavParams>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NavParams>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NavParams)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name spencer_nav_msgs-msg:<NavParams> is deprecated: use spencer_nav_msgs-msg:NavParams instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <NavParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spencer_nav_msgs-msg:header-val is deprecated.  Use spencer_nav_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'directional_cost-val :lambda-list '(m))
(cl:defmethod directional_cost-val ((m <NavParams>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spencer_nav_msgs-msg:directional_cost-val is deprecated.  Use spencer_nav_msgs-msg:directional_cost instead.")
  (directional_cost m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NavParams>) ostream)
  "Serializes a message object of type '<NavParams>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'directional_cost) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NavParams>) istream)
  "Deserializes a message object of type '<NavParams>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:slot-value msg 'directional_cost) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NavParams>)))
  "Returns string type for a message object of type '<NavParams>"
  "spencer_nav_msgs/NavParams")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NavParams)))
  "Returns string type for a message object of type 'NavParams"
  "spencer_nav_msgs/NavParams")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NavParams>)))
  "Returns md5sum for a message object of type '<NavParams>"
  "547b70165ad41488198076dece27b8c7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NavParams)))
  "Returns md5sum for a message object of type 'NavParams"
  "547b70165ad41488198076dece27b8c7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NavParams>)))
  "Returns full string definition for message of type '<NavParams>"
  (cl:format cl:nil "# message defining a parameters or strategies for motion planner to adapt based on input from learning~%~%Header header~%bool directional_cost	# if to use directional_cost model or not~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NavParams)))
  "Returns full string definition for message of type 'NavParams"
  (cl:format cl:nil "# message defining a parameters or strategies for motion planner to adapt based on input from learning~%~%Header header~%bool directional_cost	# if to use directional_cost model or not~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NavParams>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NavParams>))
  "Converts a ROS message object to a list"
  (cl:list 'NavParams
    (cl:cons ':header (header msg))
    (cl:cons ':directional_cost (directional_cost msg))
))
