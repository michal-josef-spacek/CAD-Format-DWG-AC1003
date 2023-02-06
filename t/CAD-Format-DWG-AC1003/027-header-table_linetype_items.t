use strict;
use warnings;

use CAD::Format::DWG::AC1003;
use File::Object;
use Test::More 'tests' => 4;
use Test::NoWarnings;

# Data directory.
my $data_dir = File::Object->new->up->dir('data/header/table_linetype_items')->set;

# Test.
my $obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('LT1.DWG')->s,
);
is($obj->header->table_linetype->items, 1, 'Number of items in linetype table (1).');

# Test.
$obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('LT2.DWG')->s,
);
is($obj->header->table_linetype->items, 2, 'Number of items in linetype table (2).');

# Test.
$obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('LT3.DWG')->s,
);
is($obj->header->table_linetype->items, 3, 'Number of items in linetype table (3).');
