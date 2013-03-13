#!/usr/bin/env perl

use 5.010;

$_ = "yabba dabba\tdoo";

if(/abba\tdo/)
{
	say "matched!";
}

if(/\p{Space}/) #unicode properties..
{
	say "whitespace";

}
# dot matches any character except new line \n

$_ = 3.141592;
if(/3\.14159/) # backslach to use match characters  as dot... and so on;
{
	say "PI!";
}

$_ = "fred\t\t\tbarney";
if(/fred\t*barney/) # matching the preceding item zero or more times;
{
	say "*";
}

$_ = "fredasdfasdfasbarney";
if(/fred.*barney/) # .* matching any character
{
	say "."; 
}

$_ = "fred barney"; # .+ one or more
if(/fred +barney/)
{
	say "+";
}

$_ = "fred-barney"; # ? once or not

if(/fred-?barney/)
{
	say "?";
}

$_= "fredddddd";
if(/fred+/)
{
	say "no group";
}


$_= "fredfred";
if(/(fred)+/)
{
	say "grouping";
}

if(/(fred)\1/)
{
	say "one more";
}


$_ = "abba";
# $_ = "ababa"; (x) 
if(/(.)\1/) # (b)(b)
{
	say "it matched same character next to itself";
}

$_ = "yabaa dabba doo";
if(/y(....) d\1/) # == (/y(abba) d(abba))
{
	say "it matched the same after y and d!";
}

if(/d(.)(.)\2\1/) # == d(a)(b)(b)(a)
{
	say "it matched";
}

$_ = "yabba dabba doo";
if(/y((.)(.)\3\2) d\1/) { #yabba dabba opening parenthesis and ignore nesting..    ( ()2 ()3 )1
	say "it matcheddd";
}


$_ = "aa11bb";
if(/(.)\111/)  # ambiguous \1 \11 \111 ?; \111 is selected.
{
	say "it matched";
}


if(/(.)\g{1}11/) # \g{N} same as the notation of \N
{
	say "it matched!!";
}

if(/(.)\g{-1}11/) # \g{N} same as the notation of \N
{
	say "it negative matched!!";
}














