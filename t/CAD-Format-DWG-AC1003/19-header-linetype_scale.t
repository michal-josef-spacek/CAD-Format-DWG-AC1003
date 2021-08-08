use strict;
use warnings;

use CAD::Format::DWG::AC1003;
use File::Object;
use Test::More 'tests' => 3;
use Test::NoWarnings;

# Data directory.
my $data_dir = File::Object->new->up->dir('data/header/linetype_scale')->set;

# Test.
my $obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('LTSCALE1.DWG')->s,
);
my $linetype_scale = unpack 'd<', $obj->header->linetype_scale;
is($linetype_scale, 1, 'Linetype scale (1).');

# Test.
$obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('LTSCALE2.DWG')->s,
);
$linetype_scale = unpack 'd<', $obj->header->linetype_scale;
is($linetype_scale, 2, 'Linetype scale (2).');
