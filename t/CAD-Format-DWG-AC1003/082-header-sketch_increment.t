use strict;
use warnings;

use CAD::Format::DWG::AC1003;
use File::Object;
use Test::More 'tests' => 3;
use Test::NoWarnings;

# Data directory.
my $data_dir = File::Object->new->up->dir('data/header/sketch_increment')->set;

# Test.
my $obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('SKETCH_INCREMENT1.DWG')->s,
);
is($obj->header->variables->sketch_increment, 0.1, 'Sketch increment (0.1 - default).');

# Test.
$obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('SKETCH_INCREMENT2.DWG')->s,
);
is($obj->header->variables->sketch_increment, 1.2345, 'Sketch increment (1.2345).');
