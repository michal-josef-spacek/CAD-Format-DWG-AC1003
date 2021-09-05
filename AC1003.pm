# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.009_000;
use Encode;

########################################################################
package CAD::Format::DWG::AC1003;

our @ISA = 'IO::KaitaiStruct::Struct';

sub from_file {
    my ($class, $filename) = @_;
    my $fd;

    open($fd, '<', $filename) or return undef;
    binmode($fd);
    return new($class, IO::KaitaiStruct::Stream->new($fd));
}

our $COORDINATES_ABSOLUTE_COORDINATES = 0;
our $COORDINATES_ABSOLUTE_COORDINATES_REALTIME = 1;
our $COORDINATES_RELATIVE_POLAR_COORDINATES = 2;

our $ENTITIES_TMP = -127;
our $ENTITIES_LINE = 1;
our $ENTITIES_POINT = 2;
our $ENTITIES_CIRCLE = 3;
our $ENTITIES_SHAPE = 4;
our $ENTITIES_REPEAT_BEGIN = 5;
our $ENTITIES_REPEAT_END = 6;
our $ENTITIES_TEXT = 7;
our $ENTITIES_ARC = 8;
our $ENTITIES_TRACE = 9;
our $ENTITIES_LOAD = 10;
our $ENTITIES_SOLID = 11;
our $ENTITIES_BLOCK_BEGIN = 12;
our $ENTITIES_BLOCK_END = 13;
our $ENTITIES_BLOCK_INSERT = 14;
our $ENTITIES_UNKNOWN1 = 15;
our $ENTITIES_UNKNOWN2 = 16;
our $ENTITIES_SEQEND = 17;
our $ENTITIES_POLYLINE = 18;
our $ENTITIES_UNKNOWN4 = 19;
our $ENTITIES_VERTEX = 20;

our $ATTRIBUTES_FALSE = 0;
our $ATTRIBUTES_NORMAL = 1;
our $ATTRIBUTES_TRUE = 2;

our $ANGLE_DIRECTION_COUNTERCLOCKWISE = 0;
our $ANGLE_DIRECTION_CLOCKWISE = 1;

our $CURRENT_COLOR_BYBLOCK = 0;
our $CURRENT_COLOR_RED = 1;
our $CURRENT_COLOR_YELLOW = 2;
our $CURRENT_COLOR_GREEN = 3;
our $CURRENT_COLOR_CYAN = 4;
our $CURRENT_COLOR_BLUE = 5;
our $CURRENT_COLOR_MAGENTA = 6;
our $CURRENT_COLOR_WHITE = 7;
our $CURRENT_COLOR_BYLAYER = 256;

our $UNIT_TYPES_SCIENTIFIC = 1;
our $UNIT_TYPES_DECIMAL = 2;
our $UNIT_TYPES_ENGINEERING = 3;
our $UNIT_TYPES_ARCHITECTURAL = 4;
our $UNIT_TYPES_FRACTIONAL = 5;

our $UNITS_FOR_ANGLES_DECIMAL_DEGREES = 0;
our $UNITS_FOR_ANGLES_DEGREES_MINUTES_SECONDS = 1;
our $UNITS_FOR_ANGLES_GRADIANS = 2;
our $UNITS_FOR_ANGLES_RADIANS = 3;
our $UNITS_FOR_ANGLES_SURVEYOR_S_UNITS = 4;

our $LIMITS_CHECK_OBJECTS_CAN_OUTSIDE_GRID = 0;
our $LIMITS_CHECK_OBJECTS_CANNOT_OUTSIDE_GRID = 1;

our $OSNAP_MODES_NONE = 0;
our $OSNAP_MODES_ENDPOINT = 1;
our $OSNAP_MODES_MIDPOINT = 2;
our $OSNAP_MODES_CENTER = 4;
our $OSNAP_MODES_NODE = 8;
our $OSNAP_MODES_QUADRANT = 16;
our $OSNAP_MODES_INTERSECTION = 32;
our $OSNAP_MODES_INSERTION = 64;
our $OSNAP_MODES_PERPENDICULAR = 128;
our $OSNAP_MODES_TANGENT = 256;
our $OSNAP_MODES_NEAREST = 512;

sub new {
    my ($class, $_io, $_parent, $_root) = @_;
    my $self = IO::KaitaiStruct::Struct->new($_io);

    bless $self, $class;
    $self->{_parent} = $_parent;
    $self->{_root} = $_root || $self;;

    $self->_read();

    return $self;
}

sub _read {
    my ($self) = @_;

    $self->{header} = CAD::Format::DWG::AC1003::Header->new($self->{_io}, $self, $self->{_root});
    $self->{entities} = ();
    my $n_entities = $self->header()->number_of_entities();
    for (my $i = 0; $i < $n_entities; $i++) {
        $self->{entities}[$i] = CAD::Format::DWG::AC1003::Entity->new($self->{_io}, $self, $self->{_root});
    }
}

sub header {
    my ($self) = @_;
    return $self->{header};
}

sub entities {
    my ($self) = @_;
    return $self->{entities};
}

########################################################################
package CAD::Format::DWG::AC1003::EntityTmp;

our @ISA = 'IO::KaitaiStruct::Struct';

sub from_file {
    my ($class, $filename) = @_;
    my $fd;

    open($fd, '<', $filename) or return undef;
    binmode($fd);
    return new($class, IO::KaitaiStruct::Stream->new($fd));
}

sub new {
    my ($class, $_io, $_parent, $_root) = @_;
    my $self = IO::KaitaiStruct::Struct->new($_io);

    bless $self, $class;
    $self->{_parent} = $_parent;
    $self->{_root} = $_root || $self;;

    $self->_read();

    return $self;
}

sub _read {
    my ($self) = @_;

    $self->{entity_mode} = CAD::Format::DWG::AC1003::EntityMode->new($self->{_io}, $self, $self->{_root});
    $self->{entity_size} = $self->{_io}->read_s2le();
    $self->{xxx} = $self->{_io}->read_bytes(($self->entity_size() - 4));
}

sub entity_mode {
    my ($self) = @_;
    return $self->{entity_mode};
}

sub entity_size {
    my ($self) = @_;
    return $self->{entity_size};
}

