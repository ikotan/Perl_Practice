package MyNotifier;

use Moose;

with 'Notifier';

__PACKAGE__->meta->make_immutable;

no Moose;
use Data::Dumper;

sub notify_observers {
  my ( $self, $event ) = @_;
  foreach my $observer ( @{ $self->observers } ) {
    warn Dumper $observer;
    $observer->notify($event);
  }
}

1;
