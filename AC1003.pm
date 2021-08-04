# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.009_000;

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

our $UNIT_TYPES_SCIENTIFIC = 1;
our $UNIT_TYPES_DECIMAL = 2;
our $UNIT_TYPES_ENGINEERING = 3;
our $UNIT_TYPES_ARCHITECTURAL = 4;

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
package CAD::Format::DWG::AC1003::EntityRepeatBegin;

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

    $self->{layer} = $self->{_io}->read_s2le();
}

sub layer {
    my ($self) = @_;
    return $self->{layer};
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

    $self->{layer} = $self->{_io}->read_s2le();
    $self->{x1} = $self->{_io}->read_bytes(8);
    $self->{y1} = $self->{_io}->read_bytes(8);
    $self->{x2} = $self->{_io}->read_bytes(8);
    $self->{y2} = $self->{_io}->read_bytes(8);
}

sub layer {
    my ($self) = @_;
    return $self->{layer};
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
package CAD::Format::DWG::AC1003::EntitySolid;

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

    $self->{layer} = $self->{_io}->read_s2le();
    $self->{from_x} = $self->{_io}->read_bytes(8);
    $self->{from_y} = $self->{_io}->read_bytes(8);
    $self->{from_and_x} = $self->{_io}->read_bytes(8);
    $self->{from_and_y} = $self->{_io}->read_bytes(8);
    $self->{to_x} = $self->{_io}->read_bytes(8);
    $self->{to_y} = $self->{_io}->read_bytes(8);
    $self->{to_and_x} = $self->{_io}->read_bytes(8);
    $self->{to_and_y} = $self->{_io}->read_bytes(8);
}

sub layer {
    my ($self) = @_;
    return $self->{layer};
}

sub from_x {
    my ($self) = @_;
    return $self->{from_x};
}

sub from_y {
    my ($self) = @_;
    return $self->{from_y};
}

sub from_and_x {
    my ($self) = @_;
    return $self->{from_and_x};
}

sub from_and_y {
    my ($self) = @_;
    return $self->{from_and_y};
}

sub to_x {
    my ($self) = @_;
    return $self->{to_x};
}

sub to_y {
    my ($self) = @_;
    return $self->{to_y};
}

sub to_and_x {
    my ($self) = @_;
    return $self->{to_and_x};
}

sub to_and_y {
    my ($self) = @_;
    return $self->{to_and_y};
}

########################################################################
package CAD::Format::DWG::AC1003::EntityBlockEnd;

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

    $self->{layer} = $self->{_io}->read_s2le();
}

sub layer {
    my ($self) = @_;
    return $self->{layer};
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

    $self->{layer} = $self->{_io}->read_s2le();
    $self->{x} = $self->{_io}->read_bytes(8);
    $self->{y} = $self->{_io}->read_bytes(8);
}

sub layer {
    my ($self) = @_;
    return $self->{layer};
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
package CAD::Format::DWG::AC1003::EntityTrace;

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

    $self->{layer} = $self->{_io}->read_s2le();
    $self->{from_x} = $self->{_io}->read_bytes(8);
    $self->{from_y} = $self->{_io}->read_bytes(8);
    $self->{from_and_x} = $self->{_io}->read_bytes(8);
    $self->{from_and_y} = $self->{_io}->read_bytes(8);
    $self->{to_x} = $self->{_io}->read_bytes(8);
    $self->{to_y} = $self->{_io}->read_bytes(8);
    $self->{to_and_x} = $self->{_io}->read_bytes(8);
    $self->{to_and_y} = $self->{_io}->read_bytes(8);
}

sub layer {
    my ($self) = @_;
    return $self->{layer};
}

sub from_x {
    my ($self) = @_;
    return $self->{from_x};
}

sub from_y {
    my ($self) = @_;
    return $self->{from_y};
}

sub from_and_x {
    my ($self) = @_;
    return $self->{from_and_x};
}

sub from_and_y {
    my ($self) = @_;
    return $self->{from_and_y};
}

sub to_x {
    my ($self) = @_;
    return $self->{to_x};
}

sub to_y {
    my ($self) = @_;
    return $self->{to_y};
}

sub to_and_x {
    my ($self) = @_;
    return $self->{to_and_x};
}

sub to_and_y {
    my ($self) = @_;
    return $self->{to_and_y};
}

########################################################################
package CAD::Format::DWG::AC1003::EntityBlockInsert;

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

    $self->{layer} = $self->{_io}->read_s2le();
    $self->{size} = $self->{_io}->read_s2le();
    $self->{value} = $self->{_io}->read_bytes($self->size());
    $self->{x} = $self->{_io}->read_bytes(8);
    $self->{y} = $self->{_io}->read_bytes(8);
    $self->{x_scale} = $self->{_io}->read_bytes(8);
    $self->{y_scale} = $self->{_io}->read_bytes(8);
    $self->{rotation_angle} = $self->{_io}->read_bytes(8);
}

sub layer {
    my ($self) = @_;
    return $self->{layer};
}