sub xxx {
    my ($self) = @_;
    return $self->{xxx};
}

########################################################################
package CAD::Format::DWG::AC1003::EntityCommon;

our @ISA = 'IO::KaitaiStruct::Struct';

sub from_file {
    my ($class, $filename) = @_;
    my $fd;

    open($fd, '<', $filename) or return undef;
    binmode($fd);
    return new($class, IO::KaitaiStruct::Stream->new($fd));
}

sub new {
    my ($class, $_io, $_parent, $_root) = @_;
    my $self = IO::KaitaiStruct::Struct->new($_io);

    bless $self, $class;
    $self->{_parent} = $_parent;
    $self->{_root} = $_root || $self;;

    $self->_read();

    return $self;
}

sub _read {
    my ($self) = @_;

    $self->{entity_mode} = CAD::Format::DWG::AC1003::EntityMode->new($self->{_io}, $self, $self->{_root});
    $self->{entity_size} = $self->{_io}->read_s2le();
    $self->{entity_layer_index} = $self->{_io}->read_s1();
    $self->{unknown2} = $self->{_io}->read_bytes(3);
    if ($self->entity_mode()->entity_color_flag()) {
        $self->{entity_color} = $self->{_io}->read_s1();
    }
    if ($self->entity_mode()->entity_linetype_flag()) {
        $self->{entity_linetype_index} = $self->{_io}->read_s1();
    }
    if ($self->entity_mode()->entity_thickness_flag()) {
        $self->{entity_thickness} = $self->{_io}->read_bytes(8);
    }
}

sub entity_mode {
    my ($self) = @_;
    return $self->{entity_mode};
}

sub entity_size {
    my ($self) = @_;
    return $self->{entity_size};
}

sub entity_layer_index {
    my ($self) = @_;
    return $self->{entity_layer_index};
}

sub unknown2 {
    my ($self) = @_;
    return $self->{unknown2};
}

sub entity_color {
    my ($self) = @_;
    return $self->{entity_color};
}

sub entity_linetype_index {
    my ($self) = @_;
    return $self->{entity_linetype_index};
}

sub entity_thickness {
    my ($self) = @_;
    return $self->{entity_thickness};
}

########################################################################
package CAD::Format::DWG::AC1003::EntityPoint;

our @ISA = 'IO::KaitaiStruct::Struct';

sub from_file {
    my ($class, $filename) = @_;
    my $fd;

    open($fd, '<', $filename) or return undef;
    binmode($fd);
    return new($class, IO::KaitaiStruct::Stream->new($fd));
}

sub new {
    my ($class, $_io, $_parent, $_root) = @_;
    my $self = IO::KaitaiStruct::Struct->new($_io);

    bless $self, $class;
    $self->{_parent} = $_parent;
    $self->{_root} = $_root || $self;;

    $self->_read();

    return $self;
}

sub _read {
    my ($self) = @_;

    $self->{entity_common} = CAD::Format::DWG::AC1003::EntityCommon->new($self->{_io}, $self, $self->{_root});
    $self->{x} = $self->{_io}->read_bytes(8);
    $self->{y} = $self->{_io}->read_bytes(8);
}

sub entity_common {
    my ($self) = @_;
    return $self->{entity_common};
}

sub x {
    my ($self) = @_;
    return $self->{x};
}

sub y {
    my ($self) = @_;
    return $self->{y};
}

########################################################################
package CAD::Format::DWG::AC1003::EntityArc;

our @ISA = 'IO::KaitaiStruct::Struct';

sub from_file {
    my ($class, $filename) = @_;
    my $fd;

    open($fd, '<', $filename) or return undef;
    binmode($fd);
    return new($class, IO::KaitaiStruct::Stream->new($fd));
}

sub new {
    my ($class, $_io, $_parent, $_root) = @_;
    my $self = IO::KaitaiStruct::Struct->new($_io);

    bless $self, $class;
    $self->{_parent} = $_parent;
    $self->{_root} = $_root || $self;;

    $self->_read();

    return $self;
}

sub _read {
    my ($self) = @_;

    $self->{entity_common} = CAD::Format::DWG::AC1003::EntityCommon->new($self->{_io}, $self, $self->{_root});
    $self->{x} = $self->{_io}->read_bytes(8);
    $self->{y} = $self->{_io}->read_bytes(8);
    $self->{radius} = $self->{_io}->read_bytes(8);
    $self->{angle_from} = $self->{_io}->read_bytes(8);
    $self->{angle_to} = $self->{_io}->read_bytes(8);
}

sub entity_common {
    my ($self) = @_;
    return $self->{entity_common};
}

sub x {
    my ($self) = @_;
    return $self->{x};
}

sub y {
    my ($self) = @_;
    return $self->{y};
}

sub radius {
    my ($self) = @_;
    return $self->{radius};
}

sub angle_from {
    my ($self) = @_;
    return $self->{angle_from};
}

sub angle_to {
    my ($self) = @_;
    return $self->{angle_to};
}

########################################################################
package CAD::Format::DWG::AC1003::Entity;

our @ISA = 'IO::KaitaiStruct::Struct';

sub from_file {
    my ($class, $filename) = @_;
    my $fd;

    open($fd, '<', $filename) or return undef;
    binmode($fd);
    return new($class, IO::KaitaiStruct::Stream->new($fd));
}

sub new {
    my ($class, $_io, $_parent, $_root) = @_;
    my $self = IO::KaitaiStruct::Struct->new($_io);

    bless $self, $class;
    $self->{_parent} = $_parent;
    $self->{_root} = $_root || $self;;

    $self->_read();

    return $self;
}

