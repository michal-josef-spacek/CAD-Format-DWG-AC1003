use strict;
use warnings;

use CAD::Format::DWG::AC1003;
use File::Object;
use Test::More 'tests' => 3;
use Test::NoWarnings;

# Data directory.
my $data_dir = File::Object->new->up->dir('data/header/text_size')->set;

# Test.
my $obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('TEXT_SIZE1.DWG')->s,
);
my $text_size = unpack 'd<', $obj->header->text_size;
is($text_size, 0.2, 'Text size (0.2 - default).');

# Test.
$obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('TEXT_SIZE2.DWG')->s,
);
$text_size = unpack 'd<', $obj->header->text_size;
is($text_size, 1.2345, 'Text size (1.2345).');
