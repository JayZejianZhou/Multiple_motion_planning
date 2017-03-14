; Auto-generated. Do not edit!


(cl:in-package spencer_task_planner_msgs-srv)


;//! \htmlinclude GoHome-request.msg.html

(cl:defclass <GoHome-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GoHome-request (<GoHome-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GoHome-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GoHome-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name spencer_task_planner_msgs-srv:<GoHome-request> is deprecated: use spencer_task_planner_msgs-srv:GoHome-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GoHome-request>) ostream)
  "Serializes a message object of type '<GoHome-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GoHome-request>) istream)
  "Deserializes a message object of type '<GoHome-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GoHome-request>)))
  "Returns string type for a service object of type '<GoHome-request>"
  "spencer_task_planner_msgs/GoHomeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GoHome-request)))
  "Returns string type for a service object of type 'GoHome-request"
  "spencer_task_planner_msgs/GoHomeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GoHome-request>)))
  "Returns md5sum for a message object of type '<GoHome-request>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GoHome-request)))
  "Returns md5sum for a message object of type 'GoHome-request"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GoHome-request>)))
  "Returns full string definition for message of type '<GoHome-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GoHome-request)))
  "Returns full string definition for message of type 'GoHome-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GoHome-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GoHome-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GoHome-request
))
;//! \htmlinclude GoHome-response.msg.html

(cl:defclass <GoHome-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GoHome-response (<GoHome-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GoHome-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GoHome-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name spencer_task_planner_msgs-srv:<GoHome-response> is deprecated: use spencer_task_planner_msgs-srv:GoHome-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GoHome-response>) ostream)
  "Serializes a message object of type '<GoHome-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GoHome-response>) istream)
  "Deserializes a message object of type '<GoHome-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GoHome-response>)))
  "Returns string type for a service object of type '<GoHome-response>"
  "spencer_task_planner_msgs/GoHomeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GoHome-response)))
  "Returns string type for a service object of type 'GoHome-response"
  "spencer_task_planner_msgs/GoHomeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GoHome-response>)))
  "Returns md5sum for a message object of type '<GoHome-response>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GoHome-response)))
  "Returns md5sum for a message object of type 'GoHome-response"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GoHome-response>)))
  "Returns full string definition for message of type '<GoHome-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GoHome-response)))
  "Returns full string definition for message of type 'GoHome-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GoHome-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GoHome-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GoHome-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GoHome)))
  'GoHome-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GoHome)))
  'GoHome-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GoHome)))
  "Returns string type for a service object of type '<GoHome>"
  "spencer_task_planner_msgs/GoHome")