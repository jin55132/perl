#!/usr/bin/env perl

use 5.010;
use Cwd();

#my $dir = <STDIN>;
chomp (my $dir = <STDIN>);

if($dir =~ /^\s*$/) {
	chdir or die "failed to chdir";
} else {
	chdir $dir or die "failed to chdir"; 
}


# my @files = glob ".* *"; #including starting with .
# sort @files; #globbing does not need to sort;

# say "@files";

opendir DH, $dir or die "failed to opendir";

my @files;

# foreach $file (sort readdir DH) { #directory handle does not guarantee alphabetical order. (same as ls -l)
# 	next if $file =~ /^\./;
# 	push @files,$file;
# }


#say "@files";


foreach $file (readdir DH) {
	next if $file =~ /^\./;
	say readlink $file if -l $file;
#	say $file;
}