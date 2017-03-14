; Auto-generated. Do not edit!


(cl:in-package spencer_nav_msgs-msg)


;//! \htmlinclude NavigationPlanRequestTopological.msg.html

(cl:defclass <NavigationPlanRequestTopological> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (start
    :reader start
    :initarg :start
    :type spencer_mapping_msgs-msg:TopologicalMapNode
    :initform (cl:make-instance 'spencer_mapping_msgs-msg:TopologicalMapNode))
   (goal
    :reader goal
    :initarg :goal
    :type spencer_mapping_msgs-msg:TopologicalMapNode
    :initform (cl:make-instance 'spencer_mapping_msgs-msg:TopologicalMapNode))
   (detectedPersons
    :reader detectedPersons
    :initarg :detectedPersons
    :type spencer_tracking_msgs-msg:DetectedPersons
    :initform (cl:make-instance 'spencer_tracking_msgs-msg:DetectedPersons))
   (trackedPersons
    :reader trackedPersons
    :initarg :trackedPersons
    :type spencer_tracking_msgs-msg:TrackedPersons
    :initform (cl:make-instance 'spencer_tracking_msgs-msg:TrackedPersons))
   (trackedGroups
    :reader trackedGroups
    :initarg :trackedGroups
    :type spencer_tracking_msgs-msg:TrackedGroups
    :initform (cl:make-instance 'spencer_tracking_msgs-msg:TrackedGroups))
   (params
    :reader params
    :initarg :params
    :type spencer_nav_msgs-msg:NavParams
    :initform (cl:make-instance 'spencer_nav_msgs-msg:NavParams)))
)

(cl:defclass NavigationPlanRequestTopological (<NavigationPlanRequestTopological>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NavigationPlanRequestTopological>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NavigationPlanRequestTopological)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name spencer_nav_msgs-msg:<NavigationPlanRequestTopological> is deprecated: use spencer_nav_msgs-msg:NavigationPlanRequestTopological instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <NavigationPlanRequestTopological>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spencer_nav_msgs-msg:header-val is deprecated.  Use spencer_nav_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'start-val :lambda-list '(m))
(cl:defmethod start-val ((m <NavigationPlanRequestTopological>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spencer_nav_msgs-msg:start-val is deprecated.  Use spencer_nav_msgs-msg:start instead.")
  (start m))

(cl:ensure-generic-function 'goal-val :lambda-list '(m))
(cl:defmethod goal-val ((m <NavigationPlanRequestTopological>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spencer_nav_msgs-msg:goal-val is deprecated.  Use spencer_nav_msgs-msg:goal instead.")
  (goal m))

(cl:ensure-generic-function 'detectedPersons-val :lambda-list '(m))
(cl:defmethod detectedPersons-val ((m <NavigationPlanRequestTopological>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spencer_nav_msgs-msg:detectedPersons-val is deprecated.  Use spencer_nav_msgs-msg:detectedPersons instead.")
  (detectedPersons m))

(cl:ensure-generic-function 'trackedPersons-val :lambda-list '(m))
(cl:defmethod trackedPersons-val ((m <NavigationPlanRequestTopological>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spencer_nav_msgs-msg:trackedPersons-val is deprecated.  Use spencer_nav_msgs-msg:trackedPersons instead.")
  (trackedPersons m))

(cl:ensure-generic-function 'trackedGroups-val :lambda-list '(m))
(cl:defmethod trackedGroups-val ((m <NavigationPlanRequestTopological>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spencer_nav_msgs-msg:trackedGroups-val is deprecated.  Use spencer_nav_msgs-msg:trackedGroups instead.")
  (trackedGroups m))

(cl:ensure-generic-function 'params-val :lambda-list '(m))
(cl:defmethod params-val ((m <NavigationPlanRequestTopological>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader spencer_nav_msgs-msg:params-val is deprecated.  Use spencer_nav_msgs-msg:params instead.")
  (params m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NavigationPlanRequestTopological>) ostream)
  "Serializes a message object of type '<NavigationPlanRequestTopological>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'start) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'detectedPersons) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'trackedPersons) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'trackedGroups) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'params) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NavigationPlanRequestTopological>) istream)
  "Deserializes a message object of type '<NavigationPlanRequestTopological>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'start) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'detectedPersons) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'trackedPersons) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'trackedGroups) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'params) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NavigationPlanRequestTopological>)))
  "Returns string type for a message object of type '<NavigationPlanRequestTopological>"
  "spencer_nav_msgs/NavigationPlanRequestTopological")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NavigationPlanRequestTopological)))
  "Returns string type for a message object of type 'NavigationPlanRequestTopological"
  "spencer_nav_msgs/NavigationPlanRequestTopological")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NavigationPlanRequestTopological>)))
  "Returns md5sum for a message object of type '<NavigationPlanRequestTopological>"
  "bdf33f222874d371fce6c706611c4e29")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NavigationPlanRequestTopological)))
  "Returns md5sum for a message object of type 'NavigationPlanRequestTopological"
  "bdf33f222874d371fce6c706611c4e29")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NavigationPlanRequestTopological>)))
  "Returns full string definition for message of type '<NavigationPlanRequestTopological>"
  (cl:format cl:nil "# message defining a planning request to motion planner from task planner~%~%# TODO: Is this message definition deprecated!?~%# I believe move_base uses a PoseStamped (on a separate topic) to specify the goal;~%# the other information (tracked persons etc.) are published on separate topics anyway,~%# so it probably does not make much sense to include them here. --Timm~%~%Header header~%spencer_mapping_msgs/TopologicalMapNode  start		# start node~%spencer_mapping_msgs/TopologicalMapNode  goal		# goal node~%spencer_tracking_msgs/DetectedPersons detectedPersons	# detected persons from perception~%spencer_tracking_msgs/TrackedPersons trackedPersons	# tracked persons from perception~%spencer_tracking_msgs/TrackedGroups trackedGroups	# tracked groups ~%NavParams params					# parameters / strategies fror motion planner to adapt to~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: spencer_mapping_msgs/TopologicalMapNode~%# This format is adapted from the Fuerte topological_navigation stack.~%~%# Info stored with a node in a 2d topological map~%~%# Id of this node in the topological map~%uint32 id~%~%# position in the global map~%geometry_msgs/Point position~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: spencer_tracking_msgs/DetectedPersons~%# Message with all currently detected persons~%#~%~%Header                  header          # Header containing timestamp etc. of this message~%DetectedPerson[]        detections      # All persons that are currently being detected~%================================================================================~%MSG: spencer_tracking_msgs/DetectedPerson~%# Message describing a detection of a person~%#~%~%# Unique id of the detection, monotonically increasing over time~%uint64          detection_id~%~%# (Pseudo-)probabilistic value between 0.0 and 1.0 describing the detector's confidence in the detection~%float64         confidence~%~%# 3D pose (position + orientation) of the *center* of the detection~%# check covariance to see which dimensions are actually set! unset dimensions shall have a covariance > 9999~%geometry_msgs/PoseWithCovariance    pose    ~%~%# Sensor modality / detector type, see example constants below. ~%# used e.g. later in tracking to check which tracks have been visually confirmed~%string          modality            ~%~%                                    ~%string          MODALITY_GENERIC_LASER_2D = laser2d~%string          MODALITY_GENERIC_LASER_3D = laser3d~%string          MODALITY_GENERIC_MONOCULAR_VISION = mono~%string          MODALITY_GENERIC_STEREO_VISION = stereo~%string          MODALITY_GENERIC_RGBD = rgbd~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: spencer_tracking_msgs/TrackedPersons~%# Message with all currently tracked persons ~%#~%~%Header              header      # Header containing timestamp etc. of this message~%TrackedPerson[]     tracks      # All persons that are currently being tracked~%================================================================================~%MSG: spencer_tracking_msgs/TrackedPerson~%# Message defining a tracked person~%#~%~%uint64      track_id        # unique identifier of the target, consistent over time~%bool        is_occluded     # if the track is currently not observable in a physical way~%bool        is_matched      # if the track is currently matched by a detection~%uint64      detection_id    # id of the corresponding detection in the current cycle (undefined if occluded)~%duration    age             # age of the track~%~%# The following fields are extracted from the Kalman state x and its covariance C~%~%geometry_msgs/PoseWithCovariance       pose   # pose of the track (z value and orientation might not be set, check if corresponding variance on diagonal is > 99999)~%~%geometry_msgs/TwistWithCovariance   twist     # velocity of the track (z value and rotational velocities might not be set, check if corresponding variance on diagonal is > 99999)~%~%================================================================================~%MSG: geometry_msgs/TwistWithCovariance~%# This expresses velocity in free space with uncertainty.~%~%Twist twist~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: spencer_tracking_msgs/TrackedGroups~%# Message with all currently tracked groups ~%#~%~%Header              header      # Header containing timestamp etc. of this message~%TrackedGroup[]      groups      # All groups that are currently being tracked~%================================================================================~%MSG: spencer_tracking_msgs/TrackedGroup~%# Message defining a tracked group~%#~%~%uint64      group_id        # unique identifier of the target, consistent over time~%~%duration    age             # age of the group~%~%geometry_msgs/PoseWithCovariance    centerOfGravity   # mean and covariance of the group (calculated from its person tracks)~%~%uint64[]    track_ids       # IDs of the tracked persons in this group. See srl_tracking_msgs/TrackedPersons~%================================================================================~%MSG: spencer_nav_msgs/NavParams~%# message defining a parameters or strategies for motion planner to adapt based on input from learning~%~%Header header~%bool directional_cost	# if to use directional_cost model or not~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NavigationPlanRequestTopological)))
  "Returns full string definition for message of type 'NavigationPlanRequestTopological"
  (cl:format cl:nil "# message defining a planning request to motion planner from task planner~%~%# TODO: Is this message definition deprecated!?~%# I believe move_base uses a PoseStamped (on a separate topic) to specify the goal;~%# the other information (tracked persons etc.) are published on separate topics anyway,~%# so it probably does not make much sense to include them here. --Timm~%~%Header header~%spencer_mapping_msgs/TopologicalMapNode  start		# start node~%spencer_mapping_msgs/TopologicalMapNode  goal		# goal node~%spencer_tracking_msgs/DetectedPersons detectedPersons	# detected persons from perception~%spencer_tracking_msgs/TrackedPersons trackedPersons	# tracked persons from perception~%spencer_tracking_msgs/TrackedGroups trackedGroups	# tracked groups ~%NavParams params					# parameters / strategies fror motion planner to adapt to~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: spencer_mapping_msgs/TopologicalMapNode~%# This format is adapted from the Fuerte topological_navigation stack.~%~%# Info stored with a node in a 2d topological map~%~%# Id of this node in the topological map~%uint32 id~%~%# position in the global map~%geometry_msgs/Point position~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: spencer_tracking_msgs/DetectedPersons~%# Message with all currently detected persons~%#~%~%Header                  header          # Header containing timestamp etc. of this message~%DetectedPerson[]        detections      # All persons that are currently being detected~%================================================================================~%MSG: spencer_tracking_msgs/DetectedPerson~%# Message describing a detection of a person~%#~%~%# Unique id of the detection, monotonically increasing over time~%uint64          detection_id~%~%# (Pseudo-)probabilistic value between 0.0 and 1.0 describing the detector's confidence in the detection~%float64         confidence~%~%# 3D pose (position + orientation) of the *center* of the detection~%# check covariance to see which dimensions are actually set! unset dimensions shall have a covariance > 9999~%geometry_msgs/PoseWithCovariance    pose    ~%~%# Sensor modality / detector type, see example constants below. ~%# used e.g. later in tracking to check which tracks have been visually confirmed~%string          modality            ~%~%                                    ~%string          MODALITY_GENERIC_LASER_2D = laser2d~%string          MODALITY_GENERIC_LASER_3D = laser3d~%string          MODALITY_GENERIC_MONOCULAR_VISION = mono~%string          MODALITY_GENERIC_STEREO_VISION = stereo~%string          MODALITY_GENERIC_RGBD = rgbd~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: spencer_tracking_msgs/TrackedPersons~%# Message with all currently tracked persons ~%#~%~%Header              header      # Header containing timestamp etc. of this message~%TrackedPerson[]     tracks      # All persons that are currently being tracked~%================================================================================~%MSG: spencer_tracking_msgs/TrackedPerson~%# Message defining a tracked person~%#~%~%uint64      track_id        # unique identifier of the target, consistent over time~%bool        is_occluded     # if the track is currently not observable in a physical way~%bool        is_matched      # if the track is currently matched by a detection~%uint64      detection_id    # id of the corresponding detection in the current cycle (undefined if occluded)~%duration    age             # age of the track~%~%# The following fields are extracted from the Kalman state x and its covariance C~%~%geometry_msgs/PoseWithCovariance       pose   # pose of the track (z value and orientation might not be set, check if corresponding variance on diagonal is > 99999)~%~%geometry_msgs/TwistWithCovariance   twist     # velocity of the track (z value and rotational velocities might not be set, check if corresponding variance on diagonal is > 99999)~%~%================================================================================~%MSG: geometry_msgs/TwistWithCovariance~%# This expresses velocity in free space with uncertainty.~%~%Twist twist~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: spencer_tracking_msgs/TrackedGroups~%# Message with all currently tracked groups ~%#~%~%Header              header      # Header containing timestamp etc. of this message~%TrackedGroup[]      groups      # All groups that are currently being tracked~%================================================================================~%MSG: spencer_tracking_msgs/TrackedGroup~%# Message defining a tracked group~%#~%~%uint64      group_id        # unique identifier of the target, consistent over time~%~%duration    age             # age of the group~%~%geometry_msgs/PoseWithCovariance    centerOfGravity   # mean and covariance of the group (calculated from its person tracks)~%~%uint64[]    track_ids       # IDs of the tracked persons in this group. See srl_tracking_msgs/TrackedPersons~%================================================================================~%MSG: spencer_nav_msgs/NavParams~%# message defining a parameters or strategies for motion planner to adapt based on input from learning~%~%Header header~%bool directional_cost	# if to use directional_cost model or not~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NavigationPlanRequestTopological>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'start))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'detectedPersons))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'trackedPersons))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'trackedGroups))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'params))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NavigationPlanRequestTopological>))
  "Converts a ROS message object to a list"
  (cl:list 'NavigationPlanRequestTopological
    (cl:cons ':header (header msg))
    (cl:cons ':start (start msg))
    (cl:cons ':goal (goal msg))
    (cl:cons ':detectedPersons (detectedPersons msg))
    (cl:cons ':trackedPersons (trackedPersons msg))
    (cl:cons ':trackedGroups (trackedGroups msg))
    (cl:cons ':params (params msg))
))
