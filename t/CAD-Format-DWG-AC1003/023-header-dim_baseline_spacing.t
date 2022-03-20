use strict;
use warnings;

use CAD::Format::DWG::AC1003;
use File::Object;
use Test::More 'tests' => 3;
use Test::NoWarnings;

# Data directory.
my $data_dir = File::Object->new->up->dir('data/header/dim_baseline_spacing')->set;

# Test.
my $obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('DMDLI1.DWG')->s,
);
is($obj->header->variables->dim_baseline_spacing, 0.38, 'Dimension baseline spacing (0.38 - default).');

# Test.
$obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('DMDLI2.DWG')->s,
);
is($obj->header->variables->dim_baseline_spacing, 1.2345, 'Dimension baseline spacing (1.2345).');
