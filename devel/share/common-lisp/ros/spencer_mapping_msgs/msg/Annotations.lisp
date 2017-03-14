; Auto-generated. Do not edit!


(cl:in-package spencer_mapping_msgs-msg)


;//! \htmlinclude Annotations.msg.html

(cl:defclass <Annotations> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (annotations
    :reader annotations
    :initarg :annotations
    :type (cl:vector spencer_mapping_msgs-msg:Annotation)
   :initform (cl:make-array 0 :element-type 'spencer_mapping_msgs-msg:Annotation :initial-element (cl:make-instance 'spencer_mapping_msgs-msg:Annotation))))
)

(cl:defclass Annotations (<Annotations>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Annotations>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Annotations)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name spencer_mapping_msgs-msg:<Annotations> is deprecated: use spencer_mapping_msgs-msg:Annotations instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Annotations>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spencer_mapping_msgs-msg:header-val is deprecated.  Use spencer_mapping_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'annotations-val :lambda-list '(m))
(cl:defmethod annotations-val ((m <Annotations>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spencer_mapping_msgs-msg:annotations-val is deprecated.  Use spencer_mapping_msgs-msg:annotations instead.")
  (annotations m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Annotations>) ostream)
  "Serializes a message object of type '<Annotations>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'annotations))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'annotations))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Annotations>) istream)
  "Deserializes a message object of type '<Annotations>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'annotations) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'annotations)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'spencer_mapping_msgs-msg:Annotation))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Annotations>)))
  "Returns string type for a message object of type '<Annotations>"
  "spencer_mapping_msgs/Annotations")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Annotations)))
  "Returns string type for a message object of type 'Annotations"
  "spencer_mapping_msgs/Annotations")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Annotations>)))
  "Returns md5sum for a message object of type '<Annotations>"
  "92f7880f522f3201d82282a091e78dab")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Annotations)))
  "Returns md5sum for a message object of type 'Annotations"
  "92f7880f522f3201d82282a091e78dab")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Annotations>)))
  "Returns full string definition for message of type '<Annotations>"
  (cl:format cl:nil "# Message with all current annotations in the map that should be reasoned about for~%# behavior related decisions~%~%Header           header             # Header containing timestamp etc. of this message~%Annotation[]     annotations        # All annotations in the currect map being used(even sub map)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: spencer_mapping_msgs/Annotation~%# Annotation in the map~%~%uint32 annot_id     # annotation ID~%string category     # class of annotation (e.g. TV, info-screen etc)~%string name         # name of annotation (e.g. TV1)~%~%geometry_msgs/Pose2D center         # Center together with orientation~%geometry_msgs/Point[] shape      # vertices of enclosing polygon~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Annotations)))
  "Returns full string definition for message of type 'Annotations"
  (cl:format cl:nil "# Message with all current annotations in the map that should be reasoned about for~%# behavior related decisions~%~%Header           header             # Header containing timestamp etc. of this message~%Annotation[]     annotations        # All annotations in the currect map being used(even sub map)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: spencer_mapping_msgs/Annotation~%# Annotation in the map~%~%uint32 annot_id     # annotation ID~%string category     # class of annotation (e.g. TV, info-screen etc)~%string name         # name of annotation (e.g. TV1)~%~%geometry_msgs/Pose2D center         # Center together with orientation~%geometry_msgs/Point[] shape      # vertices of enclosing polygon~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Annotations>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'annotations) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Annotations>))
  "Converts a ROS message object to a list"
  (cl:list 'Annotations
    (cl:cons ':header (header msg))
    (cl:cons ':annotations (annotations msg))
))
