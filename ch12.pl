#!/usr/bin/env perl

use 5.010;


foreach(@ARGV)
{
	&filetest($_);
}



sub filetest {
	my $file = $_[0];

	if( -w $file ) {
		say "$_ is writable";
	}
	if( -r $file ) {
		say "$_ is readable"
	}
	if( -e $file ) {
		say "$_ is executable"
	}
	
	say "$_ does not exist" unless -e $_;
}