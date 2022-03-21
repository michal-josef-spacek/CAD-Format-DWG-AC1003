use strict;
use warnings;

use CAD::Format::DWG::AC1003;
use File::Object;
use Test::More 'tests' => 3;
use Test::NoWarnings;

# Data directory.
my $data_dir = File::Object->new->up->dir('data/header/dim_extension_line_extend')->set;

# Test.
my $obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('DIMEXE1.DWG')->s,
);
is($obj->header->variables->dim_extension_line_extend, 0.18, 'Dimension extension line extend (0.18 - default).');

# Test.
$obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('DIMEXE2.DWG')->s,
);
is($obj->header->variables->dim_extension_line_extend, 1.2345, 'Dimension extension line extend (1.2345).');
