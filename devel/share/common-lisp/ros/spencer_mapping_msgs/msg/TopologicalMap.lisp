; Auto-generated. Do not edit!


(cl:in-package spencer_mapping_msgs-msg)


;//! \htmlinclude TopologicalMap.msg.html

(cl:defclass <TopologicalMap> (roslisp-msg-protocol:ros-message)
  ((nodes
    :reader nodes
    :initarg :nodes
    :type (cl:vector spencer_mapping_msgs-msg:TopologicalMapNode)
   :initform (cl:make-array 0 :element-type 'spencer_mapping_msgs-msg:TopologicalMapNode :initial-element (cl:make-instance 'spencer_mapping_msgs-msg:TopologicalMapNode)))
   (edges
    :reader edges
    :initarg :edges
    :type (cl:vector spencer_mapping_msgs-msg:TopologicalMapEdge)
   :initform (cl:make-array 0 :element-type 'spencer_mapping_msgs-msg:TopologicalMapEdge :initial-element (cl:make-instance 'spencer_mapping_msgs-msg:TopologicalMapEdge))))
)

(cl:defclass TopologicalMap (<TopologicalMap>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TopologicalMap>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TopologicalMap)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name spencer_mapping_msgs-msg:<TopologicalMap> is deprecated: use spencer_mapping_msgs-msg:TopologicalMap instead.")))

(cl:ensure-generic-function 'nodes-val :lambda-list '(m))
(cl:defmethod nodes-val ((m <TopologicalMap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spencer_mapping_msgs-msg:nodes-val is deprecated.  Use spencer_mapping_msgs-msg:nodes instead.")
  (nodes m))

(cl:ensure-generic-function 'edges-val :lambda-list '(m))
(cl:defmethod edges-val ((m <TopologicalMap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spencer_mapping_msgs-msg:edges-val is deprecated.  Use spencer_mapping_msgs-msg:edges instead.")
  (edges m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TopologicalMap>) ostream)
  "Serializes a message object of type '<TopologicalMap>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TopologicalMap>) istream)
  "Deserializes a message object of type '<TopologicalMap>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'nodes) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'nodes)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'spencer_mapping_msgs-msg:TopologicalMapNode))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'edges) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'edges)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'spencer_mapping_msgs-msg:TopologicalMapEdge))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TopologicalMap>)))
  "Returns string type for a message object of type '<TopologicalMap>"
  "spencer_mapping_msgs/TopologicalMap")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TopologicalMap)))
  "Returns string type for a message object of type 'TopologicalMap"
  "spencer_mapping_msgs/TopologicalMap")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TopologicalMap>)))
  "Returns md5sum for a message object of type '<TopologicalMap>"
  "36ff17f5e065879348b7145dbd6ef195")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TopologicalMap)))
  "Returns md5sum for a message object of type 'TopologicalMap"
  "36ff17f5e065879348b7145dbd6ef195")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TopologicalMap>)))
  "Returns full string definition for message of type '<TopologicalMap>"
  (cl:format cl:nil "# This format is adapted from the Fuerte topological_navigation stack.~%~%# A 2d topological map consists of a set of local occupancy grids together with~%# the transformations between coordinate frames of overlapping grids.  This ROS~%# message represents the structure of the topological map, i.e., all the ~%# information except the grids themselves.  You can get individual grids by~%# calling the GetLocalGrid service on the mapper.~%~%TopologicalMapNode[] nodes~%TopologicalMapEdge[] edges~%~%================================================================================~%MSG: spencer_mapping_msgs/TopologicalMapNode~%# This format is adapted from the Fuerte topological_navigation stack.~%~%# Info stored with a node in a 2d topological map~%~%# Id of this node in the topological map~%uint32 id~%~%# position in the global map~%geometry_msgs/Point position~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: spencer_mapping_msgs/TopologicalMapEdge~%# This format is adapted from the Fuerte topological_navigation stack.~%~%# Info stored with an edge in the topological map~%~%# Id of this edge in the topological map~%uint32 id~%~%# Id of the source node~%uint32 src~%~%# Id of the destination node~%uint32 dest~%~%# Costs of this edge~%float32[] cost~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TopologicalMap)))
  "Returns full string definition for message of type 'TopologicalMap"
  (cl:format cl:nil "# This format is adapted from the Fuerte topological_navigation stack.~%~%# A 2d topological map consists of a set of local occupancy grids together with~%# the transformations between coordinate frames of overlapping grids.  This ROS~%# message represents the structure of the topological map, i.e., all the ~%# information except the grids themselves.  You can get individual grids by~%# calling the GetLocalGrid service on the mapper.~%~%TopologicalMapNode[] nodes~%TopologicalMapEdge[] edges~%~%================================================================================~%MSG: spencer_mapping_msgs/TopologicalMapNode~%# This format is adapted from the Fuerte topological_navigation stack.~%~%# Info stored with a node in a 2d topological map~%~%# Id of this node in the topological map~%uint32 id~%~%# position in the global map~%geometry_msgs/Point position~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: spencer_mapping_msgs/TopologicalMapEdge~%# This format is adapted from the Fuerte topological_navigation stack.~%~%# Info stored with an edge in the topological map~%~%# Id of this edge in the topological map~%uint32 id~%~%# Id of the source node~%uint32 src~%~%# Id of the destination node~%uint32 dest~%~%# Costs of this edge~%float32[] cost~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TopologicalMap>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'nodes) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'edges) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TopologicalMap>))
  "Converts a ROS message object to a list"
  (cl:list 'TopologicalMap
    (cl:cons ':nodes (nodes msg))
    (cl:cons ':edges (edges msg))
))
