#!/usr/bin/env perl

use 5.010;

# my $answer = int (1 + rand 100);

# LINE: {

# 	chomp (my $guess = <STDIN> );

# 	given ($guess)
# 	{
# 		when (! /^\d+$/) { say "not a number"}
# 		when ($_ > $answer)
# 		{
# 			say "Too High";
# 		}
# 		when ($_ < $answer)
# 		{
# 			say "Too Low";
# 		}
# 		default { say "You got the answer"; last LINE;}
# 	}

# 	redo LINE;	

# }
	


# # chomp (my $input = <STDIN>);
# for( 1 ..	105)
# {
# 	my $what = '';

# 	given ($_) {
# 		when ($_ % 3 == 0) {
# 			$what .= "Fizz"; continue}
# 		when ($_ % 5 == 0) {
# 			$what .= "Bin"; continue}
# 		when ($_ % 7 == 0) {
# 			$what .= "Sausage"; continue}
		
# 	}
# 	say "$_ $what";
# }


# die "no file specified" unless @ARGV;

# foreach (@ARGV)
# {
# 	my $file = '';
# 	given($_)
# 	{
# 		when ( -w $_ ) {$file .= "W"; continue}
# 		when ( -r $_ ) {$file .= "R"; continue}
# 		when ( -x $_ ) {$file .= "X"; continue}
# 	}

# 	say "$_ with $file";
# }

use 5.010;
given ($ARGV[0]){
	when ( ! /\A\d+\Z/ ) {say "Not a number! " }

	my @divisors = divisors($ARGV[0]);
	my @empty;
	
	
	when (@divisors ~~ @empty) {say "Prime number";}

	say "$_ is divisable by @divisors";

	when (!(2 ~~ @divisors)) {say "Odd Number"; continue;}
	when (2 ~~ @divisors) {say "Even Number"; continue;}

	

}

sub divisors()
{
	my $number = shift; # my $number = $_[0];
	my @divisors = ();
	foreach my $divisor (2 .. $number / 2) {
		push @divisors, $divisor unless $number % $divisor;
	}

	return @divisors;
}

