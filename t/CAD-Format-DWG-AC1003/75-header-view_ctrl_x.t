use strict;
use warnings;

use CAD::Format::DWG::AC1003;
use File::Object;
use Test::More 'tests' => 2;
use Test::NoWarnings;

# Data directory.
my $data_dir = File::Object->new->up->dir('data/header/view')->set;

# Test.
my $obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('VIEW.DWG')->s,
);
my $view_ctrl_x = unpack 'd<', $obj->header->view_ctrl_x;
is($view_ctrl_x, '7.37814432989691', 'View ctrl x (7.37814432989691).');
