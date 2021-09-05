use strict;
use warnings;

use CAD::Format::DWG::AC1003;
use File::Object;
use Test::More 'tests' => 4;
use Test::NoWarnings;

# Data directory.
my $data_dir = File::Object->new->up->dir('data/header/number_of_views')->set;

# Test.
my $obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('VIEW1.DWG')->s,
);
is($obj->header->number_of_views, 0, 'No view (blank file).');

# Test.
$obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('VIEW2.DWG')->s,
);
is($obj->header->number_of_views, 1, '1 view (one added).');

# Test.
$obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('VIEW3.DWG')->s,
);
is($obj->header->number_of_views, 2, '2 views (two added).');
