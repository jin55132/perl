#!/usr/bin/env perl

use 5.010;


$fred = "1asdf";

unless ($fred =~ /\A[A-Z_]\w*\z/i)
{
	print "the value of \$fred doesn't look like a perl identifier name.";
}

$mon = "Feb";
unless ($mon =~ /\AFeb/) {
print "This month has at least thirty days.\n";
} else {
print "Do you see what's going on here?\n";
}

#reverse of while
until ($i > 10)
{
	$i ++;
	say $i;
}

$n = -1;
print "$n is a negative number.\n" if $n < 0; 
#same;
if ($n < 0) {
print "$n is a negative number.\n";
}


# &error("Invalid input") unless &valid($input);
# $i *= 2 until $i > $j;
# print " ", ($n += 2) while $n < 10;
# &greet($_) foreach @person;

# {
# 	print "Please enter a number: ";
# 	chomp(my $n = <STDIN>);
# 	my $root = sqrt $n; # calculate the square root
# 	print "The square root of $n is $root.\n";
# }

if ( ! defined $dino) {
	print "The value is undef.\n";
} elsif ($dino =~ /^-?\d+\.?$/) {
	print "The value is an integer.\n";
} elsif ($dino =~ /^-?\d*\.\d+$/) {
	print "The value is a _simple_ floating-point number.\n";
} elsif ($dino eq '') {
	print "The value is the empty string.\n";
} else {
	print "The value is the string '$dino'.\n";
}



my @people = qw{ fred barney bamm-bamm wilma dino barney betty pebbles };
my %seen;

foreach (@people)
{
	print "I've seen you somewhere before, $_!\n" if $seen{$_}++;
}


for($_ = "bedrock"; s/(.)//; ){
	print "One Character is: $1\n";
}

# for is same as foreach completely.
for (1..10) { # really a foreach loop from 1 to 10
	print "I can count to $_!\n";
}

`

