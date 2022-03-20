use strict;
use warnings;

use CAD::Format::DWG::AC1003;
use File::Object;
use Test::More 'tests' => 3;
use Test::NoWarnings;

# Data directory.
my $data_dir = File::Object->new->up->dir('data/header/sketch_type')->set;

# Test.
my $obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('SKPOLY1.DWG')->s,
);
is($obj->header->variables->sketch_type, 0, 'Sketch type (0 - default).');

# Test.
$obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('SKPOLY2.DWG')->s,
);
is($obj->header->variables->sketch_type, 1, 'Sketch type (1).');