sub _read {
    my ($self) = @_;

    $self->{entity_type} = $self->{_io}->read_s1();
    my $_on = $self->entity_type();
    if ($_on == $CAD::Format::DWG::AC1003::ENTITIES_SEQEND) {
        $self->{data} = CAD::Format::DWG::AC1003::EntitySeqend->new($self->{_io}, $self, $self->{_root});
    }
    elsif ($_on == $CAD::Format::DWG::AC1003::ENTITIES_LINE) {
        $self->{data} = CAD::Format::DWG::AC1003::EntityLine->new($self->{_io}, $self, $self->{_root});
    }
    elsif ($_on == $CAD::Format::DWG::AC1003::ENTITIES_CIRCLE) {
        $self->{data} = CAD::Format::DWG::AC1003::EntityCircle->new($self->{_io}, $self, $self->{_root});
    }
    elsif ($_on == $CAD::Format::DWG::AC1003::ENTITIES_ARC) {
        $self->{data} = CAD::Format::DWG::AC1003::EntityArc->new($self->{_io}, $self, $self->{_root});
    }
    elsif ($_on == $CAD::Format::DWG::AC1003::ENTITIES_VERTEX) {
        $self->{data} = CAD::Format::DWG::AC1003::EntityVertex->new($self->{_io}, $self, $self->{_root});
    }
    elsif ($_on == $CAD::Format::DWG::AC1003::ENTITIES_POINT) {
        $self->{data} = CAD::Format::DWG::AC1003::EntityPoint->new($self->{_io}, $self, $self->{_root});
    }
    elsif ($_on == $CAD::Format::DWG::AC1003::ENTITIES_TMP) {
        $self->{data} = CAD::Format::DWG::AC1003::EntityTmp->new($self->{_io}, $self, $self->{_root});
    }
    elsif ($_on == $CAD::Format::DWG::AC1003::ENTITIES_POLYLINE) {
        $self->{data} = CAD::Format::DWG::AC1003::EntityPolyline->new($self->{_io}, $self, $self->{_root});
    }
}

sub entity_type {
    my ($self) = @_;
    return $self->{entity_type};
}

sub data {
    my ($self) = @_;
    return $self->{data};
}

########################################################################
package CAD::Format::DWG::AC1003::EntitySeqend;

our @ISA = 'IO::KaitaiStruct::Struct';

sub from_file {
    my ($class, $filename) = @_;
    my $fd;

    open($fd, '<', $filename) or return undef;
    binmode($fd);
    return new($class, IO::KaitaiStruct::Stream->new($fd));
}

sub new {
    my ($class, $_io, $_parent, $_root) = @_;
    my $self = IO::KaitaiStruct::Struct->new($_io);

    bless $self, $class;
    $self->{_parent} = $_parent;
    $self->{_root} = $_root || $self;;

    $self->_read();

    return $self;
}

sub _read {
    my ($self) = @_;

    $self->{entity_common} = CAD::Format::DWG::AC1003::EntityCommon->new($self->{_io}, $self, $self->{_root});
    $self->{unknown} = $self->{_io}->read_bytes(4);
}

sub entity_common {
    my ($self) = @_;
    return $self->{entity_common};
}

sub unknown {
    my ($self) = @_;
    return $self->{unknown};
}

########################################################################
package CAD::Format::DWG::AC1003::Header;

our @ISA = 'IO::KaitaiStruct::Struct';

sub from_file {
    my ($class, $filename) = @_;
    my $fd;

    open($fd, '<', $filename) or return undef;
    binmode($fd);
    return new($class, IO::KaitaiStruct::Stream->new($fd));
}

sub new {
    my ($class, $_io, $_parent, $_root) = @_;
    my $self = IO::KaitaiStruct::Struct->new($_io);

    bless $self, $class;
    $self->{_parent} = $_parent;
    $self->{_root} = $_root || $self;;

    $self->_read();

    return $self;
}

