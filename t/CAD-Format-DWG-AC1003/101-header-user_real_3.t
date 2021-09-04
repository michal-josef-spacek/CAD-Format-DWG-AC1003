use strict;
use warnings;

use CAD::Format::DWG::AC1003;
use File::Object;
use Test::More 'tests' => 3;
use Test::NoWarnings;

# Data directory.
my $data_dir = File::Object->new->up->dir('data/header/user_real_3')->set;

# Test.
my $obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('USERR31.DWG')->s,
);
my $user_real_3 = unpack 'd<', $obj->header->user_real_3;
is($user_real_3, '0', 'User real 3 (0 - default).');

# Test.
$obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('USERR32.DWG')->s,
);
$user_real_3 = unpack 'd<', $obj->header->user_real_3;
is($user_real_3, '1.2345', 'User real 3 (1.2345).');
