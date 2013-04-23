#!/usr/bin/env perl

use 5.010;


#chdir "c:/2" or die "$!";
#chdir "~Jin" or die "$!"; # User's home directory, OS independent


my @all_files = glob ".* *"; # patterns with space
#say @all_files;

@all_files = <*>;
my $dir = "c:/";
my @dir_files =<$dir/* $dir/.*>; 

say @dir_files;

my @files = <FRED/*>; # glob
my @lines = <FRED>; # file handle
my $name = "FRED";
my @files2 = <$name/*>; # glob
my @lines = <$name>; # file handle

$lines = readline FRED; # explicit file handle
$lines = readline $name; # file handle

my $dir_to_process = "d:/";
opendir DH, $dir_to_process or die "$!";
foreach $file (readdir DH)
{
	next if $file =~ /^\./;
	#next if $file eq "." or $file eq "..";
	say "$dir_to_process" . "$file";

}



