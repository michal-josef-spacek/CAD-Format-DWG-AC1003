use strict;
use warnings;

use CAD::Format::DWG::AC1003;
use File::Object;
use Test::More 'tests' => 4;
use Test::NoWarnings;

# Data directory.
my $data_dir = File::Object->new->up->dir('data/header/point_mode')->set;

# Test.
my $obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('PM1.DWG')->s,
);
is($obj->header->point_mode, 0, 'Point mode (0).');

# Test.
$obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('PM2.DWG')->s,
);
is($obj->header->point_mode, 1, 'Point mode (1).');

# Test.
$obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('PM3.DWG')->s,
);
is($obj->header->point_mode, 2, 'Point mode (2).');
