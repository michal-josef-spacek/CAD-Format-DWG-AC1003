use strict;
use warnings;

use CAD::Format::DWG::AC1003;
use File::Object;
use Test::More 'tests' => 3;
use Test::NoWarnings;

# Data directory.
my $data_dir = File::Object->new->up->dir('data/header/snap')->set;

# Test.
my $obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('SNAP_ON.DWG')->s,
);
my $snap_resolution_x = unpack 'd<', $obj->header->snap_resolution_x;
is($snap_resolution_x, 1, 'Span resolution x (1).');

# Test.
$obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('SNAP_OFF.DWG')->s,
);
$snap_resolution_x = unpack 'd<', $obj->header->snap_resolution_x;
is($snap_resolution_x, 1, 'Span resolution x (1).');