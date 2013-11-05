#!/usr/bin/env perl

use 5.010;

my $dino = 0;

eval { $barney = $fred  / $dino }; # divide by 0? not interrupted with eval
say $@; # exception message goes into $@


