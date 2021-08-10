use strict;
use warnings;

use CAD::Format::DWG::AC1003;
use File::Object;
use Test::More 'tests' => 3;
use Test::NoWarnings;

# Data directory.
my $data_dir = File::Object->new->up->dir('data/header/trace_width')->set;

# Test.
my $obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('TRACE_WIDTH1.DWG')->s,
);
my $trace_width = unpack 'd<', $obj->header->trace_width;
is($trace_width, 0.05, 'Trace width (0.05 - default).');

# Test.
$obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('TRACE_WIDTH2.DWG')->s,
);
$trace_width = unpack 'd<', $obj->header->trace_width;
is($trace_width, 1.2345, 'Trace width (1.2345).');
