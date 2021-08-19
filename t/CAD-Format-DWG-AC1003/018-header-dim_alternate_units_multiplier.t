use strict;
use warnings;

use CAD::Format::DWG::AC1003;
use File::Object;
use Test::More 'tests' => 3;
use Test::NoWarnings;

# Data directory.
my $data_dir = File::Object->new->up->dir('data/header/dim_alternate_units_multiplier')->set;

# Test.
my $obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('D1.DWG')->s,
);
my $dim_alternate_units_multiplier = unpack 'd<', $obj->header->dim_alternate_units_multiplier;
is($dim_alternate_units_multiplier, 25.4,
	'Dimension alternate units multiplier (25.4 - inch/mm - default).');

# Test.
$obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('D2.DWG')->s,
);
$dim_alternate_units_multiplier = unpack 'd<', $obj->header->dim_alternate_units_multiplier;
is($dim_alternate_units_multiplier, 1.2345,
	'Dimension alternate units multiplier (1.2345).');
