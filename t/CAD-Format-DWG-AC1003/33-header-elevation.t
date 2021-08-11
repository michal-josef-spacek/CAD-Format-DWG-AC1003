use strict;
use warnings;

use CAD::Format::DWG::AC1003;
use File::Object;
use Test::More 'tests' => 3;
use Test::NoWarnings;

# Data directory.
my $data_dir = File::Object->new->up->dir('data/header/elevation')->set;

# Test.
my $obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('E1.DWG')->s,
);
my $elevation = unpack 'd<', $obj->header->elevation;
is($elevation, 0, 'Elevation (0 - default).');

# Test.
$obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('E2.DWG')->s,
);
$elevation = unpack 'd<', $obj->header->elevation;
is($elevation, 1.2345, 'Elevation (1.2345).');
