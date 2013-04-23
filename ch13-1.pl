#!/usr/bin/env perl

use 5.010;
use File::Basename;
use File::Spec;

die "two args necessary" if scalar @ARGV != 2;

my ($src, $dest) = @ARGV;


if( -d $dest )
{
	$base = basename $src;
	$dest = File::Spec->catfile($dest, $base);
}



#rename $src, $dest or die "failed to rename";


link $src, $dest or die "hard link failed\n";;