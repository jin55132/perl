#!/usr/bin/perl 

use 5.010;

my $dir_to_process = "/Users/operator1732/";
opendir DH, $dir_to_process or die "$!";
foreach $file (readdir DH)
{
	next if $file =~ /^\./;
	#next if $file eq "." or $file eq "..";
	$name = $dir_to_process . $file;
	next unless -d $name;
	say "$name";
}
