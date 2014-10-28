package Prototype::Producer;

use Moose;
use Storable;

has 'prototype' => (
  is       => 'rw',
  isa      => 'Object',
  required => 1,
);

__PACKAGE__->meta->make_immutable;

no Moose;

sub create {
  my $self = shift;
  return Storable::dclone( $self->prototype );
}

1;
