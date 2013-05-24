#!/usr/bin/env perl

# See “Answers to Exercises” on page 323 for answers to the following exercises:
# 1. [15] Rewrite your number guessing program from Exercise 1 in Chapter 10 to use
# given. How would you handle non-numeric input? You don’t need to use smart
# matching.

# 2. [15] Write a program using given-when that takes a number as its input, then prints
# “Fizz” if it is divisible by 3, “Bin” if it is divisible by 5, and “Sausage” if it is divisible
# by 7. For a number like 15, it should print “Fizz” and “Bin” since 15 is divisible by
# both 3 and 5. What’s the first number for which your program prints “Fizz Bin
# Sausage”?

# 3. [15] Using for-when, write a program that goes through a list of files on the command
# line and reports if each file is readable, writable, or executable. You don’t
# need to use smart matching.

# 4. [20] Using given and smart matching, write a program that reports all the divisors
# (except 1 and the number itself) of a number you specify on the command line.
# For instance, for the number 99, your program should report it is divisible by 3, 9,
# 11, and 33. If the number is prime (it has no divisors), report that the number is
# prime instead. If the command line argument is not a number, report the error and
# don’t try to compute the divisors. Although you could do this with if constructs
# and with dumb matching, only use smart matching.
# To get you started, here’s a subroutine to return a list of divisors. It tries all of the
# numbers up to one half of $number:
# sub divisors {
# my $number = shift;
# my @divisors = ();
# foreach my $divisor ( 2 .. ( $number/2 ) ) {
# push @divisors, $divisor unless $number % $divisor;
	# }
# return @divisors;
# }

# 5. [20] Modify the program from the previous exercise to also report if the number
# is odd or even, if the number is prime (you find no divisors other than 1 and the
# number itself), and if it is divisible by your favorite number. Again, only use smart
# matching.

use 5.010001

# [25] Make a program that will repeatedly ask the user to guess a secret number
# from 1 to 100 until the user guesses the secret number. Your program should pick
# the number at random by using the magical formula int(1 + rand 100).§ When
# the user guesses wrong, the program should respond, “Too high” or “Too low.” If
# the user enters the word quit or exit, or if the user enters a blank line, the program
# should quit. Of course, if the user guesses correctly, the program should quit then
# as well!


$DEBUG = $ENV{DEBUG} // 1;

$answer = int(1 + rand 100);


while (<STDIN>) {
	chomp;

	# if( /quit|exit|\A\s*\z/ ){
	# 	say "Good Bye";
	# 	last;
	# }
	# elsif( $_ > $answer)
	# {
	# 	say "Too high";
	# 	say "Secret is $answer" if $DEBUG;
	# }
	# elsif( $_ < $answer)
	# {
	# 	say "Too Low";
	# 	say "Secret is $answer" if $DEBUG;
	# }
	# elsif( $_ == $answer ){
	# 	say "You got the answer [$answer]";
	# 	last;
	# }
	

}




