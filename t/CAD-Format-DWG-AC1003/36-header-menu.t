use strict;
use warnings;

use CAD::Format::DWG::AC1003;
use File::Object;
use Test::More 'tests' => 4;
use Test::NoWarnings;

# Data directory.
my $data_dir = File::Object->new->up->dir('data/header/menu')->set;

# Test.
my $obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('MENU1.DWG')->s,
);
my $menu = unpack 'Z*', $obj->header->menu;
is($menu, 'ACAD', 'Menu (ACAD - default).');

# Test.
$obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('MENU2.DWG')->s,
);
$menu = unpack 'Z*', $obj->header->menu;
is($menu, '', 'Menu (none).');

# Test.
$obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('MENU3.DWG')->s,
);
$menu = unpack 'Z*', $obj->header->menu;
is($menu, 'EXAMPLE1', 'Menu (EXAMPLE1).');
