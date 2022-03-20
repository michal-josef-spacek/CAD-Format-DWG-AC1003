use strict;
use warnings;

use CAD::Format::DWG::AC1003;
use File::Object;
use Test::More 'tests' => 3;
use Test::NoWarnings;

# Data directory.
my $data_dir = File::Object->new->up->dir('data/header/polyline_width')->set;

# Test.
my $obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('PW1.DWG')->s,
);
is($obj->header->polyline_width, 0, 'Polyline width (0 - default).');

# Test.
$obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('PW2.DWG')->s,
);
is($obj->header->polyline_width, 1.2345, 'Polyline width (1.2345).');