sub _read {
    my ($self) = @_;

    $self->{magic} = $self->{_io}->read_bytes(6);
    $self->{zeros} = $self->{_io}->read_bytes(6);
    $self->{zero_one_or_three} = $self->{_io}->read_s1();
    $self->{unknown1} = $self->{_io}->read_s2le();
    $self->{unknown2} = $self->{_io}->read_s2le();
    $self->{unknown3} = $self->{_io}->read_s2le();
    $self->{unknown4a} = $self->{_io}->read_bytes(37);
    $self->{number_of_layers} = $self->{_io}->read_s2le();
    $self->{unknown4b} = $self->{_io}->read_bytes(18);
    $self->{number_of_linetypes} = $self->{_io}->read_s2le();
    $self->{unknown4c} = $self->{_io}->read_bytes(16);
    $self->{insertion_base_x} = $self->{_io}->read_bytes(8);
    $self->{insertion_base_y} = $self->{_io}->read_bytes(8);
    $self->{insertion_base_z} = $self->{_io}->read_bytes(8);
    $self->{number_of_entities} = $self->{_io}->read_s2le();
    $self->{drawing_first_x} = $self->{_io}->read_bytes(8);
    $self->{drawing_first_y} = $self->{_io}->read_bytes(8);
    $self->{drawing_first_z} = $self->{_io}->read_bytes(8);
    $self->{drawing_second_x} = $self->{_io}->read_bytes(8);
    $self->{drawing_second_y} = $self->{_io}->read_bytes(8);
    $self->{drawing_second_z} = $self->{_io}->read_bytes(8);
    $self->{limits_min_x} = $self->{_io}->read_bytes(8);
    $self->{limits_min_y} = $self->{_io}->read_bytes(8);
    $self->{limits_max_x} = $self->{_io}->read_bytes(8);
    $self->{limits_max_y} = $self->{_io}->read_bytes(8);
    $self->{view_ctrl_x} = $self->{_io}->read_bytes(8);
    $self->{view_ctrl_y} = $self->{_io}->read_bytes(8);
    $self->{view_ctrl_z} = $self->{_io}->read_bytes(8);
    $self->{view_size} = $self->{_io}->read_bytes(8);
    $self->{snap} = $self->{_io}->read_s2le();
    $self->{snap_resolution_x} = $self->{_io}->read_bytes(8);
    $self->{snap_resolution_y} = $self->{_io}->read_bytes(8);
    $self->{snap_base_x} = $self->{_io}->read_bytes(8);
    $self->{snap_base_y} = $self->{_io}->read_bytes(8);
    $self->{snap_angle} = $self->{_io}->read_bytes(8);
    $self->{snap_style} = $self->{_io}->read_s2le();
    $self->{snap_iso_pair} = $self->{_io}->read_s2le();
    $self->{grid} = $self->{_io}->read_s2le();
    $self->{grid_unit_x} = $self->{_io}->read_bytes(8);
    $self->{grid_unit_y} = $self->{_io}->read_bytes(8);
    $self->{ortho} = $self->{_io}->read_s2le();
    $self->{regen} = $self->{_io}->read_s2le();
    $self->{fill} = $self->{_io}->read_s2le();
    $self->{qtext} = $self->{_io}->read_s2le();
    $self->{drag} = $self->{_io}->read_s2le();
    $self->{linetype_scale} = $self->{_io}->read_bytes(8);
    $self->{text_size} = $self->{_io}->read_bytes(8);
    $self->{trace_width} = $self->{_io}->read_bytes(8);
    $self->{current_layer} = $self->{_io}->read_s2le();
    $self->{unknown6} = $self->{_io}->read_bytes(8);
    $self->{unknown7a} = $self->{_io}->read_bytes(2);
    $self->{unknown7b} = $self->{_io}->read_bytes(2);
    $self->{unknown7c} = $self->{_io}->read_bytes(2);
    $self->{unknown7d} = $self->{_io}->read_bytes(2);
    $self->{unknown8} = $self->{_io}->read_bytes(8);
    $self->{linear_units_format} = $self->{_io}->read_s2le();
    $self->{linear_units_precision} = $self->{_io}->read_s2le();
    $self->{axis} = $self->{_io}->read_s2le();
    $self->{axis_value_x} = $self->{_io}->read_bytes(8);
    $self->{axis_value_y} = $self->{_io}->read_bytes(8);
    $self->{sketch_increment} = $self->{_io}->read_bytes(8);
    $self->{fillet_radius} = $self->{_io}->read_bytes(8);
    $self->{units_for_angles} = $self->{_io}->read_s2le();
    $self->{angular_precision} = $self->{_io}->read_s2le();
    $self->{text_style} = $self->{_io}->read_s2le();
    $self->{osnap} = $self->{_io}->read_s2le();
    $self->{attributes} = $self->{_io}->read_s2le();
    $self->{menu} = Encode::decode("ASCII", $self->{_io}->read_bytes(15));
    $self->{dim_scale} = $self->{_io}->read_bytes(8);
    $self->{dim_arrowhead_size} = $self->{_io}->read_bytes(8);
    $self->{dim_extension_line_offset} = $self->{_io}->read_bytes(8);
    $self->{dim_baseline_spacing} = $self->{_io}->read_bytes(8);
    $self->{dim_extension_line_extend} = $self->{_io}->read_bytes(8);
    $self->{dim_maximum_tolerance_limit} = $self->{_io}->read_bytes(8);
    $self->{dim_minimum_tolerance_limit} = $self->{_io}->read_bytes(8);
    $self->{dim_text_height} = $self->{_io}->read_bytes(8);
    $self->{dim_center_mark_control} = $self->{_io}->read_bytes(8);
    $self->{dim_oblique_stroke_size} = $self->{_io}->read_bytes(8);
    $self->{dim_tolerances} = $self->{_io}->read_s1();
    $self->{dim_limits_default_text} = $self->{_io}->read_s1();
    $self->{dim_text_ext_inside_line_position} = $self->{_io}->read_s1();
    $self->{dim_text_ext_outside_line_position} = $self->{_io}->read_s1();
    $self->{dim_extension_line_first_suppress} = $self->{_io}->read_s1();
    $self->{dim_extension_line_second_suppress} = $self->{_io}->read_s1();
    $self->{dim_text_vertical_position} = $self->{_io}->read_s1();
    $self->{limits_check} = $self->{_io}->read_s2le();
    $self->{unknown10} = $self->{_io}->read_bytes(45);
    $self->{elevation} = $self->{_io}->read_bytes(8);
    $self->{thickness} = $self->{_io}->read_bytes(8);
    $self->{view_point_x} = $self->{_io}->read_bytes(8);
    $self->{view_point_y} = $self->{_io}->read_bytes(8);
    $self->{view_point_z} = $self->{_io}->read_bytes(8);
    $self->{unknown11} = $self->{_io}->read_bytes(8);
    $self->{unknown12} = $self->{_io}->read_bytes(8);
    $self->{unknown13} = $self->{_io}->read_bytes(8);
    $self->{unknown14} = $self->{_io}->read_bytes(8);
    $self->{unknown15} = $self->{_io}->read_bytes(8);
    $self->{unknown16} = $self->{_io}->read_bytes(8);
    $self->{unknown17} = $self->{_io}->read_bytes(8);
    $self->{unknown18} = $self->{_io}->read_bytes(8);
    $self->{unknown19} = $self->{_io}->read_bytes(8);
    $self->{unknown20} = $self->{_io}->read_bytes(8);
    $self->{unknown21} = $self->{_io}->read_bytes(8);
    $self->{unknown22} = $self->{_io}->read_bytes(8);
    $self->{unknown23} = $self->{_io}->read_bytes(8);
    $self->{unknown24} = $self->{_io}->read_bytes(8);
    $self->{unknown25} = $self->{_io}->read_bytes(8);
    $self->{unknown26} = $self->{_io}->read_bytes(8);
    $self->{unknown27} = $self->{_io}->read_bytes(8);
    $self->{unknown28} = $self->{_io}->read_bytes(8);
    $self->{unknown29} = $self->{_io}->read_bytes(2);
    $self->{blip} = $self->{_io}->read_s1();
    $self->{unknown29a} = $self->{_io}->read_bytes(1);
    $self->{dim_suppression_of_zeros} = $self->{_io}->read_s1();
    $self->{dim_rounding} = $self->{_io}->read_bytes(8);
    $self->{dim_extension_line_extend2} = $self->{_io}->read_bytes(8);
    $self->{dim_arrowhead_block} = Encode::decode("ASCII", $self->{_io}->read_bytes(32));
    $self->{unknown30} = $self->{_io}->read_s1();
    $self->{circle_zoom_percent} = $self->{_io}->read_s2le();
    $self->{coordinates} = $self->{_io}->read_s2le();
    $self->{current_color} = $self->{_io}->read_s2le();
    $self->{current_linetype} = $self->{_io}->read_s2le();
    $self->{create_date_days} = $self->{_io}->read_u4le();
    $self->{create_date_ms} = $self->{_io}->read_u4le();
    $self->{update_date_days} = $self->{_io}->read_u4le();
    $self->{update_date_ms} = $self->{_io}->read_u4le();
    $self->{total_editing_time_days} = $self->{_io}->read_u4le();
    $self->{total_editing_time_ms} = $self->{_io}->read_u4le();
    $self->{user_elapsed_timer_days} = $self->{_io}->read_u4le();
    $self->{user_elapsed_times_ms} = $self->{_io}->read_u4le();
    $self->{user_timer} = $self->{_io}->read_s2le();
    $self->{fast_zoom} = $self->{_io}->read_s1();
    $self->{unknown33} = $self->{_io}->read_bytes(1);
    $self->{sketch_type} = $self->{_io}->read_s1();
    $self->{unknown33b} = $self->{_io}->read_bytes(7);
    $self->{unknown34} = $self->{_io}->read_bytes(8);
    $self->{angle_base} = $self->{_io}->read_bytes(8);
    $self->{angle_direction} = $self->{_io}->read_s2le();
    $self->{point_mode} = $self->{_io}->read_s2le();
    $self->{point_size} = $self->{_io}->read_bytes(8);
    $self->{polyline_width} = $self->{_io}->read_bytes(8);
    $self->{user_integer_1} = $self->{_io}->read_s2le();
    $self->{user_integer_2} = $self->{_io}->read_s2le();
    $self->{user_integer_3} = $self->{_io}->read_s2le();
    $self->{user_integer_4} = $self->{_io}->read_s2le();
    $self->{user_integer_5} = $self->{_io}->read_s2le();
    $self->{user_real_1} = $self->{_io}->read_bytes(8);
    $self->{user_real_2} = $self->{_io}->read_bytes(8);
    $self->{user_real_3} = $self->{_io}->read_bytes(8);
    $self->{user_real_4} = $self->{_io}->read_bytes(8);
    $self->{user_real_5} = $self->{_io}->read_bytes(8);
    $self->{dim_alternate_units} = $self->{_io}->read_s1();
    $self->{dim_alternate_units_decimal_places} = $self->{_io}->read_s1();
    $self->{dim_associative} = $self->{_io}->read_s1();
    $self->{dim_sho} = $self->{_io}->read_s1();
    $self->{dim_measurement_postfix} = Encode::decode("ASCII", $self->{_io}->read_bytes(16));
    $self->{dim_alternate_measurement_postfix} = Encode::decode("ASCII", $self->{_io}->read_bytes(16));
    $self->{dim_alternate_units_multiplier} = $self->{_io}->read_bytes(8);
    $self->{dim_linear_measurements_scale_factor} = $self->{_io}->read_bytes(8);
}

