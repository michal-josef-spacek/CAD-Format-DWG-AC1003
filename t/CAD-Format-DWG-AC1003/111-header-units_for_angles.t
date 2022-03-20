use strict;
use warnings;

use CAD::Format::DWG::AC1003;
use File::Object;
use Test::More 'tests' => 6;
use Test::NoWarnings;

# Data directory.
my $data_dir = File::Object->new->up->dir('data/header/units_for_angles')->set;

# Test.
my $obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('UNITS1.DWG')->s,
);
is($obj->header->variables->units_for_angles, '0', 'Units for angles (0).');

# Test.
$obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('UNITS2.DWG')->s,
);
is($obj->header->variables->units_for_angles, '1', 'Units for angles (1).');

# Test.
$obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('UNITS3.DWG')->s,
);
is($obj->header->variables->units_for_angles, '2', 'Units for angles (2).');

# Test.
$obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('UNITS4.DWG')->s,
);
is($obj->header->variables->units_for_angles, '3', 'Units for angles (3).');

# Test.
$obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('UNITS5.DWG')->s,
);
is($obj->header->variables->units_for_angles, '4', 'Units for angles (4).');
