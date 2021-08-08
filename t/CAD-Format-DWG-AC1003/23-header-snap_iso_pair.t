use strict;
use warnings;

use CAD::Format::DWG::AC1003;
use File::Object;
use Test::More 'tests' => 3;
use Test::NoWarnings;

# Data directory.
my $data_dir = File::Object->new->up->dir('data/header/snap')->set;

# Test.
my $obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('SNAP_ISO_PAIR_ON.DWG')->s,
);
is($obj->header->snap_iso_pair, 1, 'Span iso pair (1).');

# Test.
$obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('SNAP_ON.DWG')->s,
);
is($obj->header->snap_iso_pair, 0, 'Span iso pair (0).');
