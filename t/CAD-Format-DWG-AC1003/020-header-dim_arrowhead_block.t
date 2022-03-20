use strict;
use warnings;

use CAD::Format::DWG::AC1003;
use File::Object;
use Test::More 'tests' => 4;
use Test::NoWarnings;

# Data directory.
my $data_dir = File::Object->new->up->dir('data/header/dim_arrowhead_block')->set;

# Test.
my $obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('DIMBLK1.DWG')->s,
);
my $dim_arrowhead_block = unpack 'Z*', $obj->header->variables->dim_arrowhead_block;
is($dim_arrowhead_block, '',
	'Dimension arrowhead block (\'\' - default).');

# Test.
$obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('DIMBLK2.DWG')->s,
);
$dim_arrowhead_block = unpack 'Z*', $obj->header->variables->dim_arrowhead_block;
is($dim_arrowhead_block, 'DOT', 'Dimension arrowhead block (DOT).');

# Test.
$obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('DIMBLK3.DWG')->s,
);
$dim_arrowhead_block = unpack 'Z*', $obj->header->variables->dim_arrowhead_block;
is($dim_arrowhead_block, 'ABCDEFGHIJKLMNOPQRSTUVWXYZ01234',
	'Dimension arrowhead block (ABCDEFGHIJKLMNOPQRSTUVWXYZ01234 - maximum length).');
