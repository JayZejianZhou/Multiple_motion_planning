; Auto-generated. Do not edit!


(cl:in-package animated_marker_msgs-msg)


;//! \htmlinclude AnimatedMarker.msg.html

(cl:defclass <AnimatedMarker> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (ns
    :reader ns
    :initarg :ns
    :type cl:string
    :initform "")
   (id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (type
    :reader type
    :initarg :type
    :type cl:integer
    :initform 0)
   (action
    :reader action
    :initarg :action
    :type cl:integer
    :initform 0)
   (pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (scale
    :reader scale
    :initarg :scale
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (color
    :reader color
    :initarg :color
    :type std_msgs-msg:ColorRGBA
    :initform (cl:make-instance 'std_msgs-msg:ColorRGBA))
   (lifetime
    :reader lifetime
    :initarg :lifetime
    :type cl:real
    :initform 0)
   (frame_locked
    :reader frame_locked
    :initarg :frame_locked
    :type cl:boolean
    :initform cl:nil)
   (animation_speed
    :reader animation_speed
    :initarg :animation_speed
    :type cl:float
    :initform 0.0)
   (mesh_resource
    :reader mesh_resource
    :initarg :mesh_resource
    :type cl:string
    :initform "")
   (mesh_use_embedded_materials
    :reader mesh_use_embedded_materials
    :initarg :mesh_use_embedded_materials
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass AnimatedMarker (<AnimatedMarker>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AnimatedMarker>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AnimatedMarker)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name animated_marker_msgs-msg:<AnimatedMarker> is deprecated: use animated_marker_msgs-msg:AnimatedMarker instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <AnimatedMarker>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader animated_marker_msgs-msg:header-val is deprecated.  Use animated_marker_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'ns-val :lambda-list '(m))
(cl:defmethod ns-val ((m <AnimatedMarker>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader animated_marker_msgs-msg:ns-val is deprecated.  Use animated_marker_msgs-msg:ns instead.")
  (ns m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <AnimatedMarker>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader animated_marker_msgs-msg:id-val is deprecated.  Use animated_marker_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <AnimatedMarker>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader animated_marker_msgs-msg:type-val is deprecated.  Use animated_marker_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'action-val :lambda-list '(m))
(cl:defmethod action-val ((m <AnimatedMarker>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader animated_marker_msgs-msg:action-val is deprecated.  Use animated_marker_msgs-msg:action instead.")
  (action m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <AnimatedMarker>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader animated_marker_msgs-msg:pose-val is deprecated.  Use animated_marker_msgs-msg:pose instead.")
  (pose m))

(cl:ensure-generic-function 'scale-val :lambda-list '(m))
(cl:defmethod scale-val ((m <AnimatedMarker>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader animated_marker_msgs-msg:scale-val is deprecated.  Use animated_marker_msgs-msg:scale instead.")
  (scale m))

(cl:ensure-generic-function 'color-val :lambda-list '(m))
(cl:defmethod color-val ((m <AnimatedMarker>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader animated_marker_msgs-msg:color-val is deprecated.  Use animated_marker_msgs-msg:color instead.")
  (color m))

(cl:ensure-generic-function 'lifetime-val :lambda-list '(m))
(cl:defmethod lifetime-val ((m <AnimatedMarker>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader animated_marker_msgs-msg:lifetime-val is deprecated.  Use animated_marker_msgs-msg:lifetime instead.")
  (lifetime m))

(cl:ensure-generic-function 'frame_locked-val :lambda-list '(m))
(cl:defmethod frame_locked-val ((m <AnimatedMarker>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader animated_marker_msgs-msg:frame_locked-val is deprecated.  Use animated_marker_msgs-msg:frame_locked instead.")
  (frame_locked m))

(cl:ensure-generic-function 'animation_speed-val :lambda-list '(m))
(cl:defmethod animation_speed-val ((m <AnimatedMarker>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader animated_marker_msgs-msg:animation_speed-val is deprecated.  Use animated_marker_msgs-msg:animation_speed instead.")
  (animation_speed m))

(cl:ensure-generic-function 'mesh_resource-val :lambda-list '(m))
(cl:defmethod mesh_resource-val ((m <AnimatedMarker>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader animated_marker_msgs-msg:mesh_resource-val is deprecated.  Use animated_marker_msgs-msg:mesh_resource instead.")
  (mesh_resource m))

(cl:ensure-generic-function 'mesh_use_embedded_materials-val :lambda-list '(m))
(cl:defmethod mesh_use_embedded_materials-val ((m <AnimatedMarker>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader animated_marker_msgs-msg:mesh_use_embedded_materials-val is deprecated.  Use animated_marker_msgs-msg:mesh_use_embedded_materials instead.")
  (mesh_use_embedded_materials m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<AnimatedMarker>)))
    "Constants for message type '<AnimatedMarker>"
  '((:MESH_RESOURCE . 10)
    (:ADD . 0)
    (:MODIFY . 0)
    (:DELETE . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'AnimatedMarker)))
    "Constants for message type 'AnimatedMarker"
  '((:MESH_RESOURCE . 10)
    (:ADD . 0)
    (:MODIFY . 0)
    (:DELETE . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AnimatedMarker>) ostream)
  "Serializes a message object of type '<AnimatedMarker>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'ns))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'ns))
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'action)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'scale) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'color) ostream)
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'lifetime)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'lifetime) (cl:floor (cl:slot-value msg 'lifetime)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'frame_locked) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'animation_speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'mesh_resource))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'mesh_resource))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'mesh_use_embedded_materials) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AnimatedMarker>) istream)
  "Deserializes a message object of type '<AnimatedMarker>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ns) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'ns) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'action) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'scale) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'color) istream)
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'lifetime) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:setf (cl:slot-value msg 'frame_locked) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'animation_speed) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mesh_resource) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'mesh_resource) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'mesh_use_embedded_materials) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AnimatedMarker>)))
  "Returns string type for a message object of type '<AnimatedMarker>"
  "animated_marker_msgs/AnimatedMarker")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AnimatedMarker)))
  "Returns string type for a message object of type 'AnimatedMarker"
  "animated_marker_msgs/AnimatedMarker")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AnimatedMarker>)))
  "Returns md5sum for a message object of type '<AnimatedMarker>"
  "0793785795b7b45c57536eb594e32631")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AnimatedMarker)))
  "Returns md5sum for a message object of type 'AnimatedMarker"
  "0793785795b7b45c57536eb594e32631")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AnimatedMarker>)))
  "Returns full string definition for message of type '<AnimatedMarker>"
  (cl:format cl:nil "# See http://www.ros.org/wiki/rviz/DisplayTypes/Marker and http://www.ros.org/wiki/rviz/Tutorials/Markers%3A%20Basic%20Shapes for more information on using this message with rviz~%~%uint8 MESH_RESOURCE=10~%~%uint8 ADD=0~%uint8 MODIFY=0~%uint8 DELETE=2~%#uint8 DELETEALL=3 # TODO: enable for ROS-J, disabled for now but functionality is still there. Allows one to clear all markers in plugin~%~%Header header                        # header for time/frame information~%string ns                            # Namespace to place this object in... used in conjunction with id to create a unique name for the object~%int32 id 		                         # object ID useful in conjunction with the namespace for manipulating and deleting the object later~%int32 type 		                       # Type of object~%int32 action 	                       # 0 add/modify an object, 1 (deprecated), 2 deletes an object, 3 deletes all objects~%geometry_msgs/Pose pose                 # Pose of the object~%geometry_msgs/Vector3 scale             # Scale of the object 1,1,1 means default (usually 1 meter square)~%std_msgs/ColorRGBA color             # Color [0.0-1.0]~%duration lifetime                    # How long the object should last before being automatically deleted.  0 means forever~%bool frame_locked                    # If this marker should be frame-locked, i.e. retransformed into its frame every timestep~%~%float32 animation_speed              # Speed of animation, 1.0 is default~%~%# NOTE: only used for MESH_RESOURCE markers~%string mesh_resource~%bool mesh_use_embedded_materials~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: std_msgs/ColorRGBA~%float32 r~%float32 g~%float32 b~%float32 a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AnimatedMarker)))
  "Returns full string definition for message of type 'AnimatedMarker"
  (cl:format cl:nil "# See http://www.ros.org/wiki/rviz/DisplayTypes/Marker and http://www.ros.org/wiki/rviz/Tutorials/Markers%3A%20Basic%20Shapes for more information on using this message with rviz~%~%uint8 MESH_RESOURCE=10~%~%uint8 ADD=0~%uint8 MODIFY=0~%uint8 DELETE=2~%#uint8 DELETEALL=3 # TODO: enable for ROS-J, disabled for now but functionality is still there. Allows one to clear all markers in plugin~%~%Header header                        # header for time/frame information~%string ns                            # Namespace to place this object in... used in conjunction with id to create a unique name for the object~%int32 id 		                         # object ID useful in conjunction with the namespace for manipulating and deleting the object later~%int32 type 		                       # Type of object~%int32 action 	                       # 0 add/modify an object, 1 (deprecated), 2 deletes an object, 3 deletes all objects~%geometry_msgs/Pose pose                 # Pose of the object~%geometry_msgs/Vector3 scale             # Scale of the object 1,1,1 means default (usually 1 meter square)~%std_msgs/ColorRGBA color             # Color [0.0-1.0]~%duration lifetime                    # How long the object should last before being automatically deleted.  0 means forever~%bool frame_locked                    # If this marker should be frame-locked, i.e. retransformed into its frame every timestep~%~%float32 animation_speed              # Speed of animation, 1.0 is default~%~%# NOTE: only used for MESH_RESOURCE markers~%string mesh_resource~%bool mesh_use_embedded_materials~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: std_msgs/ColorRGBA~%float32 r~%float32 g~%float32 b~%float32 a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AnimatedMarker>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'ns))
     4
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'scale))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'color))
     8
     1
     4
     4 (cl:length (cl:slot-value msg 'mesh_resource))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AnimatedMarker>))
  "Converts a ROS message object to a list"
  (cl:list 'AnimatedMarker
    (cl:cons ':header (header msg))
    (cl:cons ':ns (ns msg))
    (cl:cons ':id (id msg))
    (cl:cons ':type (type msg))
    (cl:cons ':action (action msg))
    (cl:cons ':pose (pose msg))
    (cl:cons ':scale (scale msg))
    (cl:cons ':color (color msg))
    (cl:cons ':lifetime (lifetime msg))
    (cl:cons ':frame_locked (frame_locked msg))
    (cl:cons ':animation_speed (animation_speed msg))
    (cl:cons ':mesh_resource (mesh_resource msg))
    (cl:cons ':mesh_use_embedded_materials (mesh_use_embedded_materials msg))
))
