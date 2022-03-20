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
is($obj->header->variables->insertion_base->y, 0, 'Insertion base (y) (0)');

# Test.
$obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('BASE_Y.DWG')->s,
);
is($obj->header->variables->insertion_base->y, 1234.5678, 'Insertion base (y) (1234.5678).');

# Test.
$obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('BASE_Z.DWG')->s,
);
is($obj->header->variables->insertion_base->y, 0, 'Insertion base (y) (0).');
