; Auto-generated. Do not edit!


(cl:in-package situation_assessment_msgs-msg)


;//! \htmlinclude NamedPose.msg.html

(cl:defclass <NamedPose> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (type
    :reader type
    :initarg :type
    :type cl:string
    :initform "")
   (pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose)))
)

(cl:defclass NamedPose (<NamedPose>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NamedPose>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NamedPose)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name situation_assessment_msgs-msg:<NamedPose> is deprecated: use situation_assessment_msgs-msg:NamedPose instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <NamedPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader situation_assessment_msgs-msg:name-val is deprecated.  Use situation_assessment_msgs-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <NamedPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader situation_assessment_msgs-msg:type-val is deprecated.  Use situation_assessment_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <NamedPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader situation_assessment_msgs-msg:pose-val is deprecated.  Use situation_assessment_msgs-msg:pose instead.")
  (pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NamedPose>) ostream)
  "Serializes a message object of type '<NamedPose>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'type))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NamedPose>) istream)
  "Deserializes a message object of type '<NamedPose>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NamedPose>)))
  "Returns string type for a message object of type '<NamedPose>"
  "situation_assessment_msgs/NamedPose")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NamedPose)))
  "Returns string type for a message object of type 'NamedPose"
  "situation_assessment_msgs/NamedPose")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NamedPose>)))
  "Returns md5sum for a message object of type '<NamedPose>"
  "8b980f42243cc7b9c1f803bf0833b9c8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NamedPose)))
  "Returns md5sum for a message object of type 'NamedPose"
  "8b980f42243cc7b9c1f803bf0833b9c8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NamedPose>)))
  "Returns full string definition for message of type '<NamedPose>"
  (cl:format cl:nil "string name~%string type~%geometry_msgs/Pose pose~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NamedPose)))
  "Returns full string definition for message of type 'NamedPose"
  (cl:format cl:nil "string name~%string type~%geometry_msgs/Pose pose~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NamedPose>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     4 (cl:length (cl:slot-value msg 'type))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NamedPose>))
  "Converts a ROS message object to a list"
  (cl:list 'NamedPose
    (cl:cons ':name (name msg))
    (cl:cons ':type (type msg))
    (cl:cons ':pose (pose msg))
))
