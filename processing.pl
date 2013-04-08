#!/usr/bin/env perl

use 5.010;

#substitutions

$_ = "He's out bowling with Barney tonight";
s/Barney/Fred/;
say;

s/Wilma/Betty/; #fails..
s/with (\w+)/against $1's team/; # first pattern matching (\w+)
say ;

$_ = "green scaly dinosaur";
s/(\w+) (\w+)/$2, $1/; say;
s/^/huge, /; say; # anchor : beginning ^
s/,.*een//; say;
s/green/red/; say; #fails
s/\w+$/($`!)$&/; say; # anchor : end $
s/\s+(!\W+)/$1 /; say;
s/huge/gigantic/; say;

$_ = "fred flintstone";
if( s/fred/wilma/)
{
	say "successfully replaced";
}


#global replacements
$_ = "home, sweet home!";
s/home/cave/g; say;
$_ = " Input data\t may have	extra whitespace.      ";
s/\s+/ /g; say; # remove tab
s/^\s+//; say; # trim front
s/\s+$//; say; # trim end
s/^\s+|\s+$//g # trim
