use strict;
use warnings;

use CAD::Format::DWG::AC1003;
use File::Object;
use Test::More 'tests' => 3;
use Test::NoWarnings;

# Data directory.
my $data_dir = File::Object->new->up->dir('data/header/grid')->set;

# Test.
my $obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('GRID_OFF.DWG')->s,
);
is($obj->header->grid, 0, 'Grid (0).');

# Test.
$obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('GRID_ON.DWG')->s,
);
is($obj->header->grid, 1, 'Grid (1).');
