use strict;
use warnings;

use CAD::Format::DWG::AC1003;
use File::Object;
use Test::More 'tests' => 21;
use Test::NoWarnings;

# Data directory.
my $data_dir = File::Object->new->up->dir('data/entity/arc')->set;

# Test.
note("File 'ARC1.DWG'");
my $obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('ARC1.DWG')->s,
);
my $entity1 = $obj->entities->entities->[0];
isa_ok($entity1, 'CAD::Format::DWG::AC1003::Entity');
is($entity1->entity_type, 8, 'Get entity type (8).');
my $arc1_data = $entity1->data;
my $entity_common = $arc1_data->entity_common;
is($entity_common->entity_layer_index, 0, 'Arc layer index (0).');
is($entity_common->entity_size, 48, 'Entity size (48).');
is($arc1_data->center_point->x, -4.09807621135332, 'Start point of arc x (-4.09807621135332).');
is($arc1_data->center_point->y, 7.09807621135332, 'Start point of arc y (7.09807621135332).');
is($arc1_data->radius, 8.19615242270663, 'Radius of arc (8.19615242270663).');
is($arc1_data->angle_from, 5.23598775598299, 'Angle from of arc (5.23598775598299).');
is($arc1_data->angle_to, 5.75958653158129, 'Angle to of arc (5.75958653158129).');
my $entities = @{$obj->entities->entities};
is($entities, 1, 'Number of entities (1).');

# Test.
note("File 'ARC2.DWG'");
$obj = CAD::Format::DWG::AC1003->from_file(
	$data_dir->file('ARC2.DWG')->s,
);
$entity1 = $obj->entities->entities->[0];
isa_ok($entity1, 'CAD::Format::DWG::AC1003::Entity');
is($entity1->entity_type, 8, 'Get entity type (8).');
$arc1_data = $entity1->data;
$entity_common = $arc1_data->entity_common;
is($entity_common->entity_layer_index, 0, 'Arc layer index (0).');
is($entity_common->entity_size, 48, 'Entity size (48).');
is($arc1_data->center_point->x, -0.0839514779065636, 'Start point of arc x (-0.0839514779065636).');
is($arc1_data->center_point->y, 3.08395147790656, 'Start point of arc y (3.08395147790656).');
is($arc1_data->radius, 3.08509393191273, 'Radius of arc (3.08509393191273).');
is($arc1_data->angle_from, 4.7396043080545, 'Angle from of arc (4.7396043080545).');
is($arc1_data->angle_to, 0.611651371825311, 'Angle to of arc (0.611651371825311).');
$entities = @{$obj->entities->entities};
is($entities, 2, 'Number of entities (2).');
