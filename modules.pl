#!/usr/bin/env perl

use 5.014;

use File::Basename qw / /;
#use File::Basename qw ();


my $name = "/home/fred/flintstone\n/brontosaurus";
my $basename = $name =~ s#.*/##rs; # 

say $basename;

$basename = basename $name;

say $basename;

use File::Basename qw/ /; # import no function names
#my $betty = &dirname($wilma); # uses your own subroutine &dirname
# (not shown)
my $name = "/usr/local/bin/perl";
my $dirname = File::Basename::dirname $name; # dirname from the module



