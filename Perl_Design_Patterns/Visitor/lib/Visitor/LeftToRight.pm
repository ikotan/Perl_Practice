package Visitor::LeftToRight;

use Moose;
extends 'Visitor';

__PACKAGE__->meta->make_immutable;

no Moose;

sub visit_value {
  print "$_[1]\n";
}

sub visit_array {
  my ( $self, $ref ) = @_;
  for my $x (@$ref) {
    $self->visit_value($x);
  }
}

1;
