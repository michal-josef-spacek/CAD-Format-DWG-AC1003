use strict;
use warnings;

use CAD::Format::DWG::AC1003;
use File::Object;
use Test::More 'tests' => 3;
use Test::NoWarnings;

# Data directory.
my $data_dir = File::Object->new->up->dir('data/header/dim_scale')->set;

# Test.
my $obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('DS1.DWG')->s,
);
my $dim_scale = unpack 'd<', $obj->header->dim_scale;
is($dim_scale, 1, 'Dimension scale (1 - default).');

# Test.
$obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('DS2.DWG')->s,
);
$dim_scale = unpack 'd<', $obj->header->dim_scale;
is($dim_scale, 1.2345, 'Dimension scale (1.2345).');
