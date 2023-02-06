use strict;
use warnings;

use CAD::Format::DWG::AC1003;
use File::Object;
use Test::More 'tests' => 5;
use Test::NoWarnings;

# Data directory.
my $data_dir = File::Object->new->up->dir('data/header/dim_suppression_of_zeros')->set;

# Test.
my $obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('D1.DWG')->s,
);
is($obj->header->variables->dim_suppression_of_zeros, 0, 'Dimension suppression of zeros (0 - default).');

# Test.
$obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('D2.DWG')->s,
);
is($obj->header->variables->dim_suppression_of_zeros, 1, 'Dimension suppression of zeros (1).');

# Test.
$obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('D3.DWG')->s,
);
is($obj->header->variables->dim_suppression_of_zeros, 2, 'Dimension suppression of zeros (2).');

# Test.
$obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('D4.DWG')->s,
);
is($obj->header->variables->dim_suppression_of_zeros, 3, 'Dimension suppression of zeros (3).');
