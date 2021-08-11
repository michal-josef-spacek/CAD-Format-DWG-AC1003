use strict;
use warnings;

use CAD::Format::DWG::AC1003;
use File::Object;
use Test::More 'tests' => 4;
use Test::NoWarnings;

# Data directory.
my $data_dir = File::Object->new->up->dir('data/header/drag')->set;

# Test.
my $obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('DRAG_OFF.DWG')->s,
);
is($obj->header->drag, 0, 'Drag mode (0).');

# Test.
$obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('DRAG_ON.DWG')->s,
);
is($obj->header->drag, 1, 'Drag mode (1).');

# Test.
$obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('DRAG_AUTO.DWG')->s,
);
is($obj->header->drag, 2, 'Drag mode (2).');
