; Auto-generated. Do not edit!


(cl:in-package spencer_task_planner_msgs-msg)


;//! \htmlinclude GuidanceStatus.msg.html

(cl:defclass <GuidanceStatus> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:string
    :initform ""))
)

(cl:defclass GuidanceStatus (<GuidanceStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GuidanceStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GuidanceStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name spencer_task_planner_msgs-msg:<GuidanceStatus> is deprecated: use spencer_task_planner_msgs-msg:GuidanceStatus instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <GuidanceStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spencer_task_planner_msgs-msg:status-val is deprecated.  Use spencer_task_planner_msgs-msg:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<GuidanceStatus>)))
    "Constants for message type '<GuidanceStatus>"
  '((:APPROACHING_PERSON . approaching_person)
    (:GUIDING_PERSON . guiding_person)
    (:WAITING_FOR_PERSON . waiting_for_person)
    (:RETURNING_HOME . returning_home))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'GuidanceStatus)))
    "Constants for message type 'GuidanceStatus"
  '((:APPROACHING_PERSON . approaching_person)
    (:GUIDING_PERSON . guiding_person)
    (:WAITING_FOR_PERSON . waiting_for_person)
    (:RETURNING_HOME . returning_home))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GuidanceStatus>) ostream)
  "Serializes a message object of type '<GuidanceStatus>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'status))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GuidanceStatus>) istream)
  "Deserializes a message object of type '<GuidanceStatus>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'status) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GuidanceStatus>)))
  "Returns string type for a message object of type '<GuidanceStatus>"
  "spencer_task_planner_msgs/GuidanceStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GuidanceStatus)))
  "Returns string type for a message object of type 'GuidanceStatus"
  "spencer_task_planner_msgs/GuidanceStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GuidanceStatus>)))
  "Returns md5sum for a message object of type '<GuidanceStatus>"
  "0a840bebb777d577f6fdf550700c525f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GuidanceStatus)))
  "Returns md5sum for a message object of type 'GuidanceStatus"
  "0a840bebb777d577f6fdf550700c525f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GuidanceStatus>)))
  "Returns full string definition for message of type '<GuidanceStatus>"
  (cl:format cl:nil "string status~%~%# Use one of these constants for status:~%string APPROACHING_PERSON = approaching_person~%string GUIDING_PERSON = guiding_person~%string WAITING_FOR_PERSON = waiting_for_person~%string RETURNING_HOME = returning_home~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GuidanceStatus)))
  "Returns full string definition for message of type 'GuidanceStatus"
  (cl:format cl:nil "string status~%~%# Use one of these constants for status:~%string APPROACHING_PERSON = approaching_person~%string GUIDING_PERSON = guiding_person~%string WAITING_FOR_PERSON = waiting_for_person~%string RETURNING_HOME = returning_home~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GuidanceStatus>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'status))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GuidanceStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'GuidanceStatus
    (cl:cons ':status (status msg))
))
