use strict;
use warnings;

use CAD::Format::DWG::AC1003;
use File::Object;
use Test::More 'tests' => 3;
use Test::NoWarnings;

# Data directory.
my $data_dir = File::Object->new->up->dir('data/header/dim_arrowhead_size')->set;

# Test.
my $obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('DAH1.DWG')->s,
);
is($obj->header->variables->dim_arrowhead_size, 0.18, 'Dimension arrowhead size (0.18 - default).');

# Test.
$obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('DAH2.DWG')->s,
);
is($obj->header->variables->dim_arrowhead_size, 1.2345, 'Dimension arrowhead size (1.2345).');
