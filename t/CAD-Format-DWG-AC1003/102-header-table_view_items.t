use strict;
use warnings;

use CAD::Format::DWG::AC1003;
use File::Object;
use Test::More 'tests' => 4;
use Test::NoWarnings;

# Data directory.
my $data_dir = File::Object->new->up->dir('data/header/table_view_items')->set;

# Test.
my $obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('VIEW1.DWG')->s,
);
is($obj->header->table_view->items, 0, 'Number of items in view table (0).');

# Test.
$obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('VIEW2.DWG')->s,
);
is($obj->header->table_view->items, 1, 'Number of items in view table (1).');

# Test.
$obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('VIEW3.DWG')->s,
);
is($obj->header->table_view->items, 2, 'Number of items in view table (2).');
