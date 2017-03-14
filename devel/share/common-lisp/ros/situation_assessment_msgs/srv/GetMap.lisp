; Auto-generated. Do not edit!


(cl:in-package situation_assessment_msgs-srv)


;//! \htmlinclude GetMap-request.msg.html

(cl:defclass <GetMap-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetMap-request (<GetMap-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetMap-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetMap-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name situation_assessment_msgs-srv:<GetMap-request> is deprecated: use situation_assessment_msgs-srv:GetMap-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetMap-request>) ostream)
  "Serializes a message object of type '<GetMap-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetMap-request>) istream)
  "Deserializes a message object of type '<GetMap-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetMap-request>)))
  "Returns string type for a service object of type '<GetMap-request>"
  "situation_assessment_msgs/GetMapRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetMap-request)))
  "Returns string type for a service object of type 'GetMap-request"
  "situation_assessment_msgs/GetMapRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetMap-request>)))
  "Returns md5sum for a message object of type '<GetMap-request>"
  "aba73a71fb147c0d5f22018d68df9d81")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetMap-request)))
  "Returns md5sum for a message object of type 'GetMap-request"
  "aba73a71fb147c0d5f22018d68df9d81")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetMap-request>)))
  "Returns full string definition for message of type '<GetMap-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetMap-request)))
  "Returns full string definition for message of type 'GetMap-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetMap-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetMap-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetMap-request
))
;//! \htmlinclude GetMap-response.msg.html

(cl:defclass <GetMap-response> (roslisp-msg-protocol:ros-message)
  ((graph
    :reader graph
    :initarg :graph
    :type situation_assessment_msgs-msg:Graph
    :initform (cl:make-instance 'situation_assessment_msgs-msg:Graph)))
)

(cl:defclass GetMap-response (<GetMap-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetMap-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetMap-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name situation_assessment_msgs-srv:<GetMap-response> is deprecated: use situation_assessment_msgs-srv:GetMap-response instead.")))

(cl:ensure-generic-function 'graph-val :lambda-list '(m))
(cl:defmethod graph-val ((m <GetMap-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader situation_assessment_msgs-srv:graph-val is deprecated.  Use situation_assessment_msgs-srv:graph instead.")
  (graph m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetMap-response>) ostream)
  "Serializes a message object of type '<GetMap-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'graph) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetMap-response>) istream)
  "Deserializes a message object of type '<GetMap-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'graph) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetMap-response>)))
  "Returns string type for a service object of type '<GetMap-response>"
  "situation_assessment_msgs/GetMapResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetMap-response)))
  "Returns string type for a service object of type 'GetMap-response"
  "situation_assessment_msgs/GetMapResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetMap-response>)))
  "Returns md5sum for a message object of type '<GetMap-response>"
  "aba73a71fb147c0d5f22018d68df9d81")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetMap-response)))
  "Returns md5sum for a message object of type 'GetMap-response"
  "aba73a71fb147c0d5f22018d68df9d81")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetMap-response>)))
  "Returns full string definition for message of type '<GetMap-response>"
  (cl:format cl:nil "situation_assessment_msgs/Graph graph~%~%~%~%================================================================================~%MSG: situation_assessment_msgs/Graph~%situation_assessment_msgs/Node[] nodes~%situation_assessment_msgs/Edge[] edges~%~%================================================================================~%MSG: situation_assessment_msgs/Node~%string label~%situation_assessment_msgs/Property[] properties~%geometry_msgs/Point center~%geometry_msgs/Point[] vertexs~%~%~%================================================================================~%MSG: situation_assessment_msgs/Property~%string name~%int16 value~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: situation_assessment_msgs/Edge~%string source~%string destination~%situation_assessment_msgs/Property[] properties~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetMap-response)))
  "Returns full string definition for message of type 'GetMap-response"
  (cl:format cl:nil "situation_assessment_msgs/Graph graph~%~%~%~%================================================================================~%MSG: situation_assessment_msgs/Graph~%situation_assessment_msgs/Node[] nodes~%situation_assessment_msgs/Edge[] edges~%~%================================================================================~%MSG: situation_assessment_msgs/Node~%string label~%situation_assessment_msgs/Property[] properties~%geometry_msgs/Point center~%geometry_msgs/Point[] vertexs~%~%~%================================================================================~%MSG: situation_assessment_msgs/Property~%string name~%int16 value~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: situation_assessment_msgs/Edge~%string source~%string destination~%situation_assessment_msgs/Property[] properties~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetMap-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'graph))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetMap-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetMap-response
    (cl:cons ':graph (graph msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetMap)))
  'GetMap-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetMap)))
  'GetMap-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetMap)))
  "Returns string type for a service object of type '<GetMap>"
  "situation_assessment_msgs/GetMap")