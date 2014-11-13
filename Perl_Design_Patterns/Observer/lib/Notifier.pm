package Notifier;

use Moose::Role;
use MooseX::AttributeHelpers;

requires 'notify_observers';

has 'observers' => (
  metaclass => 'Collection::Array',
  is        => 'rw',
  isa       => 'ArrayRef[Object]',
  default  => sub { [] },
  provides => { push => 'add_observer' },
);

no Moose::Role;

# sub notify_observers {
  # my ( $self, $event ) = @_;
  # foreach my $observer ( $self->observers ) {
    # $observer->notify($event);
  # }
# }

1;

