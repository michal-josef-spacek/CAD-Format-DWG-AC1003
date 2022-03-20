use strict;
use warnings;

use CAD::Format::DWG::AC1003;
use File::Object;
use Test::More 'tests' => 3;
use Test::NoWarnings;

# Data directory.
my $data_dir = File::Object->new->up->dir('data/header/user_timer')->set;

# Test.
my $obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('UT1.DWG')->s,
);
is($obj->header->variables->user_timer, '1', 'User timer (1 - on - default).');

# Test.
$obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('UT2.DWG')->s,
);
is($obj->header->variables->user_timer, '0', 'User timer (0 - off).');
