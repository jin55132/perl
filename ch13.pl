#!/usr/bin/env perl

use 5.010;
use Cwd();

#my $dir = <STDIN>;
chomp (my $dir = <STDIN>);

if($dir =~ /^\s*$/) {
	chdir;
} else {
	chdir $dir; 
}