sub create_date {
    my ($self) = @_;
    return $self->{create_date} if ($self->{create_date});
    $self->{create_date} = ($self->create_date_days() + ($self->create_date_ms() / 86400000.0));
    return $self->{create_date};
}

sub update_date {
    my ($self) = @_;
    return $self->{update_date} if ($self->{update_date});
    $self->{update_date} = ($self->update_date_days() + ($self->update_date_ms() / 86400000.0));
    return $self->{update_date};
}

sub magic {
    my ($self) = @_;
    return $self->{magic};
}

sub zeros {
    my ($self) = @_;
    return $self->{zeros};
}

sub zero_one_or_three {
    my ($self) = @_;
    return $self->{zero_one_or_three};
}

sub unknown1 {
    my ($self) = @_;
    return $self->{unknown1};
}

sub unknown2 {
    my ($self) = @_;
    return $self->{unknown2};
}

sub unknown3 {
    my ($self) = @_;
    return $self->{unknown3};
}

sub unknown4a {
    my ($self) = @_;
    return $self->{unknown4a};
}

sub number_of_layers {
    my ($self) = @_;
    return $self->{number_of_layers};
}

sub unknown4b {
    my ($self) = @_;
    return $self->{unknown4b};
}

sub number_of_linetypes {
    my ($self) = @_;
    return $self->{number_of_linetypes};
}

sub unknown4c {
    my ($self) = @_;
    return $self->{unknown4c};
}

sub insertion_base_x {
    my ($self) = @_;
    return $self->{insertion_base_x};
}

sub insertion_base_y {
    my ($self) = @_;
    return $self->{insertion_base_y};
}

sub insertion_base_z {
    my ($self) = @_;
    return $self->{insertion_base_z};
}

sub number_of_entities {
    my ($self) = @_;
    return $self->{number_of_entities};
}

sub drawing_first_x {
    my ($self) = @_;
    return $self->{drawing_first_x};
}

sub drawing_first_y {
    my ($self) = @_;
    return $self->{drawing_first_y};
}

sub drawing_first_z {
    my ($self) = @_;
    return $self->{drawing_first_z};
}

sub drawing_second_x {
    my ($self) = @_;
    return $self->{drawing_second_x};
}

sub drawing_second_y {
    my ($self) = @_;
    return $self->{drawing_second_y};
}

sub drawing_second_z {
    my ($self) = @_;
    return $self->{drawing_second_z};
}

sub limits_min_x {
    my ($self) = @_;
    return $self->{limits_min_x};
}

sub limits_min_y {
    my ($self) = @_;
    return $self->{limits_min_y};
}

sub limits_max_x {
    my ($self) = @_;
    return $self->{limits_max_x};
}

sub limits_max_y {
    my ($self) = @_;
    return $self->{limits_max_y};
}

sub view_ctrl_x {
    my ($self) = @_;
    return $self->{view_ctrl_x};
}

sub view_ctrl_y {
    my ($self) = @_;
    return $self->{view_ctrl_y};
}

sub view_ctrl_z {
    my ($self) = @_;
    return $self->{view_ctrl_z};
}

sub view_size {
    my ($self) = @_;
    return $self->{view_size};
}

sub snap {
    my ($self) = @_;
    return $self->{snap};
}

sub snap_resolution_x {
    my ($self) = @_;
    return $self->{snap_resolution_x};
}

sub snap_resolution_y {
    my ($self) = @_;
    return $self->{snap_resolution_y};
}

sub snap_base_x {
    my ($self) = @_;
    return $self->{snap_base_x};
}

sub snap_base_y {
    my ($self) = @_;
    return $self->{snap_base_y};
}

sub snap_angle {
    my ($self) = @_;
    return $self->{snap_angle};
}

