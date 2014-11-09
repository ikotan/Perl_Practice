package MyCmd;

use Moose;
use YAML();

with 'MooseX::Getopt';
with 'MooseX::ConfigFromFile';

has 'username' => (
  is       => 'rw',
  isa      => 'Str',
  required => 1,
);

has 'password' => (
  is       => 'rw',
  isa      => 'Str',
  required => 1,
);

has 'verbose' => (
  is      => 'rw',
  isa     => 'Bool',
  default => 0,
);

__PACKAGE__->meta->make_immutable;

no Moose;
use Data::Dumper::Names;

sub get_config_from_file {
  my ( $class, $file ) = @_;

  my $config = YAML::LoadFile($file);
  warn Dumper $config;
  return $config;

}


sub run {
  my $self = shift;

  my $username = $self->username;
  my $password = $self->password;
  my $verbose  = $self->verbose;

  warn Dumper $username;
  warn Dumper $password;
  warn Dumper $verbose;

}

1;

package main;
use Data::Dumper::Names;

my $cmd = MyCmd->new_with_options();
$cmd->run;

1;
