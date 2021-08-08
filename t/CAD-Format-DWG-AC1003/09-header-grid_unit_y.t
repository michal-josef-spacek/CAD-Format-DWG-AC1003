use strict;
use warnings;

use CAD::Format::DWG::AC1003;
use File::Object;
use Test::More 'tests' => 2;
use Test::NoWarnings;

# Data directory.
my $data_dir = File::Object->new->up->dir('data/header/grid')->set;

# Test.
my $obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('GRID_ASPECT.DWG')->s,
);
my $grid_unit_y = unpack 'd<', $obj->header->grid_unit_y;
is($grid_unit_y, 6, 'Grid unit x (6).');
