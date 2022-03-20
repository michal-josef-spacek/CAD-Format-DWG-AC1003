use strict;
use warnings;

use CAD::Format::DWG::AC1003;
use File::Object;
use Test::More 'tests' => 3;
use Test::NoWarnings;

# Data directory.
my $data_dir = File::Object->new->up->dir('data/header/dim_measurement_postfix')->set;

# Test.
my $obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('D1.DWG')->s,
);
my $dim_measurement_postfix = unpack 'Z*', $obj->header->variables->dim_measurement_postfix;
is($dim_measurement_postfix, '', 'Dimension measurement postfix (\'\' - default).');

# Test.
$obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('D2.DWG')->s,
);
$dim_measurement_postfix = unpack 'Z*', $obj->header->variables->dim_measurement_postfix;
is($dim_measurement_postfix, 'foo', 'Dimension measurement postfix (foo - default).');
