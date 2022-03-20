use strict;
use warnings;

use CAD::Format::DWG::AC1003;
use File::Object;
use Test::More 'tests' => 4;
use Test::NoWarnings;

# Data directory.
my $data_dir = File::Object->new->up->dir('data/header/axis')->set;

# Test.
my $obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('AXIS_OFF.DWG')->s,
);
is($obj->header->variables->axis_value->y, 0, 'Axis value y (0).');

# Test.
$obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('AXIS_ON.DWG')->s,
);
is($obj->header->variables->axis_value->y, 0, 'Axis value y (0).');

# Test.
$obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('AXIS_NUM.DWG')->s,
);
is($obj->header->variables->axis_value->y, 1.2345, 'Axis value y (1.2345).');
