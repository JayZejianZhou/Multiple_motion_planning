; Auto-generated. Do not edit!


(cl:in-package spencer_nav_msgs-srv)


;//! \htmlinclude StopDriving-request.msg.html

(cl:defclass <StopDriving-request> (roslisp-msg-protocol:ros-message)
  ((stop
    :reader stop
    :initarg :stop
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass StopDriving-request (<StopDriving-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StopDriving-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StopDriving-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name spencer_nav_msgs-srv:<StopDriving-request> is deprecated: use spencer_nav_msgs-srv:StopDriving-request instead.")))

(cl:ensure-generic-function 'stop-val :lambda-list '(m))
(cl:defmethod stop-val ((m <StopDriving-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spencer_nav_msgs-srv:stop-val is deprecated.  Use spencer_nav_msgs-srv:stop instead.")
  (stop m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StopDriving-request>) ostream)
  "Serializes a message object of type '<StopDriving-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'stop) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StopDriving-request>) istream)
  "Deserializes a message object of type '<StopDriving-request>"
    (cl:setf (cl:slot-value msg 'stop) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StopDriving-request>)))
  "Returns string type for a service object of type '<StopDriving-request>"
  "spencer_nav_msgs/StopDrivingRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StopDriving-request)))
  "Returns string type for a service object of type 'StopDriving-request"
  "spencer_nav_msgs/StopDrivingRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StopDriving-request>)))
  "Returns md5sum for a message object of type '<StopDriving-request>"
  "71f1172402e56b82716ca71681cded6b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StopDriving-request)))
  "Returns md5sum for a message object of type 'StopDriving-request"
  "71f1172402e56b82716ca71681cded6b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StopDriving-request>)))
  "Returns full string definition for message of type '<StopDriving-request>"
  (cl:format cl:nil "bool    stop~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StopDriving-request)))
  "Returns full string definition for message of type 'StopDriving-request"
  (cl:format cl:nil "bool    stop~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StopDriving-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StopDriving-request>))
  "Converts a ROS message object to a list"
  (cl:list 'StopDriving-request
    (cl:cons ':stop (stop msg))
))
;//! \htmlinclude StopDriving-response.msg.html

(cl:defclass <StopDriving-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass StopDriving-response (<StopDriving-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StopDriving-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StopDriving-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name spencer_nav_msgs-srv:<StopDriving-response> is deprecated: use spencer_nav_msgs-srv:StopDriving-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StopDriving-response>) ostream)
  "Serializes a message object of type '<StopDriving-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StopDriving-response>) istream)
  "Deserializes a message object of type '<StopDriving-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StopDriving-response>)))
  "Returns string type for a service object of type '<StopDriving-response>"
  "spencer_nav_msgs/StopDrivingResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StopDriving-response)))
  "Returns string type for a service object of type 'StopDriving-response"
  "spencer_nav_msgs/StopDrivingResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StopDriving-response>)))
  "Returns md5sum for a message object of type '<StopDriving-response>"
  "71f1172402e56b82716ca71681cded6b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StopDriving-response)))
  "Returns md5sum for a message object of type 'StopDriving-response"
  "71f1172402e56b82716ca71681cded6b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StopDriving-response>)))
  "Returns full string definition for message of type '<StopDriving-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StopDriving-response)))
  "Returns full string definition for message of type 'StopDriving-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StopDriving-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StopDriving-response>))
  "Converts a ROS message object to a list"
  (cl:list 'StopDriving-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'StopDriving)))
  'StopDriving-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'StopDriving)))
  'StopDriving-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StopDriving)))
  "Returns string type for a service object of type '<StopDriving>"
  "spencer_nav_msgs/StopDriving")