use strict;
use warnings;

use CAD::Format::DWG::AC1003;
use File::Object;
use Test::More 'tests' => 3;
use Test::NoWarnings;

# Data directory.
my $data_dir = File::Object->new->up->dir('data/header/display_precision')->set;

# Test.
my $obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('LUPREC1.DWG')->s,
);
is($obj->header->display_precision, 4, 'Display precision - default (4).');

# Test.
$obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('LUPREC2.DWG')->s,
);
is($obj->header->display_precision, 5, 'Display precision (5).');
