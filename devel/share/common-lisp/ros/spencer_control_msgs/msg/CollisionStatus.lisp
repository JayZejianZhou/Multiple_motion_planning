; Auto-generated. Do not edit!


(cl:in-package spencer_control_msgs-msg)


;//! \htmlinclude CollisionStatus.msg.html

(cl:defclass <CollisionStatus> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (collisionWarning
    :reader collisionWarning
    :initarg :collisionWarning
    :type cl:boolean
    :initform cl:nil)
   (collisionError
    :reader collisionError
    :initarg :collisionError
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass CollisionStatus (<CollisionStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CollisionStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CollisionStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name spencer_control_msgs-msg:<CollisionStatus> is deprecated: use spencer_control_msgs-msg:CollisionStatus instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <CollisionStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spencer_control_msgs-msg:header-val is deprecated.  Use spencer_control_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'collisionWarning-val :lambda-list '(m))
(cl:defmethod collisionWarning-val ((m <CollisionStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spencer_control_msgs-msg:collisionWarning-val is deprecated.  Use spencer_control_msgs-msg:collisionWarning instead.")
  (collisionWarning m))

(cl:ensure-generic-function 'collisionError-val :lambda-list '(m))
(cl:defmethod collisionError-val ((m <CollisionStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spencer_control_msgs-msg:collisionError-val is deprecated.  Use spencer_control_msgs-msg:collisionError instead.")
  (collisionError m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CollisionStatus>) ostream)
  "Serializes a message object of type '<CollisionStatus>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'collisionWarning) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'collisionError) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CollisionStatus>) istream)
  "Deserializes a message object of type '<CollisionStatus>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:slot-value msg 'collisionWarning) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'collisionError) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CollisionStatus>)))
  "Returns string type for a message object of type '<CollisionStatus>"
  "spencer_control_msgs/CollisionStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CollisionStatus)))
  "Returns string type for a message object of type 'CollisionStatus"
  "spencer_control_msgs/CollisionStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CollisionStatus>)))
  "Returns md5sum for a message object of type '<CollisionStatus>"
  "69c5b68f95583aa944452fc0dfa186c1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CollisionStatus)))
  "Returns md5sum for a message object of type 'CollisionStatus"
  "69c5b68f95583aa944452fc0dfa186c1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CollisionStatus>)))
  "Returns full string definition for message of type '<CollisionStatus>"
  (cl:format cl:nil "std_msgs/Header header~%~%bool    collisionWarning    # collision likely to occur soon, need to slow down~%bool    collisionError      # collision imminent, must stop now~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CollisionStatus)))
  "Returns full string definition for message of type 'CollisionStatus"
  (cl:format cl:nil "std_msgs/Header header~%~%bool    collisionWarning    # collision likely to occur soon, need to slow down~%bool    collisionError      # collision imminent, must stop now~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CollisionStatus>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CollisionStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'CollisionStatus
    (cl:cons ':header (header msg))
    (cl:cons ':collisionWarning (collisionWarning msg))
    (cl:cons ':collisionError (collisionError msg))
))
