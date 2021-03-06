# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from spencer_mapping_msgs/TopologicalMap.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import spencer_mapping_msgs.msg
import geometry_msgs.msg

class TopologicalMap(genpy.Message):
  _md5sum = "36ff17f5e065879348b7145dbd6ef195"
  _type = "spencer_mapping_msgs/TopologicalMap"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """# This format is adapted from the Fuerte topological_navigation stack.

# A 2d topological map consists of a set of local occupancy grids together with
# the transformations between coordinate frames of overlapping grids.  This ROS
# message represents the structure of the topological map, i.e., all the 
# information except the grids themselves.  You can get individual grids by
# calling the GetLocalGrid service on the mapper.

TopologicalMapNode[] nodes
TopologicalMapEdge[] edges

================================================================================
MSG: spencer_mapping_msgs/TopologicalMapNode
# This format is adapted from the Fuerte topological_navigation stack.

# Info stored with a node in a 2d topological map

# Id of this node in the topological map
uint32 id

# position in the global map
geometry_msgs/Point position

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: spencer_mapping_msgs/TopologicalMapEdge
# This format is adapted from the Fuerte topological_navigation stack.

# Info stored with an edge in the topological map

# Id of this edge in the topological map
uint32 id

# Id of the source node
uint32 src

# Id of the destination node
uint32 dest

# Costs of this edge
float32[] cost
"""
  __slots__ = ['nodes','edges']
  _slot_types = ['spencer_mapping_msgs/TopologicalMapNode[]','spencer_mapping_msgs/TopologicalMapEdge[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       nodes,edges

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(TopologicalMap, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.nodes is None:
        self.nodes = []
      if self.edges is None:
        self.edges = []
    else:
      self.nodes = []
      self.edges = []

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      length = len(self.nodes)
      buff.write(_struct_I.pack(length))
      for val1 in self.nodes:
        buff.write(_struct_I.pack(val1.id))
        _v1 = val1.position
        _x = _v1
        buff.write(_struct_3d.pack(_x.x, _x.y, _x.z))
      length = len(self.edges)
      buff.write(_struct_I.pack(length))
      for val1 in self.edges:
        _x = val1
        buff.write(_struct_3I.pack(_x.id, _x.src, _x.dest))
        length = len(val1.cost)
        buff.write(_struct_I.pack(length))
        pattern = '<%sf'%length
        buff.write(struct.pack(pattern, *val1.cost))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.nodes is None:
        self.nodes = None
      if self.edges is None:
        self.edges = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.nodes = []
      for i in range(0, length):
        val1 = spencer_mapping_msgs.msg.TopologicalMapNode()
        start = end
        end += 4
        (val1.id,) = _struct_I.unpack(str[start:end])
        _v2 = val1.position
        _x = _v2
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _struct_3d.unpack(str[start:end])
        self.nodes.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.edges = []
      for i in range(0, length):
        val1 = spencer_mapping_msgs.msg.TopologicalMapEdge()
        _x = val1
        start = end
        end += 12
        (_x.id, _x.src, _x.dest,) = _struct_3I.unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        pattern = '<%sf'%length
        start = end
        end += struct.calcsize(pattern)
        val1.cost = struct.unpack(pattern, str[start:end])
        self.edges.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      length = len(self.nodes)
      buff.write(_struct_I.pack(length))
      for val1 in self.nodes:
        buff.write(_struct_I.pack(val1.id))
        _v3 = val1.position
        _x = _v3
        buff.write(_struct_3d.pack(_x.x, _x.y, _x.z))
      length = len(self.edges)
      buff.write(_struct_I.pack(length))
      for val1 in self.edges:
        _x = val1
        buff.write(_struct_3I.pack(_x.id, _x.src, _x.dest))
        length = len(val1.cost)
        buff.write(_struct_I.pack(length))
        pattern = '<%sf'%length
        buff.write(val1.cost.tostring())
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.nodes is None:
        self.nodes = None
      if self.edges is None:
        self.edges = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.nodes = []
      for i in range(0, length):
        val1 = spencer_mapping_msgs.msg.TopologicalMapNode()
        start = end
        end += 4
        (val1.id,) = _struct_I.unpack(str[start:end])
        _v4 = val1.position
        _x = _v4
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _struct_3d.unpack(str[start:end])
        self.nodes.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.edges = []
      for i in range(0, length):
        val1 = spencer_mapping_msgs.msg.TopologicalMapEdge()
        _x = val1
        start = end
        end += 12
        (_x.id, _x.src, _x.dest,) = _struct_3I.unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        pattern = '<%sf'%length
        start = end
        end += struct.calcsize(pattern)
        val1.cost = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=length)
        self.edges.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
_struct_3I = struct.Struct("<3I")
_struct_3d = struct.Struct("<3d")
