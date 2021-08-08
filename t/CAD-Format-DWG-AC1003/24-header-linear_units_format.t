use strict;
use warnings;

use CAD::Format::DWG::AC1003;
use File::Object;
use Test::More 'tests' => 6;
use Test::NoWarnings;

# Data directory.
my $data_dir = File::Object->new->up->dir('data/header/linear_units_format')->set;

# Test.
my $obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('LUNITS1.DWG')->s,
);
is($obj->header->linear_units_format, 2, 'Linear units format (2 - Decimal).');

# Test.
$obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('LUNITS2.DWG')->s,
);
is($obj->header->linear_units_format, 1, 'Linear units format (1 - Scientific).');

# Test.
$obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('LUNITS3.DWG')->s,
);
is($obj->header->linear_units_format, 3, 'Linear units format (3 - Engineering).');

# Test.
$obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('LUNITS4.DWG')->s,
);
is($obj->header->linear_units_format, 4, 'Linear units format (4 - Architectural).');

# Test.
$obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('LUNITS5.DWG')->s,
);
is($obj->header->linear_units_format, 5, 'Linear units format (5 - Fractional).');