sub snap_style {
    my ($self) = @_;
    return $self->{snap_style};
}

sub snap_iso_pair {
    my ($self) = @_;
    return $self->{snap_iso_pair};
}

sub grid {
    my ($self) = @_;
    return $self->{grid};
}

sub grid_unit_x {
    my ($self) = @_;
    return $self->{grid_unit_x};
}

sub grid_unit_y {
    my ($self) = @_;
    return $self->{grid_unit_y};
}

sub ortho {
    my ($self) = @_;
    return $self->{ortho};
}

sub regen {
    my ($self) = @_;
    return $self->{regen};
}

sub fill {
    my ($self) = @_;
    return $self->{fill};
}

sub qtext {
    my ($self) = @_;
    return $self->{qtext};
}

sub drag {
    my ($self) = @_;
    return $self->{drag};
}

sub linetype_scale {
    my ($self) = @_;
    return $self->{linetype_scale};
}

sub text_size {
    my ($self) = @_;
    return $self->{text_size};
}

sub trace_width {
    my ($self) = @_;
    return $self->{trace_width};
}

sub current_layer {
    my ($self) = @_;
    return $self->{current_layer};
}

sub unknown6 {
    my ($self) = @_;
    return $self->{unknown6};
}

sub unknown7a {
    my ($self) = @_;
    return $self->{unknown7a};
}

sub unknown7b {
    my ($self) = @_;
    return $self->{unknown7b};
}

sub unknown7c {
    my ($self) = @_;
    return $self->{unknown7c};
}

sub unknown7d {
    my ($self) = @_;
    return $self->{unknown7d};
}

sub unknown8 {
    my ($self) = @_;
    return $self->{unknown8};
}

sub linear_units_format {
    my ($self) = @_;
    return $self->{linear_units_format};
}

sub linear_units_precision {
    my ($self) = @_;
    return $self->{linear_units_precision};
}

sub axis {
    my ($self) = @_;
    return $self->{axis};
}

sub axis_value_x {
    my ($self) = @_;
    return $self->{axis_value_x};
}

sub axis_value_y {
    my ($self) = @_;
    return $self->{axis_value_y};
}

sub sketch_increment {
    my ($self) = @_;
    return $self->{sketch_increment};
}

sub fillet_radius {
    my ($self) = @_;
    return $self->{fillet_radius};
}

sub units_for_angles {
    my ($self) = @_;
    return $self->{units_for_angles};
}

sub angular_precision {
    my ($self) = @_;
    return $self->{angular_precision};
}

sub text_style {
    my ($self) = @_;
    return $self->{text_style};
}

sub osnap {
    my ($self) = @_;
    return $self->{osnap};
}

sub attributes {
    my ($self) = @_;
    return $self->{attributes};
}

sub menu {
    my ($self) = @_;
    return $self->{menu};
}

sub dim_scale {
    my ($self) = @_;
    return $self->{dim_scale};
}

sub dim_arrowhead_size {
    my ($self) = @_;
    return $self->{dim_arrowhead_size};
}

sub dim_extension_line_offset {
    my ($self) = @_;
    return $self->{dim_extension_line_offset};
}

sub dim_baseline_spacing {
    my ($self) = @_;
    return $self->{dim_baseline_spacing};
}

sub dim_extension_line_extend {
    my ($self) = @_;
    return $self->{dim_extension_line_extend};
}

sub dim_maximum_tolerance_limit {
    my ($self) = @_;
    return $self->{dim_maximum_tolerance_limit};
}

sub dim_minimum_tolerance_limit {
    my ($self) = @_;
    return $self->{dim_minimum_tolerance_limit};
}

sub dim_text_height {
    my ($self) = @_;
    return $self->{dim_text_height};
}

sub dim_center_mark_control {
    my ($self) = @_;
    return $self->{dim_center_mark_control};
}

sub dim_oblique_stroke_size {
    my ($self) = @_;
    return $self->{dim_oblique_stroke_size};
}

sub dim_tolerances {
    my ($self) = @_;
    return $self->{dim_tolerances};
}

sub dim_limits_default_text {
    my ($self) = @_;
    return $self->{dim_limits_default_text};
}

sub dim_text_ext_inside_line_position {
    my ($self) = @_;
    return $self->{dim_text_ext_inside_line_position};
}

sub dim_text_ext_outside_line_position {
    my ($self) = @_;
    return $self->{dim_text_ext_outside_line_position};
}

sub dim_extension_line_first_suppress {
    my ($self) = @_;
    return $self->{dim_extension_line_first_suppress};
}

sub dim_extension_line_second_suppress {
    my ($self) = @_;
    return $self->{dim_extension_line_second_suppress};
}

sub dim_text_vertical_position {
    my ($self) = @_;
    return $self->{dim_text_vertical_position};
}

sub limits_check {
    my ($self) = @_;
    return $self->{limits_check};
}

sub unknown10 {
    my ($self) = @_;
    return $self->{unknown10};
}

sub elevation {
    my ($self) = @_;
    return $self->{elevation};
}

sub thickness {
    my ($self) = @_;
    return $self->{thickness};
}

sub view_point_x {
    my ($self) = @_;
    return $self->{view_point_x};
}

sub view_point_y {
    my ($self) = @_;
    return $self->{view_point_y};
}

sub view_point_z {
    my ($self) = @_;
    return $self->{view_point_z};
}

sub unknown11 {
    my ($self) = @_;
    return $self->{unknown11};
}

sub unknown12 {
    my ($self) = @_;
    return $self->{unknown12};
}

sub unknown13 {
    my ($self) = @_;
    return $self->{unknown13};
}

sub unknown14 {
    my ($self) = @_;
    return $self->{unknown14};
}

sub unknown15 {
    my ($self) = @_;
    return $self->{unknown15};
}

sub unknown16 {
    my ($self) = @_;
    return $self->{unknown16};
}

sub unknown17 {
    my ($self) = @_;
    return $self->{unknown17};
}

sub unknown18 {
    my ($self) = @_;
    return $self->{unknown18};
}

sub unknown19 {
    my ($self) = @_;
    return $self->{unknown19};
}

sub unknown20 {
    my ($self) = @_;
    return $self->{unknown20};
}

