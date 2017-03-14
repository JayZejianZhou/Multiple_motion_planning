; Auto-generated. Do not edit!


(cl:in-package supervision_msgs-msg)


;//! \htmlinclude SupervisionStopped.msg.html

(cl:defclass <SupervisionStopped> (roslisp-msg-protocol:ros-message)
  ((is_stopped
    :reader is_stopped
    :initarg :is_stopped
    :type cl:boolean
    :initform cl:nil)
   (is_paused
    :reader is_paused
    :initarg :is_paused
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SupervisionStopped (<SupervisionStopped>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SupervisionStopped>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SupervisionStopped)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name supervision_msgs-msg:<SupervisionStopped> is deprecated: use supervision_msgs-msg:SupervisionStopped instead.")))

(cl:ensure-generic-function 'is_stopped-val :lambda-list '(m))
(cl:defmethod is_stopped-val ((m <SupervisionStopped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader supervision_msgs-msg:is_stopped-val is deprecated.  Use supervision_msgs-msg:is_stopped instead.")
  (is_stopped m))

(cl:ensure-generic-function 'is_paused-val :lambda-list '(m))
(cl:defmethod is_paused-val ((m <SupervisionStopped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader supervision_msgs-msg:is_paused-val is deprecated.  Use supervision_msgs-msg:is_paused instead.")
  (is_paused m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SupervisionStopped>) ostream)
  "Serializes a message object of type '<SupervisionStopped>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_stopped) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_paused) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SupervisionStopped>) istream)
  "Deserializes a message object of type '<SupervisionStopped>"
    (cl:setf (cl:slot-value msg 'is_stopped) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'is_paused) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SupervisionStopped>)))
  "Returns string type for a message object of type '<SupervisionStopped>"
  "supervision_msgs/SupervisionStopped")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SupervisionStopped)))
  "Returns string type for a message object of type 'SupervisionStopped"
  "supervision_msgs/SupervisionStopped")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SupervisionStopped>)))
  "Returns md5sum for a message object of type '<SupervisionStopped>"
  "199f785df4f375bed5b36a8d78b2b2c1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SupervisionStopped)))
  "Returns md5sum for a message object of type 'SupervisionStopped"
  "199f785df4f375bed5b36a8d78b2b2c1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SupervisionStopped>)))
  "Returns full string definition for message of type '<SupervisionStopped>"
  (cl:format cl:nil "bool is_stopped~%bool is_paused~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SupervisionStopped)))
  "Returns full string definition for message of type 'SupervisionStopped"
  (cl:format cl:nil "bool is_stopped~%bool is_paused~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SupervisionStopped>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SupervisionStopped>))
  "Converts a ROS message object to a list"
  (cl:list 'SupervisionStopped
    (cl:cons ':is_stopped (is_stopped msg))
    (cl:cons ':is_paused (is_paused msg))
))