sub size {
    my ($self) = @_;
    return $self->{size};
}

sub value {
    my ($self) = @_;
    return $self->{value};
}

sub x {
    my ($self) = @_;
    return $self->{x};
}

sub y {
    my ($self) = @_;
    return $self->{y};
}

sub x_scale {
    my ($self) = @_;
    return $self->{x_scale};
}

sub y_scale {
    my ($self) = @_;
    return $self->{y_scale};
}

sub rotation_angle {
    my ($self) = @_;
    return $self->{rotation_angle};
}

########################################################################
package CAD::Format::DWG::AC1003::EntityText;

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

    $self->{layer} = $self->{_io}->read_s2le();
    $self->{x} = $self->{_io}->read_bytes(8);
    $self->{y} = $self->{_io}->read_bytes(8);
    $self->{height} = $self->{_io}->read_bytes(8);
    $self->{angle} = $self->{_io}->read_bytes(8);
    $self->{size} = $self->{_io}->read_s2le();
    $self->{value} = $self->{_io}->read_bytes($self->size());
}

sub layer {
    my ($self) = @_;
    return $self->{layer};
}

sub x {
    my ($self) = @_;
    return $self->{x};
}

sub y {
    my ($self) = @_;
    return $self->{y};
}

sub height {
    my ($self) = @_;
    return $self->{height};
}

sub angle {
    my ($self) = @_;
    return $self->{angle};
}

sub size {
    my ($self) = @_;
    return $self->{size};
}

sub value {
    my ($self) = @_;
    return $self->{value};
}

########################################################################
package CAD::Format::DWG::AC1003::EntityBlockBegin;

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

    $self->{layer} = $self->{_io}->read_s2le();
    $self->{size} = $self->{_io}->read_s2le();
    $self->{value} = $self->{_io}->read_bytes($self->size());
    $self->{x} = $self->{_io}->read_bytes(8);
    $self->{y} = $self->{_io}->read_bytes(8);
}

sub layer {
    my ($self) = @_;
    return $self->{layer};
}

sub size {
    my ($self) = @_;
    return $self->{size};
}

sub value {
    my ($self) = @_;
    return $self->{value};
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
package CAD::Format::DWG::AC1003::EntityFoo;

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

    $self->{layer} = $self->{_io}->read_s2le();
    $self->{x} = $self->{_io}->read_bytes(8);
    $self->{y} = $self->{_io}->read_bytes(8);
}

sub layer {
    my ($self) = @_;
    return $self->{layer};
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

    $self->{layer} = $self->{_io}->read_s2le();
    $self->{x} = $self->{_io}->read_bytes(8);
    $self->{y} = $self->{_io}->read_bytes(8);
    $self->{radius} = $self->{_io}->read_bytes(8);
    $self->{angle_from} = $self->{_io}->read_bytes(8);
    $self->{angle_to} = $self->{_io}->read_bytes(8);
}

