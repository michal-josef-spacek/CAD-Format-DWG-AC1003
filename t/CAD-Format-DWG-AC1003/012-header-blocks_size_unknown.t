use strict;
use warnings;

use CAD::Format::DWG::AC1003;
use File::Object;
use Test::More 'tests' => 2;
use Test::NoWarnings;

# Data directory.
my $data_dir = File::Object->new->up->dir('data/header/blocks_size_raw')->set;

# Test.
my $obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('BLANK.DWG')->s,
);
is($obj->header->blocks_size_unknown, 64, 'Size of blocks section - unknown part - word (64).');
