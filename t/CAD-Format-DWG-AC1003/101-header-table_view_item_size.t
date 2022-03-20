use strict;
use warnings;

use CAD::Format::DWG::AC1003;
use File::Object;
use Test::More 'tests' => 4;
use Test::NoWarnings;

# Data directory.
my $data_dir = File::Object->new->up->dir('data/header/table_view_item_size')->set;

# Test.
my $obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('VIEW1.DWG')->s,
);
is($obj->header->table_view->item_size, 92, 'Size of item in view table (92).');

# Test.
$obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('VIEW2.DWG')->s,
);
is($obj->header->table_view->item_size, 92, 'Size of item in view table (92).');

# Test.
$obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('VIEW3.DWG')->s,
);
is($obj->header->table_view->item_size, 92, 'Size of item in view table (92).');
