use strict;
use warnings;

use CAD::Format::DWG::AC1003;
use File::Object;
use Test::More 'tests' => 5;
use Test::NoWarnings;

# Data directory.
my $data_dir = File::Object->new->up->dir('data/header/current_color')->set;

# Test.
my $obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('CC1.DWG')->s,
);
is($obj->header->variables->current_color, 256, 'Current color (256 - by layer - default).');

# Test.
$obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('CC2.DWG')->s,
);
is($obj->header->variables->current_color, 0, 'Current color (0 - by block).');

# Test.
$obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('CC3.DWG')->s,
);
is($obj->header->variables->current_color, 1, 'Current color (1 - red).');

# Test.
$obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('CC4.DWG')->s,
);
is($obj->header->variables->current_color, 255, 'Current color (255).');
