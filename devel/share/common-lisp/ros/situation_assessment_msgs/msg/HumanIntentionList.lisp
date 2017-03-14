; Auto-generated. Do not edit!


(cl:in-package situation_assessment_msgs-msg)


;//! \htmlinclude HumanIntentionList.msg.html

(cl:defclass <HumanIntentionList> (roslisp-msg-protocol:ros-message)
  ((intention_list
    :reader intention_list
    :initarg :intention_list
    :type (cl:vector situation_assessment_msgs-msg:HumanIntention)
   :initform (cl:make-array 0 :element-type 'situation_assessment_msgs-msg:HumanIntention :initial-element (cl:make-instance 'situation_assessment_msgs-msg:HumanIntention))))
)

(cl:defclass HumanIntentionList (<HumanIntentionList>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HumanIntentionList>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HumanIntentionList)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name situation_assessment_msgs-msg:<HumanIntentionList> is deprecated: use situation_assessment_msgs-msg:HumanIntentionList instead.")))

(cl:ensure-generic-function 'intention_list-val :lambda-list '(m))
(cl:defmethod intention_list-val ((m <HumanIntentionList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader situation_assessment_msgs-msg:intention_list-val is deprecated.  Use situation_assessment_msgs-msg:intention_list instead.")
  (intention_list m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HumanIntentionList>) ostream)
  "Serializes a message object of type '<HumanIntentionList>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'intention_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'intention_list))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HumanIntentionList>) istream)
  "Deserializes a message object of type '<HumanIntentionList>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'intention_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'intention_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'situation_assessment_msgs-msg:HumanIntention))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HumanIntentionList>)))
  "Returns string type for a message object of type '<HumanIntentionList>"
  "situation_assessment_msgs/HumanIntentionList")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HumanIntentionList)))
  "Returns string type for a message object of type 'HumanIntentionList"
  "situation_assessment_msgs/HumanIntentionList")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HumanIntentionList>)))
  "Returns md5sum for a message object of type '<HumanIntentionList>"
  "2a92b36ed1214db8fa19a128a000085a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HumanIntentionList)))
  "Returns md5sum for a message object of type 'HumanIntentionList"
  "2a92b36ed1214db8fa19a128a000085a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HumanIntentionList>)))
  "Returns full string definition for message of type '<HumanIntentionList>"
  (cl:format cl:nil "HumanIntention[] intention_list~%================================================================================~%MSG: situation_assessment_msgs/HumanIntention~%string name~%string intention~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HumanIntentionList)))
  "Returns full string definition for message of type 'HumanIntentionList"
  (cl:format cl:nil "HumanIntention[] intention_list~%================================================================================~%MSG: situation_assessment_msgs/HumanIntention~%string name~%string intention~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HumanIntentionList>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'intention_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HumanIntentionList>))
  "Converts a ROS message object to a list"
  (cl:list 'HumanIntentionList
    (cl:cons ':intention_list (intention_list msg))
))
