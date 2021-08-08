use strict;
use warnings;

use CAD::Format::DWG::AC1003;
use File::Object;
use Test::More 'tests' => 2;
use Test::NoWarnings;

# Data directory.
my $data_dir = File::Object->new->up->dir('data/header/snap')->set;

# Test.
my $obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('SNAP_ROT.DWG')->s,
);
my $snap_angle = unpack 'd<', $obj->header->snap_angle;
is($snap_angle, 0.261799387799149, 'Span angle in radians (0.261799387799149).');
