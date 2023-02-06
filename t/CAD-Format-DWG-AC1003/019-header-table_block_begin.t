use strict;
use warnings;

use CAD::Format::DWG::AC1003;
use File::Object;
use Test::More 'tests' => 4;
use Test::NoWarnings;

# Data directory.
my $data_dir = File::Object->new->up->dir('data/header/table_block_begin')->set;

# Test.
my $obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('BLOCK1.DWG')->s,
);
is($obj->header->table_block->begin, 981, 'Begin address of block table (981).');

# Test.
$obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('BLOCK2.DWG')->s,
);
is($obj->header->table_block->begin, 1021, 'Begin address of block table (1021).');

# Test.
$obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('BLOCK3.DWG')->s,
);
is($obj->header->table_block->begin, 1061, 'Begin address of block table (1061).');
