use strict;
use warnings;

use CAD::Format::DWG::AC1003;
use File::Object;
use Test::More 'tests' => 3;
use Test::NoWarnings;

# Data directory.
my $data_dir = File::Object->new->up->dir('data/header/dim_alternate_measurement_postfix')->set;

# Test.
my $obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('D1.DWG')->s,
);
my $dim_alternate_measurement_postfix = unpack 'Z*', $obj->header->dim_alternate_measurement_postfix;
is($dim_alternate_measurement_postfix, '', 'Dimension alternate measurement postfix (\'\' - default).');

# Test.
$obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('D2.DWG')->s,
);
$dim_alternate_measurement_postfix = unpack 'Z*', $obj->header->dim_alternate_measurement_postfix;
is($dim_alternate_measurement_postfix, '0123456789abcde', 'Dimension alternate measurement postfix ().');
