use strict;
use warnings;

use CAD::Format::DWG::AC1003;
use File::Object;
use Test::More 'tests' => 3;
use Test::NoWarnings;

# Data directory.
my $data_dir = File::Object->new->up->dir('data/header/dim_extension_line_offset')->set;

# Test.
my $obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('DEX1.DWG')->s,
);
my $dim_extension_line_offset = unpack 'd<', $obj->header->dim_extension_line_offset;
is($dim_extension_line_offset, 0.0625, 'Dimension extension line offset (0.0625 - default).');

# Test.
$obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('DEX2.DWG')->s,
);
$dim_extension_line_offset = unpack 'd<', $obj->header->dim_extension_line_offset;
is($dim_extension_line_offset, 1.2345, 'Dimension extension line offset (1.2345).');
