#!/usr/bin/env perl

use 5.010001;


my @num = (1 .. 10);
my @num2 = @num;
say @num;
if(10 ~~ @num)
{
	say "1";
}