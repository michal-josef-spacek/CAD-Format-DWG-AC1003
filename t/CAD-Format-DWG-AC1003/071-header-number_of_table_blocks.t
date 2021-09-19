use strict;
use warnings;

use CAD::Format::DWG::AC1003;
use File::Object;
use Test::More 'tests' => 4;
use Test::NoWarnings;

# Data directory.
my $data_dir = File::Object->new->up->dir('data/header/number_of_table_blocks')->set;

# Test.
my $obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('BLOCK1.DWG')->s,
);
is($obj->header->number_of_table_blocks, 0, 'Zero blocks (blank file).');

# Test.
$obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('BLOCK2.DWG')->s,
);
is($obj->header->number_of_table_blocks, 1, '1 block (added one).');

# Test.
$obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('BLOCK3.DWG')->s,
);
is($obj->header->number_of_table_blocks, 2, '2 blocks (added two).');
