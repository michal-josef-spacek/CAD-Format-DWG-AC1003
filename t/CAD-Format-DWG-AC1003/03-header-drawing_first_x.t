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
my $drawing_first_x = unpack 'd<', $obj->header->drawing_first_x;
is($drawing_first_x, 1, 'Drawing first x (1).');
