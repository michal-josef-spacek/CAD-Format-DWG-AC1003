use strict;
use warnings;

use CAD::Format::DWG::AC1003;
use File::Object;
use Test::More 'tests' => 3;
use Test::NoWarnings;

# Data directory.
my $data_dir = File::Object->new->up->dir('data/header/dim_minimum_tolerance_limit')->set;

# Test.
my $obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('D1.DWG')->s,
);
my $dim_minimum_tolerance_limit = unpack 'd<', $obj->header->dim_minimum_tolerance_limit;
is($dim_minimum_tolerance_limit, 0, 'Dimension minimum tolerance limit (0 - default).');

# Test.
$obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('D2.DWG')->s,
);
$dim_minimum_tolerance_limit = unpack 'd<', $obj->header->dim_minimum_tolerance_limit;
is($dim_minimum_tolerance_limit, 1.2345, 'Dimension minimum tolerance limit (1.2345).');
