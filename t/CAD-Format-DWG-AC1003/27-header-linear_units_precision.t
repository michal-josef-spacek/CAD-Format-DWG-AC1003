use strict;
use warnings;

use CAD::Format::DWG::AC1003;
use File::Object;
use Test::More 'tests' => 3;
use Test::NoWarnings;

# Data directory.
my $data_dir = File::Object->new->up->dir('data/header/linear_units_precision')->set;

# Test.
my $obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('LUPREC1.DWG')->s,
);
is($obj->header->linear_units_precision, 4, 'Linear units precision - default (4).');

# Test.
$obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('LUPREC2.DWG')->s,
);
is($obj->header->linear_units_precision, 5, 'Linear units precision (5).');
