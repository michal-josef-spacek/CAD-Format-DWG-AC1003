use strict;
use warnings;

use CAD::Format::DWG::AC1003;
use File::Object;
use Test::More 'tests' => 4;
use Test::NoWarnings;

# Data directory.
my $data_dir = File::Object->new->up->dir('data/header/number_of_layers')->set;

# Test.
my $obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('L1.DWG')->s,
);
is($obj->header->number_of_layers, 1, '1 layer (blank file).');

# Test.
$obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('L2.DWG')->s,
);
is($obj->header->number_of_layers, 2, '2 layers (one added).');

# Test.
$obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('L3.DWG')->s,
);
is($obj->header->number_of_layers, 3, '3 layers (two added).');
