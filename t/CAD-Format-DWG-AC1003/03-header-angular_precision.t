use strict;
use warnings;

use CAD::Format::DWG::AC1003;
use File::Object;
use Test::More 'tests' => 3;
use Test::NoWarnings;

# Data directory.
my $data_dir = File::Object->new->up->dir('data/header/angular_precision')->set;

# Test.
my $obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('AUPREC1.DWG')->s,
);
is($obj->header->angular_precision, 0, 'Angular precision (0).');

# Test.
$obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('AUPREC2.DWG')->s,
);
is($obj->header->angular_precision, 2, 'Angular precision (2).');
