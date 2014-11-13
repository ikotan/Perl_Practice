#! /usr/bin/env perl

use strict;
use warnings;
use FindBin::libs;
use Data::Dumper;

use MyIterator::File;

my $i = MyIterator::File->new( file => 'data.txt' );

while ( my $x = $i->next ) {
  warn Dumper $x;
}

1;
