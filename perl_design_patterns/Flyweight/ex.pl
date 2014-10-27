#! /usr/bin/env perl

use strict;
use warnings;
use FindBin::libs;
use Data::Dumper;

use Font;
use FontFactory;

my $name = 'HP';
my $size = 15;

my $font1 = FontFactory->new();
warn Dumper $font1->create( $name, $size );

my $font2 = FontFactory->new()->create( $name, $size );
warn Dumper $font2;

1;
