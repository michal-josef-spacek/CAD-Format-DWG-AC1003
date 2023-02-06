use strict;
use warnings;

use CAD::Format::DWG::AC1003;
use File::Object;
use Test::More 'tests' => 3;
use Test::NoWarnings;

# Data directory.
my $data_dir = File::Object->new->up->dir('data/header/angle_direction')->set;

# Test.
my $obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('AD1.DWG')->s,
);
is($obj->header->variables->angle_direction, 0, 'Angle direction (0).');

# Test.
$obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('AD2.DWG')->s,
);
is($obj->header->variables->angle_direction, 1, 'Angle direction (1).');
