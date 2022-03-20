use strict;
use warnings;

use CAD::Format::DWG::AC1003;
use File::Object;
use Test::More 'tests' => 3;
use Test::NoWarnings;

# Data directory.
my $data_dir = File::Object->new->up->dir('data/header/user_real_1')->set;

# Test.
my $obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('USERR11.DWG')->s,
);
is($obj->header->variables->user_real_1, '0', 'User real 1 (0 - default).');

# Test.
$obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('USERR12.DWG')->s,
);
is($obj->header->variables->user_real_1, '1.2345', 'User real 1 (1.2345).');
