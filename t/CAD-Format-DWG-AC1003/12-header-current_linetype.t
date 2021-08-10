use strict;
use warnings;

use CAD::Format::DWG::AC1003;
use File::Object;
use Test::More 'tests' => 4;
use Test::NoWarnings;

# Data directory.
my $data_dir = File::Object->new->up->dir('data/header/current_linetype')->set;

# Test.
my $obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('CL1.DWG')->s,
);
is($obj->header->current_linetype, 256, 'Current linetype (256 - by layer - default).');

# Test.
$obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('CL2.DWG')->s,
);
is($obj->header->current_linetype, 255, 'Current linetype (255 - by block).');

# Test.
$obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('CL3.DWG')->s,
);
is($obj->header->current_linetype, 2, 'Current linetype (index 2).');
