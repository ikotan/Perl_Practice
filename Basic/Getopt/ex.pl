#! /usr/bin/env perl

use strict;
use warnings;
use Data::Dumper::Names;

use MyCmd;

my $daemon = MyCmd->new_with_options();
warn Dumper $daemon;

if ( my ($command) = @{ $daemon->extra_argv } ) {
  $daemon->start   if $command eq 'start';
  $daemon->status  if $command eq 'status';
  $daemon->restart if $command eq 'restart';
  $daemon->stop    if $command eq 'stop';

  warn( $daemon->status_message );
  exit( $daemon->exit_code );
}

1;
