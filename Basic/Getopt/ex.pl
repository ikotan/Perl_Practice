#! /usr/bin/env perl

use strict;
use warnings;
use Data::Dumper::Names;

use MyCmd;

my $cmd = MyCmd->new_with_options();
warn Dumper $cmd;

1;
