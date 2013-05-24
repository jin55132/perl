#!/usr/bin/env perl

use 5.010;
use File::Basename;
use File::Spec;
my $dir = $ARGV[0];
if (! defined $dir) {
	$dir = ".";
}


my $output_path = "$dir/" . "output.txt";
say $output_path;
opendir DH, $dir or die "invalid dir";
open OUTPUT, '>', $output_path or die "invalid output file";


foreach my $file (readdir DH) {
	next if $file =~ /^\./;

	my $base = basename $file;

	(my $out = $base) =~ s/\.[^.]+$//;


	say OUTPUT  $out;
}


closedir DH;
close OUTPUT;