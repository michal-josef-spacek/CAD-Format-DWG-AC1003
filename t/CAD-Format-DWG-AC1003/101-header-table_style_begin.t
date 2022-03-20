use strict;
use warnings;

use CAD::Format::DWG::AC1003;
use File::Object;
use Test::More 'tests' => 3;
use Test::NoWarnings;

# Data directory.
my $data_dir = File::Object->new->up->dir('data/header/table_style_begin')->set;

# Test.
my $obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('S1.DWG')->s,
);
is($obj->header->table_style->begin, 1019, 'Begin address of style table (1019).');

# Test.
$obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('S2.DWG')->s,
);
is($obj->header->table_style->begin, 1019, 'Begin address of style table (1019).');
