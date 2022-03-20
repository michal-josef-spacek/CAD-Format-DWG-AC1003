use strict;
use warnings;

use CAD::Format::DWG::AC1003;
use File::Object;
use Test::More 'tests' => 4;
use Test::NoWarnings;

# Data directory.
my $data_dir = File::Object->new->up->dir('data/header/table_block_item_size')->set;

# Test.
my $obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('BLOCK1.DWG')->s,
);
is($obj->header->table_block->item_size, 38, 'Size of item in block table (38).');

# Test.
$obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('BLOCK2.DWG')->s,
);
is($obj->header->table_block->item_size, 38, 'Size of item in block table (38).');

# Test.
$obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('BLOCK3.DWG')->s,
);
is($obj->header->table_block->item_size, 38, 'Size of item in block table (38).');
