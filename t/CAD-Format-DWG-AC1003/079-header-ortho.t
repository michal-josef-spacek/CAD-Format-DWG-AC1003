use strict;
use warnings;

use CAD::Format::DWG::AC1003;
use File::Object;
use Test::More 'tests' => 3;
use Test::NoWarnings;

# Data directory.
my $data_dir = File::Object->new->up->dir('data/header/ortho')->set;

# Test.
my $obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('ORTHO_OF.DWG')->s,
);
is($obj->header->variables->ortho, 0, 'Ortho (0).');

# Test.
$obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('ORTHO_ON.DWG')->s,
);
is($obj->header->variables->ortho, 1, 'Ortho (1).');
