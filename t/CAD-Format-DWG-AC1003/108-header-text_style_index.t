use strict;
use warnings;

use CAD::Format::DWG::AC1003;
use File::Object;
use Test::More 'tests' => 4;
use Test::NoWarnings;

# Data directory.
my $data_dir = File::Object->new->up->dir('data/header/text_style_index')->set;

# Test.
my $obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('TS1.DWG')->s,
);
is($obj->header->variables->text_style_index, 0, 'Text style index (0 - default).');

# Test.
$obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('TS2.DWG')->s,
);
is($obj->header->variables->text_style_index, 1, 'Text style index (1).');

# Test.
$obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('TS3.DWG')->s,
);
is($obj->header->variables->text_style_index, 2, 'Text style index (2).');
