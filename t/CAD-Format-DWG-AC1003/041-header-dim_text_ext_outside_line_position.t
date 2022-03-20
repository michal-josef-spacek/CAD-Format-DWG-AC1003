use strict;
use warnings;

use CAD::Format::DWG::AC1003;
use File::Object;
use Test::More 'tests' => 3;
use Test::NoWarnings;

# Data directory.
my $data_dir = File::Object->new->up->dir('data/header/dim_text_ext_outside_line_position')->set;

# Test.
my $obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('D1.DWG')->s,
);
is($obj->header->variables->dim_text_ext_outside_line_position, 1,
	'Dimension text position outside extension lines (1 - on - default).');

# Test.
$obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('D2.DWG')->s,
);
is($obj->header->variables->dim_text_ext_outside_line_position, 0,
	'Dimension text position outside extension lines (0 - off).');
