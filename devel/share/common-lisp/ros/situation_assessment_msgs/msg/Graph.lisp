; Auto-generated. Do not edit!


(cl:in-package situation_assessment_msgs-msg)


;//! \htmlinclude Graph.msg.html

(cl:defclass <Graph> (roslisp-msg-protocol:ros-message)
  ((nodes
    :reader nodes
    :initarg :nodes
    :type (cl:vector situation_assessment_msgs-msg:Node)
   :initform (cl:make-array 0 :element-type 'situation_assessment_msgs-msg:Node :initial-element (cl:make-instance 'situation_assessment_msgs-msg:Node)))
   (edges
    :reader edges
    :initarg :edges
    :type (cl:vector situation_assessment_msgs-msg:Edge)
   :initform (cl:make-array 0 :element-type 'situation_assessment_msgs-msg:Edge :initial-element (cl:make-instance 'situation_assessment_msgs-msg:Edge))))
)

(cl:defclass Graph (<Graph>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Graph>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Graph)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name situation_assessment_msgs-msg:<Graph> is deprecated: use situation_assessment_msgs-msg:Graph instead.")))

(cl:ensure-generic-function 'nodes-val :lambda-list '(m))
(cl:defmethod nodes-val ((m <Graph>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader situation_assessment_msgs-msg:nodes-val is deprecated.  Use situation_assessment_msgs-msg:nodes instead.")
  (nodes m))

(cl:ensure-generic-function 'edges-val :lambda-list '(m))
(cl:defmethod edges-val ((m <Graph>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader situation_assessment_msgs-msg:edges-val is deprecated.  Use situation_assessment_msgs-msg:edges instead.")
  (edges m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Graph>) ostream)
  "Serializes a message object of type '<Graph>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'nodes))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'nodes))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'edges))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'edges))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Graph>) istream)
  "Deserializes a message object of type '<Graph>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'nodes) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'nodes)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'situation_assessment_msgs-msg:Node))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'edges) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'edges)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'situation_assessment_msgs-msg:Edge))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Graph>)))
  "Returns string type for a message object of type '<Graph>"
  "situation_assessment_msgs/Graph")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Graph)))
  "Returns string type for a message object of type 'Graph"
  "situation_assessment_msgs/Graph")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Graph>)))
  "Returns md5sum for a message object of type '<Graph>"
  "c54f65b68060a21a1df07bef0439baa5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Graph)))
  "Returns md5sum for a message object of type 'Graph"
  "c54f65b68060a21a1df07bef0439baa5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Graph>)))
  "Returns full string definition for message of type '<Graph>"
  (cl:format cl:nil "situation_assessment_msgs/Node[] nodes~%situation_assessment_msgs/Edge[] edges~%~%================================================================================~%MSG: situation_assessment_msgs/Node~%string label~%situation_assessment_msgs/Property[] properties~%geometry_msgs/Point center~%geometry_msgs/Point[] vertexs~%~%~%================================================================================~%MSG: situation_assessment_msgs/Property~%string name~%int16 value~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: situation_assessment_msgs/Edge~%string source~%string destination~%situation_assessment_msgs/Property[] properties~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Graph)))
  "Returns full string definition for message of type 'Graph"
  (cl:format cl:nil "situation_assessment_msgs/Node[] nodes~%situation_assessment_msgs/Edge[] edges~%~%================================================================================~%MSG: situation_assessment_msgs/Node~%string label~%situation_assessment_msgs/Property[] properties~%geometry_msgs/Point center~%geometry_msgs/Point[] vertexs~%~%~%================================================================================~%MSG: situation_assessment_msgs/Property~%string name~%int16 value~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: situation_assessment_msgs/Edge~%string source~%string destination~%situation_assessment_msgs/Property[] properties~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Graph>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'nodes) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'edges) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Graph>))
  "Converts a ROS message object to a list"
  (cl:list 'Graph
    (cl:cons ':nodes (nodes msg))
    (cl:cons ':edges (edges msg))
))
