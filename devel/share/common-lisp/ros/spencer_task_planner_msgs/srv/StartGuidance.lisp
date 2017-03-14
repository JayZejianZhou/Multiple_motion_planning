; Auto-generated. Do not edit!


(cl:in-package spencer_task_planner_msgs-srv)


;//! \htmlinclude StartGuidance-request.msg.html

(cl:defclass <StartGuidance-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass StartGuidance-request (<StartGuidance-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StartGuidance-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StartGuidance-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name spencer_task_planner_msgs-srv:<StartGuidance-request> is deprecated: use spencer_task_planner_msgs-srv:StartGuidance-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StartGuidance-request>) ostream)
  "Serializes a message object of type '<StartGuidance-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StartGuidance-request>) istream)
  "Deserializes a message object of type '<StartGuidance-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StartGuidance-request>)))
  "Returns string type for a service object of type '<StartGuidance-request>"
  "spencer_task_planner_msgs/StartGuidanceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StartGuidance-request)))
  "Returns string type for a service object of type 'StartGuidance-request"
  "spencer_task_planner_msgs/StartGuidanceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StartGuidance-request>)))
  "Returns md5sum for a message object of type '<StartGuidance-request>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StartGuidance-request)))
  "Returns md5sum for a message object of type 'StartGuidance-request"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StartGuidance-request>)))
  "Returns full string definition for message of type '<StartGuidance-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StartGuidance-request)))
  "Returns full string definition for message of type 'StartGuidance-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StartGuidance-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StartGuidance-request>))
  "Converts a ROS message object to a list"
  (cl:list 'StartGuidance-request
))
;//! \htmlinclude StartGuidance-response.msg.html

(cl:defclass <StartGuidance-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass StartGuidance-response (<StartGuidance-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StartGuidance-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StartGuidance-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name spencer_task_planner_msgs-srv:<StartGuidance-response> is deprecated: use spencer_task_planner_msgs-srv:StartGuidance-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StartGuidance-response>) ostream)
  "Serializes a message object of type '<StartGuidance-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StartGuidance-response>) istream)
  "Deserializes a message object of type '<StartGuidance-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StartGuidance-response>)))
  "Returns string type for a service object of type '<StartGuidance-response>"
  "spencer_task_planner_msgs/StartGuidanceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StartGuidance-response)))
  "Returns string type for a service object of type 'StartGuidance-response"
  "spencer_task_planner_msgs/StartGuidanceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StartGuidance-response>)))
  "Returns md5sum for a message object of type '<StartGuidance-response>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StartGuidance-response)))
  "Returns md5sum for a message object of type 'StartGuidance-response"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StartGuidance-response>)))
  "Returns full string definition for message of type '<StartGuidance-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StartGuidance-response)))
  "Returns full string definition for message of type 'StartGuidance-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StartGuidance-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StartGuidance-response>))
  "Converts a ROS message object to a list"
  (cl:list 'StartGuidance-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'StartGuidance)))
  'StartGuidance-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'StartGuidance)))
  'StartGuidance-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StartGuidance)))
  "Returns string type for a service object of type '<StartGuidance>"
  "spencer_task_planner_msgs/StartGuidance")