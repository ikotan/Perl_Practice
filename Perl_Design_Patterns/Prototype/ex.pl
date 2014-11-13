#! /usr/bin/env perl

use strict;
use warnings;
use FindBin::libs;
use Data::Dumper;

use Prototype::Producer;
use Fruit;

my $apple_producer
    = Prototype::Producer->new( prototype => Fruit->new( name => 'apple' ) );

my $banana_producer
    = Prototype::Producer->new( prototype => Fruit->new( name => 'banana' ) );

warn Dumper $apple_producer;
warn Dumper $banana_producer;

my $apple  = $apple_producer->create;
my $banana = $banana_producer->create;

warn Dumper $apple;
warn Dumper $banana;
warn Dumper $apple->name;
warn Dumper $banana->name;

