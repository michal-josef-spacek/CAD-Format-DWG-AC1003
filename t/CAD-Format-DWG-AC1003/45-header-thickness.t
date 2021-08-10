use strict;
use warnings;

use CAD::Format::DWG::AC1003;
use File::Object;
use Test::More 'tests' => 3;
use Test::NoWarnings;

# Data directory.
my $data_dir = File::Object->new->up->dir('data/header/thickness')->set;

# Test.
my $obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('T1.DWG')->s,
);
my $thickness = unpack 'd<', $obj->header->thickness;
is($thickness, 0, 'Thickness (0 - default).');

# Test.
$obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('T2.DWG')->s,
);
$thickness = unpack 'd<', $obj->header->thickness;
is($thickness, 1.2345, 'Thickness (1.2345).');
