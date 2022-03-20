use strict;
use warnings;

use CAD::Format::DWG::AC1003;
use File::Object;
use Test::More 'tests' => 4;
use Test::NoWarnings;

# Data directory.
my $data_dir = File::Object->new->up->dir('data/header/table_layer_item_size')->set;

# Test.
my $obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('L1.DWG')->s,
);
is($obj->header->table_layer->item_size, 38, 'Size of item in layer table (38).');

# Test.
$obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('L2.DWG')->s,
);
is($obj->header->table_layer->item_size, 38, 'Size of item in layer table (38).');

# Test.
$obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('L3.DWG')->s,
);
is($obj->header->table_layer->item_size, 38, 'Size of item in layer table (38).');
