use strict;
use warnings;

use CAD::Format::DWG::AC1003;
use File::Object;
use Test::More 'tests' => 3;
use Test::NoWarnings;

# Data directory.
my $data_dir = File::Object->new->up->dir('data/header/dim_center_mark_control')->set;

# Test.
my $obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('D1.DWG')->s,
);
my $dim_center_mark_control = unpack 'd<', $obj->header->dim_center_mark_control;
is($dim_center_mark_control, 0.09, 'Dimension center mark control (0.09 - default).');

# Test.
$obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('D2.DWG')->s,
);
$dim_center_mark_control = unpack 'd<', $obj->header->dim_center_mark_control;
is($dim_center_mark_control, 1.2345, 'Dimension center mark control (1.2345).');
