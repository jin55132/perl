#!/usr/bin/env perl

use 5.010;

my @numbers = (17, 1000, 04, 1.50, 3.14159, -10, 1.5, 4, 2001, 90210, 666);

my @results = sort { $a <=> $b } @numbers;


foreach (@results){
	printf "%20g\n", $_; # g = float

}
################
my %last_name = qw{
fred flintstone Wilma Flintstone Barney Rubble
betty rubble Bamm-Bamm Rubble PEBBLES FLINTSTONE
};

sub by_last_and_first_name {
	"/L$last_name{$a}" cmp "/L$last_name{$b}"
		or
	"/L$a" cmp "/L$b"
}

my @r = sort by_last_and_first_name keys %last_name;

#print "@r";

##################


# print "input string : ";
# chomp(my $string = <STDIN>);
my $string = "This is a test";
print "input sub-string : ";
chomp(my $sub_string = <STDIN>);


my $pos = -1;
my @indices;
while (1)
{
	$pos = index($string, $sub_string, $pos + 1);
	last if $pos == -1;
	push @indicies, $pos;
}


say "@indicies";