use strict;
use warnings;

use CAD::Format::DWG::AC1003;
use File::Object;
use Test::More 'tests' => 2;
use Test::NoWarnings;

# Data directory.
my $data_dir = File::Object->new->up->dir('data/header/drawing')->set;

# Test.
my $obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('DRAWING.DWG')->s,
);
my $drawing_second_x = unpack 'd<', $obj->header->drawing_second_x;
is($drawing_second_x, 3, 'Drawing second x (3).');