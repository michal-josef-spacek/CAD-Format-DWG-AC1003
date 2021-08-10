use strict;
use warnings;

use CAD::Format::DWG::AC1003;
use File::Object;
use Test::More 'tests' => 4;
use Test::NoWarnings;

# Data directory.
my $data_dir = File::Object->new->up->dir('data/header/attributes')->set;

# Test.
my $obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('A1.DWG')->s,
);
is($obj->header->attributes, 1, 'Attributes (1 - normal - default).');

# Test.
$obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('A2.DWG')->s,
);
is($obj->header->attributes, 0, 'Attributes (0 - off).');

# Test.
$obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('A3.DWG')->s,
);
is($obj->header->attributes, 2, 'Attributes (2 - on).');
