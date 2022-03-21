use strict;
use warnings;

use CAD::Format::DWG::AC1003;
use File::Object;
use Test::More 'tests' => 3;
use Test::NoWarnings;

# Data directory.
my $data_dir = File::Object->new->up->dir('data/header/fast_zoom')->set;

# Test.
my $obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('FASTZOOM1.DWG')->s,
);
is($obj->header->variables->fast_zoom, 1, 'Fast zoom (1).');

# Test.
$obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('FASTZOOM2.DWG')->s,
);
is($obj->header->variables->fast_zoom, 0, 'Fast zoom (0).');
