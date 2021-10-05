use strict;
use warnings;

use CAD::Format::DWG::AC1003;
use File::Object;
use Test::More 'tests' => 3;
use Test::NoWarnings;

# Data directory.
my $data_dir = File::Object->new->up->dir('data/header/angle_base')->set;

# Test.
my $obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('AB1.DWG')->s,
);
is($obj->header->angle_base, 0.0349065850398866, 'Angle base in radians (0.0349065850398866 = 2 deg).');

# Test.
$obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('AB2.DWG')->s,
);
is($obj->header->angle_base, 0.0523598775598299, 'Angle base in radians (0.0523598775598299 = 3 deg).');