sub layer {
    my ($self) = @_;
    return $self->{layer};
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

    $self->{entity_type} = $self->{_io}->read_s2le();
    my $_on = $self->entity_type();
    if ($_on == $CAD::Format::DWG::AC1003::ENTITIES_SOLID) {
        $self->{data} = CAD::Format::DWG::AC1003::EntitySolid->new($self->{_io}, $self, $self->{_root});
    }
    elsif ($_on == $CAD::Format::DWG::AC1003::ENTITIES_SHAPE) {
        $self->{data} = CAD::Format::DWG::AC1003::EntityShape->new($self->{_io}, $self, $self->{_root});
    }
    elsif ($_on == $CAD::Format::DWG::AC1003::ENTITIES_REPEAT_BEGIN) {
        $self->{data} = CAD::Format::DWG::AC1003::EntityRepeatBegin->new($self->{_io}, $self, $self->{_root});
    }
    elsif ($_on == $CAD::Format::DWG::AC1003::ENTITIES_BLOCK_BEGIN) {
        $self->{data} = CAD::Format::DWG::AC1003::EntityBlockBegin->new($self->{_io}, $self, $self->{_root});
    }
    elsif ($_on == $CAD::Format::DWG::AC1003::ENTITIES_LINE) {
        $self->{data} = CAD::Format::DWG::AC1003::EntityLine->new($self->{_io}, $self, $self->{_root});
    }
    elsif ($_on == $CAD::Format::DWG::AC1003::ENTITIES_REPEAT_END) {
        $self->{data} = CAD::Format::DWG::AC1003::EntityRepeatEnd->new($self->{_io}, $self, $self->{_root});
    }
    elsif ($_on == $CAD::Format::DWG::AC1003::ENTITIES_LOAD) {
        $self->{data} = CAD::Format::DWG::AC1003::EntityLoad->new($self->{_io}, $self, $self->{_root});
    }
    elsif ($_on == $CAD::Format::DWG::AC1003::ENTITIES_FOO) {
        $self->{data} = CAD::Format::DWG::AC1003::EntityFoo->new($self->{_io}, $self, $self->{_root});
    }
    elsif ($_on == $CAD::Format::DWG::AC1003::ENTITIES_TEXT) {
        $self->{data} = CAD::Format::DWG::AC1003::EntityText->new($self->{_io}, $self, $self->{_root});
    }
    elsif ($_on == $CAD::Format::DWG::AC1003::ENTITIES_BLOCK_INSERT) {
        $self->{data} = CAD::Format::DWG::AC1003::EntityBlockInsert->new($self->{_io}, $self, $self->{_root});
    }
    elsif ($_on == $CAD::Format::DWG::AC1003::ENTITIES_CIRCLE) {
        $self->{data} = CAD::Format::DWG::AC1003::EntityCircle->new($self->{_io}, $self, $self->{_root});
    }
    elsif ($_on == $CAD::Format::DWG::AC1003::ENTITIES_ARC) {
        $self->{data} = CAD::Format::DWG::AC1003::EntityArc->new($self->{_io}, $self, $self->{_root});
    }
    elsif ($_on == $CAD::Format::DWG::AC1003::ENTITIES_BLOCK_END) {
        $self->{data} = CAD::Format::DWG::AC1003::EntityBlockEnd->new($self->{_io}, $self, $self->{_root});
    }
    elsif ($_on == $CAD::Format::DWG::AC1003::ENTITIES_POINT) {
        $self->{data} = CAD::Format::DWG::AC1003::EntityPoint->new($self->{_io}, $self, $self->{_root});
    }
    elsif ($_on == $CAD::Format::DWG::AC1003::ENTITIES_TRACE) {
        $self->{data} = CAD::Format::DWG::AC1003::EntityTrace->new($self->{_io}, $self, $self->{_root});
    }
    elsif ($_on == $CAD::Format::DWG::AC1003::ENTITIES_TMP) {
        $self->{data} = CAD::Format::DWG::AC1003::EntityTmp->new($self->{_io}, $self, $self->{_root});
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
}

sub magic {
    my ($self) = @_;
    return $self->{magic};
}

sub zeros {
    my ($self) = @_;
    return $self->{zeros};
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

    $self->{layer} = $self->{_io}->read_s2le();
    $self->{x} = $self->{_io}->read_bytes(8);
    $self->{y} = $self->{_io}->read_bytes(8);
    $self->{radius} = $self->{_io}->read_bytes(8);
}

sub layer {
    my ($self) = @_;
    return $self->{layer};
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
package CAD::Format::DWG::AC1003::EntityShape;

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

    $self->{layer} = $self->{_io}->read_s2le();
    $self->{x} = $self->{_io}->read_bytes(8);
    $self->{y} = $self->{_io}->read_bytes(8);
    $self->{height} = $self->{_io}->read_bytes(8);
    $self->{angle} = $self->{_io}->read_bytes(8);
    $self->{item_num} = $self->{_io}->read_s2le();
}

sub layer {
    my ($self) = @_;
    return $self->{layer};
}

sub x {
    my ($self) = @_;
    return $self->{x};
}

sub y {
    my ($self) = @_;
    return $self->{y};
}

sub height {
    my ($self) = @_;
    return $self->{height};
}

sub angle {
    my ($self) = @_;
    return $self->{angle};
}

sub item_num {
    my ($self) = @_;
    return $self->{item_num};
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

    $self->{layer} = $self->{_io}->read_s2le();
    $self->{x1} = $self->{_io}->read_bytes(8);
    $self->{y1} = $self->{_io}->read_bytes(8);
    $self->{x2} = $self->{_io}->read_bytes(8);
    $self->{y2} = $self->{_io}->read_bytes(8);
}

sub layer {
    my ($self) = @_;
    return $self->{layer};
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
package CAD::Format::DWG::AC1003::EntityRepeatEnd;

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

    $self->{layer} = $self->{_io}->read_s2le();
    $self->{columns} = $self->{_io}->read_s2le();
    $self->{rows} = $self->{_io}->read_s2le();
    $self->{column_distance} = $self->{_io}->read_bytes(8);
    $self->{row_distance} = $self->{_io}->read_bytes(8);
}

sub layer {
    my ($self) = @_;
    return $self->{layer};
}

sub columns {
    my ($self) = @_;
    return $self->{columns};
}

sub rows {
    my ($self) = @_;
    return $self->{rows};
}

sub column_distance {
    my ($self) = @_;
    return $self->{column_distance};
}

sub row_distance {
    my ($self) = @_;
    return $self->{row_distance};
}

########################################################################
package CAD::Format::DWG::AC1003::EntityLoad;

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

    $self->{layer} = $self->{_io}->read_s2le();
    $self->{size} = $self->{_io}->read_s2le();
    $self->{value} = $self->{_io}->read_bytes($self->size());
}

sub layer {
    my ($self) = @_;
    return $self->{layer};
}

sub size {
    my ($self) = @_;
    return $self->{size};
}

sub value {
    my ($self) = @_;
    return $self->{value};
}

1;
