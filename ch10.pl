#!/usr/bin/env perl

use 5.010;

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

	if( /quit|exit|\A\s*\z/ ){
		say "Good Bye";
		last;
	}
	elsif( $_ > $answer)
	{
		say "Too high";
		say "Secret is $answer" if $DEBUG;
	}
	elsif( $_ < $answer)
	{
		say "Too Low";
		say "Secret is $answer" if $DEBUG;
	}
	elsif( $_ == $answer ){
		say "You got the answer [$answer]";
		last;
	}
}


$longest = 0;

foreach (keys %ENV)
{
	# if (length($_) > $longest){
	# 	$longest = length($_);

	# }
	my $length = length($_);
	$longest = $length if $length > $longest;
}


$ENV{NEWENV} = undef;


while(($k, $v) = each %ENV) {
	printf "%${longest}s : %s\n", $k, $v // "undef";
}


