; Auto-generated. Do not edit!


(cl:in-package situation_assessment_msgs-msg)


;//! \htmlinclude GroupList.msg.html

(cl:defclass <GroupList> (roslisp-msg-protocol:ros-message)
  ((list
    :reader list
    :initarg :list
    :type (cl:vector situation_assessment_msgs-msg:Group)
   :initform (cl:make-array 0 :element-type 'situation_assessment_msgs-msg:Group :initial-element (cl:make-instance 'situation_assessment_msgs-msg:Group))))
)

(cl:defclass GroupList (<GroupList>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GroupList>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GroupList)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name situation_assessment_msgs-msg:<GroupList> is deprecated: use situation_assessment_msgs-msg:GroupList instead.")))

(cl:ensure-generic-function 'list-val :lambda-list '(m))
(cl:defmethod list-val ((m <GroupList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader situation_assessment_msgs-msg:list-val is deprecated.  Use situation_assessment_msgs-msg:list instead.")
  (list m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GroupList>) ostream)
  "Serializes a message object of type '<GroupList>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'list))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GroupList>) istream)
  "Deserializes a message object of type '<GroupList>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'situation_assessment_msgs-msg:Group))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GroupList>)))
  "Returns string type for a message object of type '<GroupList>"
  "situation_assessment_msgs/GroupList")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GroupList)))
  "Returns string type for a message object of type 'GroupList"
  "situation_assessment_msgs/GroupList")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GroupList>)))
  "Returns md5sum for a message object of type '<GroupList>"
  "7341511c759687b4d706477c9a82bd5f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GroupList)))
  "Returns md5sum for a message object of type 'GroupList"
  "7341511c759687b4d706477c9a82bd5f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GroupList>)))
  "Returns full string definition for message of type '<GroupList>"
  (cl:format cl:nil "Group[] list~%================================================================================~%MSG: situation_assessment_msgs/Group~%string name~%string[] members~%geometry_msgs/Pose pose~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GroupList)))
  "Returns full string definition for message of type 'GroupList"
  (cl:format cl:nil "Group[] list~%================================================================================~%MSG: situation_assessment_msgs/Group~%string name~%string[] members~%geometry_msgs/Pose pose~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GroupList>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GroupList>))
  "Converts a ROS message object to a list"
  (cl:list 'GroupList
    (cl:cons ':list (list msg))
))
