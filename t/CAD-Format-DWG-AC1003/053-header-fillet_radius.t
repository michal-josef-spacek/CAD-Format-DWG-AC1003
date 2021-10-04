use strict;
use warnings;

use CAD::Format::DWG::AC1003;
use File::Object;
use Test::More 'tests' => 3;
use Test::NoWarnings;

# Data directory.
my $data_dir = File::Object->new->up->dir('data/header/fillet_radius')->set;

# Test.
my $obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('FILLET1.DWG')->s,
);
is($obj->header->fillet_radius, 0, 'Fillet radius - default (0).');

# Test.
$obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('FILLET2.DWG')->s,
);
is($obj->header->fillet_radius, 1.2345, 'Fillet radius (1.2345).');
