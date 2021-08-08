use strict;
use warnings;

use CAD::Format::DWG::AC1003;
use File::Object;
use Test::More 'tests' => 3;
use Test::NoWarnings;

# Data directory.
my $data_dir = File::Object->new->up->dir('data/header/qtext')->set;

# Test.
my $obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('QTEXT_OF.DWG')->s,
);
is($obj->header->qtext, 0, 'Qtext (0).');

# Test.
$obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('QTEXT_ON.DWG')->s,
);
is($obj->header->qtext, 1, 'Qtext (1).');
