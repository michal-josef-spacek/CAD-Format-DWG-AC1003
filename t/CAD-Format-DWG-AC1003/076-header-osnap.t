use strict;
use warnings;

use CAD::Format::DWG::AC1003;
use File::Object;
use Test::More 'tests' => 12;
use Test::NoWarnings;

# Data directory.
my $data_dir = File::Object->new->up->dir('data/header/osnap')->set;

# Test.
my $obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('OSNAP_NON.DWG')->s,
);
is($obj->header->variables->osnap, 0, 'Osnap mode (0).');

# Test.
$obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('OSNAP_END.DWG')->s,
);
is($obj->header->variables->osnap, 1, 'Osnap mode (1).');

# Test.
$obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('OSNAP_MID.DWG')->s,
);
is($obj->header->variables->osnap, 2, 'Osnap mode (2).');

# Test.
$obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('OSNAP_CEN.DWG')->s,
);
is($obj->header->variables->osnap, 4, 'Osnap mode (4).');

# Test.
$obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('OSNAP_NOD.DWG')->s,
);
is($obj->header->variables->osnap, 8, 'Osnap mode (8).');

# Test.
$obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('OSNAP_QUA.DWG')->s,
);
is($obj->header->variables->osnap, 16, 'Osnap mode (16).');

# Test.
$obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('OSNAP_INT.DWG')->s,
);
is($obj->header->variables->osnap, 32, 'Osnap mode (32).');

# Test.
$obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('OSNAP_INS.DWG')->s,
);
is($obj->header->variables->osnap, 64, 'Osnap mode (64).');

# Test.
$obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('OSNAP_PER.DWG')->s,
);
is($obj->header->variables->osnap, 128, 'Osnap mode (128).');

# Test.
$obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('OSNAP_TAN.DWG')->s,
);
is($obj->header->variables->osnap, 256, 'Osnap mode (256).');

# Test.
$obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('OSNAP_NEA.DWG')->s,
);
is($obj->header->variables->osnap, 512, 'Osnap mode (512).');
