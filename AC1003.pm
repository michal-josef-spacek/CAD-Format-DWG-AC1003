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

our $ENTITIES_FOO = -2;
our $ENTITIES_TMP = -1;
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
}

sub header {
    my ($self) = @_;
    return $self->{header};
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
    $self->{unknown4} = $self->{_io}->read_bytes(75);
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
    $self->{unknown6a} = $self->{_io}->read_s2le();
    $self->{unknown6b} = $self->{_io}->read_bytes(14);
    $self->{unknown7} = $self->{_io}->read_bytes(8);
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
    $self->{unknown9} = $self->{_io}->read_bytes(15);
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
    $self->{unknown29a} = $self->{_io}->read_bytes(2);
    $self->{dim_rounding} = $self->{_io}->read_bytes(8);
    $self->{dim_extension_line_extend2} = $self->{_io}->read_bytes(8);
    $self->{unknown30} = $self->{_io}->read_bytes(35);
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
    $self->{unknown32} = $self->{_io}->read_s2le();
    $self->{unknown33} = $self->{_io}->read_bytes(8);
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

sub unknown4 {
    my ($self) = @_;
    return $self->{unknown4};
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

sub unknown6a {
    my ($self) = @_;
    return $self->{unknown6a};
}

sub unknown6b {
    my ($self) = @_;
    return $self->{unknown6b};
}

sub unknown7 {
    my ($self) = @_;
    return $self->{unknown7};
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

sub unknown9 {
    my ($self) = @_;
    return $self->{unknown9};
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

sub dim_rounding {
    my ($self) = @_;
    return $self->{dim_rounding};
}

sub dim_extension_line_extend2 {
    my ($self) = @_;
    return $self->{dim_extension_line_extend2};
}

sub unknown30 {
    my ($self) = @_;
    return $self->{unknown30};
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

sub unknown32 {
    my ($self) = @_;
    return $self->{unknown32};
}

sub unknown33 {
    my ($self) = @_;
    return $self->{unknown33};
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

1;
