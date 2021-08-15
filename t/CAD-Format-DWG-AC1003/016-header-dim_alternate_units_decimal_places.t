use strict;
use warnings;

use CAD::Format::DWG::AC1003;
use File::Object;
use Test::More 'tests' => 4;
use Test::NoWarnings;

# Data directory.
my $data_dir = File::Object->new->up->dir('data/header/dim_alternate_units_decimal_places')->set;

# Test.
my $obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('D1.DWG')->s,
);
is($obj->header->dim_alternate_units_decimal_places, 2,
	'Dimension alternate units decimal places (2 - default).');

# Test.
$obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('D2.DWG')->s,
);
is($obj->header->dim_alternate_units_decimal_places, 3,
	'Dimension alternate units decimal places (3).');

# Test.
$obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('D3.DWG')->s,
);
is($obj->header->dim_alternate_units_decimal_places, 1,
	'Dimension alternate units decimal places (1).');
