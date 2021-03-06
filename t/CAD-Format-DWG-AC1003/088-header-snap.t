use strict;
use warnings;

use CAD::Format::DWG::AC1003;
use File::Object;
use Test::More 'tests' => 3;
use Test::NoWarnings;

# Data directory.
my $data_dir = File::Object->new->up->dir('data/header/snap')->set;

# Test.
my $obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('SNAP_ON.DWG')->s,
);
is($obj->header->variables->snap, 1, 'Snap (1).');

# Test.
$obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('SNAP_OFF.DWG')->s,
);
is($obj->header->variables->snap, 0, 'Snap (0).');
