#!/usr/bin/env perl
## Copyright (C) 20XX by Yours Truly

use 5.010;

my %dolist;
foreach(@ARGV)
{
	$dolist{$_} = 1;
}

while(<>)
{
	if(/\A## Copyright/)
	{
		say STDOUT $ARGV;
		delete $dolist{$ARGV};
	}
}

@ARGV = sort keys %dolist;

$^I = ".bak"; # make backups
while (<>) {
	if (/\A#!/) { # is it the shebang line?
		$_ .= "## Copyright (C) 20XX by Yours Truly\n";
	}
	print;
}


