#! /usr/bin/env perl
use strict;
use warnings;
use FindBin::libs;
use Data::Dumper;

use Visitor::LeftToRight;
use Visitor::RightToLeft;

my @list = ( 1 .. 10 );
warn Dumper \@list;

my $lr = Visitor::LeftToRight->new();
my $rl = Visitor::RightToLeft->new();
warn Dumper $lr;
warn Dumper $rl;

$lr->visit_array( \@list );
$rl->visit_array( \@list );

1;

