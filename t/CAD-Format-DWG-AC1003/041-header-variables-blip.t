use strict;
use warnings;

use CAD::Format::DWG::AC1003;
use File::Object;
use Test::More 'tests' => 3;
use Test::NoWarnings;

# Data directory.
my $data_dir = File::Object->new->up->dir('data/header/blip')->set;

# Test.
my $obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('B1.DWG')->s,
);
is($obj->header->variables->blip, 1, 'Blip mode (1 - default).');

# Test.
$obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('B2.DWG')->s,
);
is($obj->header->variables->blip, 0, 'Blip mode (0).');