sub unknown21 {
    my ($self) = @_;
    return $self->{unknown21};
}

sub unknown22 {
    my ($self) = @_;
    return $self->{unknown22};
}

sub unknown23 {
    my ($self) = @_;
    return $self->{unknown23};
}

sub unknown24 {
    my ($self) = @_;
    return $self->{unknown24};
}

sub unknown25 {
    my ($self) = @_;
    return $self->{unknown25};
}

sub unknown26 {
    my ($self) = @_;
    return $self->{unknown26};
}

sub unknown27 {
    my ($self) = @_;
    return $self->{unknown27};
}

sub unknown28 {
    my ($self) = @_;
    return $self->{unknown28};
}

sub unknown29 {
    my ($self) = @_;
    return $self->{unknown29};
}

sub blip {
    my ($self) = @_;
    return $self->{blip};
}

sub unknown29a {
    my ($self) = @_;
    return $self->{unknown29a};
}

sub dim_suppression_of_zeros {
    my ($self) = @_;
    return $self->{dim_suppression_of_zeros};
}

sub dim_rounding {
    my ($self) = @_;
    return $self->{dim_rounding};
}

sub dim_extension_line_extend2 {
    my ($self) = @_;
    return $self->{dim_extension_line_extend2};
}

sub dim_arrowhead_block {
    my ($self) = @_;
    return $self->{dim_arrowhead_block};
}

sub unknown30 {
    my ($self) = @_;
    return $self->{unknown30};
}

sub circle_zoom_percent {
    my ($self) = @_;
    return $self->{circle_zoom_percent};
}

sub coordinates {
    my ($self) = @_;
    return $self->{coordinates};
}

sub current_color {
    my ($self) = @_;
    return $self->{current_color};
}

sub current_linetype {
    my ($self) = @_;
    return $self->{current_linetype};
}

sub create_date_days {
    my ($self) = @_;
    return $self->{create_date_days};
}

sub create_date_ms {
    my ($self) = @_;
    return $self->{create_date_ms};
}

sub update_date_days {
    my ($self) = @_;
    return $self->{update_date_days};
}

sub update_date_ms {
    my ($self) = @_;
    return $self->{update_date_ms};
}

sub total_editing_time_days {
    my ($self) = @_;
    return $self->{total_editing_time_days};
}

sub total_editing_time_ms {
    my ($self) = @_;
    return $self->{total_editing_time_ms};
}

sub user_elapsed_timer_days {
    my ($self) = @_;
    return $self->{user_elapsed_timer_days};
}

sub user_elapsed_times_ms {
    my ($self) = @_;
    return $self->{user_elapsed_times_ms};
}

sub user_timer {
    my ($self) = @_;
    return $self->{user_timer};
}

sub fast_zoom {
    my ($self) = @_;
    return $self->{fast_zoom};
}

sub unknown33 {
    my ($self) = @_;
    return $self->{unknown33};
}

sub sketch_type {
    my ($self) = @_;
    return $self->{sketch_type};
}

sub unknown33b {
    my ($self) = @_;
    return $self->{unknown33b};
}

sub unknown34 {
    my ($self) = @_;
    return $self->{unknown34};
}

sub angle_base {
    my ($self) = @_;
    return $self->{angle_base};
}

sub angle_direction {
    my ($self) = @_;
    return $self->{angle_direction};
}

sub point_mode {
    my ($self) = @_;
    return $self->{point_mode};
}

sub point_size {
    my ($self) = @_;
    return $self->{point_size};
}

sub polyline_width {
    my ($self) = @_;
    return $self->{polyline_width};
}

sub user_integer_1 {
    my ($self) = @_;
    return $self->{user_integer_1};
}

sub user_integer_2 {
    my ($self) = @_;
    return $self->{user_integer_2};
}

sub user_integer_3 {
    my ($self) = @_;
    return $self->{user_integer_3};
}

sub user_integer_4 {
    my ($self) = @_;
    return $self->{user_integer_4};
}

sub user_integer_5 {
    my ($self) = @_;
    return $self->{user_integer_5};
}

sub user_real_1 {
    my ($self) = @_;
    return $self->{user_real_1};
}

sub user_real_2 {
    my ($self) = @_;
    return $self->{user_real_2};
}

sub user_real_3 {
    my ($self) = @_;
    return $self->{user_real_3};
}

sub user_real_4 {
    my ($self) = @_;
    return $self->{user_real_4};
}

sub user_real_5 {
    my ($self) = @_;
    return $self->{user_real_5};
}

sub dim_alternate_units {
    my ($self) = @_;
    return $self->{dim_alternate_units};
}

sub dim_alternate_units_decimal_places {
    my ($self) = @_;
    return $self->{dim_alternate_units_decimal_places};
}

sub dim_associative {
    my ($self) = @_;
    return $self->{dim_associative};
}

sub dim_sho {
    my ($self) = @_;
    return $self->{dim_sho};
}

sub dim_measurement_postfix {
    my ($self) = @_;
    return $self->{dim_measurement_postfix};
}

sub dim_alternate_measurement_postfix {
    my ($self) = @_;
    return $self->{dim_alternate_measurement_postfix};
}

sub dim_alternate_units_multiplier {
    my ($self) = @_;
    return $self->{dim_alternate_units_multiplier};
}

sub dim_linear_measurements_scale_factor {
    my ($self) = @_;
    return $self->{dim_linear_measurements_scale_factor};
}

########################################################################
package CAD::Format::DWG::AC1003::EntityCircle;

our @ISA = 'IO::KaitaiStruct::Struct';

sub from_file {
    my ($class, $filename) = @_;
    my $fd;

    open($fd, '<', $filename) or return undef;
    binmode($fd);
    return new($class, IO::KaitaiStruct::Stream->new($fd));
}

sub new {
    my ($class, $_io, $_parent, $_root) = @_;
    my $self = IO::KaitaiStruct::Struct->new($_io);

    bless $self, $class;
    $self->{_parent} = $_parent;
    $self->{_root} = $_root || $self;;

    $self->_read();

    return $self;
}

