#!/usr/bin/env perl

use 5.010;

my $dino = 0;

eval { $barney = $fred  / $dino }; # divide by 0? not interrupted with eval
#say $@; # exception message goes into $@
print "I couldnt divide by \$dino: $@" if $@;


unless ( eval {$fred / $dino } ) {
	print "I couldnt divide by \$dino: $@" if $@;
}

my @averages = ( 2/3, eval { $fred / $dino }, 22/7 );

say scalar @averages;


#eval { die "I died"}; #die generates exception
#say "eval message is $@" if $@;

# exception alike..

eval {
	die "An unexpected exception message" if $unexpected;
	die "Bad denominator" if $dino == 0;
	$barney = $fred / $dino;
};


if ( $@ =~/unexpected/ ) { 
	say "Unexpected Error!!!";
}
elsif( $@ =~ /denominator/ ) {
	say "Denominator Error!!!";
}

############## Grep

my @odd_numbers;

foreach (1.. 10)
{
	push @odd_numbers, $_ if $_ % 2; #push odd numbers;
}

say @odd_numbers;

my @odd_numbers = grep { $_ % 2} 1..10;
say @odd_numbers;

my @matching_lines = grep { /\bfred\b/i } <FILE>;
 # same as
my @matching_lines = grep /\bfred\b/i, <FILE>;

:




