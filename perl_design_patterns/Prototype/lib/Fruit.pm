package Fruit;

use Moose;

has 'name' => (
  is       => 'rw',
  isa      => 'Str',
  required => 1,
);

__PACKAGE__->meta->make_immutable;

no Moose;

1;
