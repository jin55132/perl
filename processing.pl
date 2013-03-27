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
if(/ Barney Alfred /ix) { # combining /i /X
	say
}

use 5.014;


$_ = <STDIN>;

my $OE = chr( 0xBC ); # get exactly what we intend

if (/$OE/li) { # that's better
print "Found $OE\n";
}

# $_ = <STDIN>;
# if (/OE/ui) { # now uses Unicode
# print "Found OE\n";
# }



# m{\Ahttps?://}i # Absoulute beginning
# m{\.png\z}i #absoulute ending


while (<STDIN>) {
	print if /\.png\Z/; # Absoulute Ending + optional Newline

}

while (<STDIN>) {
	chomp;
	print "$_\n" if /\.png\z/;
}