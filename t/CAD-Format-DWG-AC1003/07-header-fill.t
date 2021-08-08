use strict;
use warnings;

use CAD::Format::DWG::AC1003;
use File::Object;
use Test::More 'tests' => 3;
use Test::NoWarnings;

# Data directory.
my $data_dir = File::Object->new->up->dir('data/header/fill')->set;

# Test.
my $obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('FILL_ON.DWG')->s,
);
is($obj->header->fill, 1, 'Fill (1).');

# Test.
$obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('FILL_OFF.DWG')->s,
);
is($obj->header->fill, 0, 'Fill (0).');
