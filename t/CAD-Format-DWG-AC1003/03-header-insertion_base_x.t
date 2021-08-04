use strict;
use warnings;

use CAD::Format::DWG::AC1003;
use File::Object;
use Test::More 'tests' => 4;
use Test::NoWarnings;

# Data directory.
my $data_dir = File::Object->new->up->dir('data/header/base')->set;

# Test.
my $obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('BASE_X.DWG')->s,
);
my $insertion_base_x = unpack 'd<', $obj->header->insertion_base_x;
is($insertion_base_x, 1234.1234, 'Insertion base (x) (1234.1234)');

# Test.
$obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('BASE_Y.DWG')->s,
);
$insertion_base_x = unpack 'd<', $obj->header->insertion_base_x;
is($insertion_base_x, 0, 'Insertion base (x) (0).');

# Test.
$obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('BASE_Z.DWG')->s,
);
$insertion_base_x = unpack 'd<', $obj->header->insertion_base_x;
is($insertion_base_x, 0, 'Insertion base (x) (0).');
