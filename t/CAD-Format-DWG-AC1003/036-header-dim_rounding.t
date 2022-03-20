use strict;
use warnings;

use CAD::Format::DWG::AC1003;
use File::Object;
use Test::More 'tests' => 3;
use Test::NoWarnings;

# Data directory.
my $data_dir = File::Object->new->up->dir('data/header/dim_rounding')->set;

# Test.
my $obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('DR1.DWG')->s,
);
is($obj->header->variables->dim_rounding, 0, 'Dimension rounding (0 - default).');

# Test.
$obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('DR2.DWG')->s,
);
is($obj->header->variables->dim_rounding, 1.2345, 'Dimension rounding (1.2345).');
