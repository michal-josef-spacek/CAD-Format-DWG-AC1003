use strict;
use warnings;

use CAD::Format::DWG::AC1003;
use File::Object;
use Test::More 'tests' => 4;
use Test::NoWarnings;

# Data directory.
my $data_dir = File::Object->new->up->dir('data/header/table_layer_begin')->set;

# Test.
my $obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('L1.DWG')->s,
);
is($obj->header->table_layer->begin, 981, 'Begin address of layer table (981).');

# Test.
$obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('L2.DWG')->s,
);
is($obj->header->table_layer->begin, 981, 'Begin address of layer table (981).');

# Test.
$obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('L3.DWG')->s,
);
is($obj->header->table_layer->begin, 981, 'Begin address of layer table (981).');
