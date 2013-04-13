#!/usr/bin/env perl
## Copyright (C) 20XX by Yours Truly

use 5.010;

# while(<STDIN>)
# {
# 	chomp;
# 	if(/Fred/){
# 		say;
# 	}
		
# }


# while(<STDIN>)
# {
# 	chomp;
# 	if(/(Fred|Alfred)/){
# 		say;
# 	}
		
# }


if(! open INPUT, '<', 'input.txt')
{
	die "die!";
}

while(<INPUT>)
{
	chomp;
	if(/\./) # dot is meta character(one letter) requiring back slash
	{
		say;
	}
}

close INPUT;


# while(<STDIN>)
# {
# 	if( /[A-Z][a-z]+/ ) {
# 		print;
# 	}
		
# }

# while(<STDIN>)
# {
# 	#if( /(.)\1/ ) { # dot is a wildcard except a newline \n
# 	if( /(\S)\1/ ) { # \S is non whitespace character
# 		print;
# 	}
# }

while(<STDIN>)
{
	#if( /(((wilma)[\w\v\h]*(fred))|((fred)[\w\v\h]*(wilma)))/ ) {
	#if( /wilma.*fred|fred.*wilma/) {

		if(/wilma/) {
			if(/fred/) {
				print;
			}
		}

	#	print;
	#}
}