#!/usr/bin/env perl

use 5.010;

$_= "fred Alfred";

if(m#fred#) # m/ is same as qw / / m##
{
	say;
}

$_= "lily Alfred";

if(/alfred/i) # case-insensitive
{
	say;
}

$_ = "I saw Barney\ndown at the bowling alley\nwith Fred\nlast night.\n";

if(/Barney.*Fred/s) { #matching any character (. doens't accept \n newline)
	say;
}


if(/Barney[^\n]Fred/s) { #matching any character (. doens't accept \n newline)
	say;
}

$_ = "BarneyAlfred";
if(/ Barney Alfred /x) { #adding white space
	say
}
if(/ Barney Alfred /ix) { # combining /i /s
	say
}

