; Auto-generated. Do not edit!


(cl:in-package situation_assessment_msgs-msg)


;//! \htmlinclude NamedPoseList.msg.html

(cl:defclass <NamedPoseList> (roslisp-msg-protocol:ros-message)
  ((poses
    :reader poses
    :initarg :poses
    :type (cl:vector situation_assessment_msgs-msg:NamedPose)
   :initform (cl:make-array 0 :element-type 'situation_assessment_msgs-msg:NamedPose :initial-element (cl:make-instance 'situation_assessment_msgs-msg:NamedPose))))
)

(cl:defclass NamedPoseList (<NamedPoseList>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NamedPoseList>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NamedPoseList)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name situation_assessment_msgs-msg:<NamedPoseList> is deprecated: use situation_assessment_msgs-msg:NamedPoseList instead.")))

(cl:ensure-generic-function 'poses-val :lambda-list '(m))
(cl:defmethod poses-val ((m <NamedPoseList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader situation_assessment_msgs-msg:poses-val is deprecated.  Use situation_assessment_msgs-msg:poses instead.")
  (poses m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NamedPoseList>) ostream)
  "Serializes a message object of type '<NamedPoseList>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'poses))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'poses))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NamedPoseList>) istream)
  "Deserializes a message object of type '<NamedPoseList>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'poses) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'poses)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'situation_assessment_msgs-msg:NamedPose))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NamedPoseList>)))
  "Returns string type for a message object of type '<NamedPoseList>"
  "situation_assessment_msgs/NamedPoseList")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NamedPoseList)))
  "Returns string type for a message object of type 'NamedPoseList"
  "situation_assessment_msgs/NamedPoseList")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NamedPoseList>)))
  "Returns md5sum for a message object of type '<NamedPoseList>"
  "f51355db5fbb7340b8ac6d2a18baad17")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NamedPoseList)))
  "Returns md5sum for a message object of type 'NamedPoseList"
  "f51355db5fbb7340b8ac6d2a18baad17")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NamedPoseList>)))
  "Returns full string definition for message of type '<NamedPoseList>"
  (cl:format cl:nil "NamedPose[] poses~%================================================================================~%MSG: situation_assessment_msgs/NamedPose~%string name~%string type~%geometry_msgs/Pose pose~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NamedPoseList)))
  "Returns full string definition for message of type 'NamedPoseList"
  (cl:format cl:nil "NamedPose[] poses~%================================================================================~%MSG: situation_assessment_msgs/NamedPose~%string name~%string type~%geometry_msgs/Pose pose~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NamedPoseList>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'poses) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NamedPoseList>))
  "Converts a ROS message object to a list"
  (cl:list 'NamedPoseList
    (cl:cons ':poses (poses msg))
))
