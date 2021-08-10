use strict;
use warnings;

use CAD::Format::DWG::AC1003;
use File::Object;
use Test::More 'tests' => 4;
use Test::NoWarnings;

# Data directory.
my $data_dir = File::Object->new->up->dir('data/header/coordinates')->set;

# Test.
my $obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('C1.DWG')->s,
);
is($obj->header->coordinates, 0, 'Coordinates (0 - absolute coordinates - default).');

# Test.
$obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('C2.DWG')->s,
);
is($obj->header->coordinates, 1, 'Coordinates (1 - absolute realtime coordinates).');

# Test.
$obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('C3.DWG')->s,
);
is($obj->header->coordinates, 2, 'Coordinates (2 - polar coordinates).');