sub _read {
    my ($self) = @_;

    $self->{entity_common} = CAD::Format::DWG::AC1003::EntityCommon->new($self->{_io}, $self, $self->{_root});
    $self->{x} = $self->{_io}->read_bytes(8);
    $self->{y} = $self->{_io}->read_bytes(8);
    $self->{radius} = $self->{_io}->read_bytes(8);
}

sub entity_common {
    my ($self) = @_;
    return $self->{entity_common};
}

sub x {
    my ($self) = @_;
    return $self->{x};
}

sub y {
    my ($self) = @_;
    return $self->{y};
}

sub radius {
    my ($self) = @_;
    return $self->{radius};
}

########################################################################
package CAD::Format::DWG::AC1003::EntityVertex;

our @ISA = 'IO::KaitaiStruct::Struct';

sub from_file {
    my ($class, $filename) = @_;
    my $fd;

    open($fd, '<', $filename) or return undef;
    binmode($fd);
    return new($class, IO::KaitaiStruct::Stream->new($fd));
}

sub new {
    my ($class, $_io, $_parent, $_root) = @_;
    my $self = IO::KaitaiStruct::Struct->new($_io);

    bless $self, $class;
    $self->{_parent} = $_parent;
    $self->{_root} = $_root || $self;;

    $self->_read();

    return $self;
}

sub _read {
    my ($self) = @_;

    $self->{entity_common} = CAD::Format::DWG::AC1003::EntityCommon->new($self->{_io}, $self, $self->{_root});
    $self->{x} = $self->{_io}->read_bytes(8);
    $self->{y} = $self->{_io}->read_bytes(8);
}

sub entity_common {
    my ($self) = @_;
    return $self->{entity_common};
}

sub x {
    my ($self) = @_;
    return $self->{x};
}

sub y {
    my ($self) = @_;
    return $self->{y};
}

########################################################################
package CAD::Format::DWG::AC1003::EntityMode;

our @ISA = 'IO::KaitaiStruct::Struct';

sub from_file {
    my ($class, $filename) = @_;
    my $fd;

    open($fd, '<', $filename) or return undef;
    binmode($fd);
    return new($class, IO::KaitaiStruct::Stream->new($fd));
}

sub new {
    my ($class, $_io, $_parent, $_root) = @_;
    my $self = IO::KaitaiStruct::Struct->new($_io);

    bless $self, $class;
    $self->{_parent} = $_parent;
    $self->{_root} = $_root || $self;;

    $self->_read();

    return $self;
}

sub _read {
    my ($self) = @_;

    $self->{entity_mode1} = $self->{_io}->read_bits_int_be(1);
    $self->{entity_mode2} = $self->{_io}->read_bits_int_be(1);
    $self->{entity_mode3} = $self->{_io}->read_bits_int_be(1);
    $self->{entity_mode4} = $self->{_io}->read_bits_int_be(1);
    $self->{entity_thickness_flag} = $self->{_io}->read_bits_int_be(1);
    $self->{entity_mode5} = $self->{_io}->read_bits_int_be(1);
    $self->{entity_linetype_flag} = $self->{_io}->read_bits_int_be(1);
    $self->{entity_color_flag} = $self->{_io}->read_bits_int_be(1);
}

sub entity_mode1 {
    my ($self) = @_;
    return $self->{entity_mode1};
}

sub entity_mode2 {
    my ($self) = @_;
    return $self->{entity_mode2};
}

sub entity_mode3 {
    my ($self) = @_;
    return $self->{entity_mode3};
}

sub entity_mode4 {
    my ($self) = @_;
    return $self->{entity_mode4};
}

sub entity_thickness_flag {
    my ($self) = @_;
    return $self->{entity_thickness_flag};
}

sub entity_mode5 {
    my ($self) = @_;
    return $self->{entity_mode5};
}

sub entity_linetype_flag {
    my ($self) = @_;
    return $self->{entity_linetype_flag};
}

sub entity_color_flag {
    my ($self) = @_;
    return $self->{entity_color_flag};
}

########################################################################
package CAD::Format::DWG::AC1003::EntityLine;

our @ISA = 'IO::KaitaiStruct::Struct';

sub from_file {
    my ($class, $filename) = @_;
    my $fd;

    open($fd, '<', $filename) or return undef;
    binmode($fd);
    return new($class, IO::KaitaiStruct::Stream->new($fd));
}

sub new {
    my ($class, $_io, $_parent, $_root) = @_;
    my $self = IO::KaitaiStruct::Struct->new($_io);

    bless $self, $class;
    $self->{_parent} = $_parent;
    $self->{_root} = $_root || $self;;

    $self->_read();

    return $self;
}

sub _read {
    my ($self) = @_;

    $self->{entity_common} = CAD::Format::DWG::AC1003::EntityCommon->new($self->{_io}, $self, $self->{_root});
    $self->{x1} = $self->{_io}->read_bytes(8);
    $self->{y1} = $self->{_io}->read_bytes(8);
    $self->{x2} = $self->{_io}->read_bytes(8);
    $self->{y2} = $self->{_io}->read_bytes(8);
}

sub entity_common {
    my ($self) = @_;
    return $self->{entity_common};
}

sub x1 {
    my ($self) = @_;
    return $self->{x1};
}

sub y1 {
    my ($self) = @_;
    return $self->{y1};
}

sub x2 {
    my ($self) = @_;
    return $self->{x2};
}

sub y2 {
    my ($self) = @_;
    return $self->{y2};
}

########################################################################
package CAD::Format::DWG::AC1003::EntityPolyline;

our @ISA = 'IO::KaitaiStruct::Struct';

sub from_file {
    my ($class, $filename) = @_;
    my $fd;

    open($fd, '<', $filename) or return undef;
    binmode($fd);
    return new($class, IO::KaitaiStruct::Stream->new($fd));
}

sub new {
    my ($class, $_io, $_parent, $_root) = @_;
    my $self = IO::KaitaiStruct::Struct->new($_io);

    bless $self, $class;
    $self->{_parent} = $_parent;
    $self->{_root} = $_root || $self;;

    $self->_read();

    return $self;
}

sub _read {
    my ($self) = @_;

    $self->{entity_common} = CAD::Format::DWG::AC1003::EntityCommon->new($self->{_io}, $self, $self->{_root});
}

sub entity_common {
    my ($self) = @_;
    return $self->{entity_common};
}

1;
