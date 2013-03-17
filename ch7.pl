#!/usr/bin/env perl

use 5.010;

# while(<STDIN>)
# {
# 	chomp;
# 	if(/Fred/){
# 		say;
# 	}
		
# }

while(<STDIN>)
{
	chomp;
	if(/(Fred|Alfred)/){
		say;
	}
		
}