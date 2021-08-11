use strict;
use warnings;

use CAD::Format::DWG::AC1003;
use File::Object;
use Test::More 'tests' => 4;
use Test::NoWarnings;

# Data directory.
my $data_dir = File::Object->new->up->dir('data/header/user_integer_4')->set;

# Test.
my $obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('U1.DWG')->s,
);
is($obj->header->user_integer_4, '0', 'User integer (0 - default).');

# Test.
$obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('U2.DWG')->s,
);
is($obj->header->user_integer_4, '-32768', 'User integer (-32768 - minimal value).');

# Test.
$obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('U3.DWG')->s,
);
is($obj->header->user_integer_4, '32767', 'User integer (32767 - maximal value).');
