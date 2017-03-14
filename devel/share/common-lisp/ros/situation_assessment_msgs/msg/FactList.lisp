; Auto-generated. Do not edit!


(cl:in-package situation_assessment_msgs-msg)


;//! \htmlinclude FactList.msg.html

(cl:defclass <FactList> (roslisp-msg-protocol:ros-message)
  ((fact_list
    :reader fact_list
    :initarg :fact_list
    :type (cl:vector situation_assessment_msgs-msg:Fact)
   :initform (cl:make-array 0 :element-type 'situation_assessment_msgs-msg:Fact :initial-element (cl:make-instance 'situation_assessment_msgs-msg:Fact))))
)

(cl:defclass FactList (<FactList>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FactList>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FactList)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name situation_assessment_msgs-msg:<FactList> is deprecated: use situation_assessment_msgs-msg:FactList instead.")))

(cl:ensure-generic-function 'fact_list-val :lambda-list '(m))
(cl:defmethod fact_list-val ((m <FactList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader situation_assessment_msgs-msg:fact_list-val is deprecated.  Use situation_assessment_msgs-msg:fact_list instead.")
  (fact_list m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FactList>) ostream)
  "Serializes a message object of type '<FactList>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'fact_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'fact_list))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FactList>) istream)
  "Deserializes a message object of type '<FactList>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'fact_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'fact_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'situation_assessment_msgs-msg:Fact))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FactList>)))
  "Returns string type for a message object of type '<FactList>"
  "situation_assessment_msgs/FactList")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FactList)))
  "Returns string type for a message object of type 'FactList"
  "situation_assessment_msgs/FactList")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FactList>)))
  "Returns md5sum for a message object of type '<FactList>"
  "2f1e6f5a8a358f42b96541cf3161904d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FactList)))
  "Returns md5sum for a message object of type 'FactList"
  "2f1e6f5a8a358f42b96541cf3161904d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FactList>)))
  "Returns full string definition for message of type '<FactList>"
  (cl:format cl:nil "Fact[] fact_list~%================================================================================~%MSG: situation_assessment_msgs/Fact~%string model~%string subject~%string[] predicate~%string[] value~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FactList)))
  "Returns full string definition for message of type 'FactList"
  (cl:format cl:nil "Fact[] fact_list~%================================================================================~%MSG: situation_assessment_msgs/Fact~%string model~%string subject~%string[] predicate~%string[] value~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FactList>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'fact_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FactList>))
  "Converts a ROS message object to a list"
  (cl:list 'FactList
    (cl:cons ':fact_list (fact_list msg))
))
