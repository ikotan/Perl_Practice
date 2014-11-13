package MyObserver1;

use Moose;
use Data::Dumper;

with 'Observer';

__PACKAGE__->meta->make_immutable;

no Moose;

sub notify {
  my ( $self, $event ) = @_;

  warn Dumper "MyObserver1";
}

1;
