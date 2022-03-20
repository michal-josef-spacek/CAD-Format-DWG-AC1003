use strict;
use warnings;

use CAD::Format::DWG::AC1003;
use File::Object;
use Test::More 'tests' => 3;
use Test::NoWarnings;

# Data directory.
my $data_dir = File::Object->new->up->dir('data/header/point_size')->set;

# Test.
my $obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('PS1.DWG')->s,
);
is($obj->header->variables->point_size, 0, 'Point size (0).');

# Test.
$obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('PS2.DWG')->s,
);
is($obj->header->variables->point_size, 1.2345, 'Point size (1.2345).');
