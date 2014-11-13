#! /usr/bin/env perl

use strict;
use warnings;
use LWP::UserAgent;
use Parallel::ForkManager;

use Data::Dumper::Names;

my @urls = qw (
  http://www0.example.com/
  http://www1.example.com/
  http://www2.example.com/
  http://www3.example.com/
  http://www4.example.com/
  http://www5.example.com/
  http://www6.example.com/
  http://www7.example.com/
  http://www8.example.com/
  http://www9.example.com/
  );

my $pm = Parallel::ForkManager->new(3);
warn Dumper $pm;

foreach my $url (@urls) {
  $pm->start and next;
  eval {
    my $uri = URI->new($url);
    my $ua  = LWP::UserAgent->new();
    $ua->mirror( $uri, $uri->host() . '.html' );
    warn Dumper $ua->mirror( $uri, $uri->host() . '.html' );
  };
  sleep 5;
  $pm->finish;
}


