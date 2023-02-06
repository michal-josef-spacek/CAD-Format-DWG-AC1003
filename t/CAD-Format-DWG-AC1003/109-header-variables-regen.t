use strict;
use warnings;

use CAD::Format::DWG::AC1003;
use File::Object;
use Test::More 'tests' => 3;
use Test::NoWarnings;

# Data directory.
my $data_dir = File::Object->new->up->dir('data/header/regen')->set;

# Test.
my $obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('REGEN_ON.DWG')->s,
);
is($obj->header->variables->regen, 1, 'Regen (1).');

# Test.
$obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('REGEN_OFF.DWG')->s,
);
is($obj->header->variables->regen, 0, 'Regen (0).');
