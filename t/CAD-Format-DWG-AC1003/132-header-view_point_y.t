use strict;
use warnings;

use CAD::Format::DWG::AC1003;
use File::Object;
use Test::More 'tests' => 5;
use Test::NoWarnings;

# Data directory.
my $data_dir = File::Object->new->up->dir('data/header/view_point')->set;

# Test.
my $obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('VP1.DWG')->s,
);
is($obj->header->variables->view_point->y, 0, 'View point y (0 - default).');

# Test.
$obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('VP2.DWG')->s,
);
is($obj->header->variables->view_point->y, 2, 'View point y (2).');

# Test.
$obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('VP3.DWG')->s,
);
is($obj->header->variables->view_point->y, 0, 'View point y (0 - default).');

# Test.
$obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('VP4.DWG')->s,
);
is($obj->header->variables->view_point->y, 0, 'View point y (0 - default).');
