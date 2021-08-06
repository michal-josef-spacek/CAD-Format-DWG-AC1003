use strict;
use warnings;

use CAD::Format::DWG::AC1003;
use File::Object;
use Test::More 'tests' => 4;
use Test::NoWarnings;

# Data directory.
my $data_dir = File::Object->new->up->dir('data/header/number_of_entities')->set;

# Test.
my $obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('NUM0.DWG')->s,
);
is($obj->header->number_of_entities, 0, 'Zero entities (blank file).');

# Test.
$obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('NUM1.DWG')->s,
);
is($obj->header->number_of_entities, 1, '1 entity (one line).');

# Test.
$obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('NUM2.DWG')->s,
);
is($obj->header->number_of_entities, 2, '2 entities (lines).');
