use strict;
use warnings;

use CAD::Format::DWG::AC1003;
use File::Object;
use Test::More 'tests' => 3;
use Test::NoWarnings;

# Data directory.
my $data_dir = File::Object->new->up->dir('data/header/circle_zoom_percent')->set;

# Test.
my $obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('CZP1.DWG')->s,
);
is($obj->header->variables->circle_zoom_percent, 100, 'Circle zoom percent (100 - default).');

# Test.
$obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('CZP2.DWG')->s,
);
is($obj->header->variables->circle_zoom_percent, 20000, 'Circle zoom percent (20000).');
