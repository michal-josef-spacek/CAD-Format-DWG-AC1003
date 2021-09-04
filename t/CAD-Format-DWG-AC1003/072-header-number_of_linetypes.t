use strict;
use warnings;

use CAD::Format::DWG::AC1003;
use File::Object;
use Test::More 'tests' => 4;
use Test::NoWarnings;

# Data directory.
my $data_dir = File::Object->new->up->dir('data/header/number_of_linetypes')->set;

# Test.
my $obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('LT1.DWG')->s,
);
is($obj->header->number_of_linetypes, 1, '1 linetype (blank file).');

# Test.
$obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('LT2.DWG')->s,
);
is($obj->header->number_of_linetypes, 2, '2 linetypes (one added).');

# Test.
$obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('LT3.DWG')->s,
);
is($obj->header->number_of_linetypes, 3, '3 linetypes (two added).');
