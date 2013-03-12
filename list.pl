#!/usr/bin/env perl

use 5.010;
use warnings;
$fred[0] = "yabba";
$fred[1] = "dabba";
$fred[2] = "doo";
$fred[3] = undef;
# $fred[521312313132] = "dddd"; #will explode memory

$fred[34] = "last element";

say $fred[2.3456];  #truncate index

say $#fred; # index of last element '34'
say $fred[$#fred];
say $fred[-1]; # reverse index so it's last element;


say ();
#print (1..10); #range operator ..

#print (1..5);
#print (1.5..9.99); # will be truncated;
#print (0, 2..6, 10, 12);

$i = 0;
$j = 10;
#print ($i..$#fred);

say ("fred", "barney", "betty", "dino");
say qw(fred barney betty \n $fred dino); #dw makes it list (\n, $fred cannot be used)
say qw !fred barney betty fred dino!; # parenthesis is not the only option.. any punctuation can be

say qw * /usr/bin/perl  /usr/bin/exec *;

($fred, $barney, $dino) = ("flintstone", "rubble", undef);
($a, $b, $c) = (1,2); # $c is undef
($a, $b, $c) = (1,2,3,4); # 4 is ignored

($fred[10], $fred[11]) = ($fred[0], $fred[1]);


#@ refers to the entire array
@rocks = qw/ bedrock slate lava /;
@giant = 1..1e5;
say $giant[-1];
@stuff = (@giant, undef, @giant);
$dino = "granite";
@quarry = (@rocks, "crushed rock", $dino); #not multi-dimention, it's single dimention
 
 say @quarry;

 #empty scalar starts out from undef
 #empty list starts out from ( ) 

@num = (1..10);
say $temp = pop(@num); #10
say pop@num; #9

 push @num, 10; # return number of array 
 push @num, 11..20;
 push @num, qw/21 22 23 34/;
 say @num;


 #shift, unshift are reverse of pop, push
say shift @num;
say @num;
unshift @num, 0;
say @num;

unshift @num, @num;

say @num;


@removed = splice @num, 10, 10;
say @num;

splice num, 10, 10, qw/ new added values /;
say @num;


while( my($index, $value ) = each @rocks)
{
	say "$index: $value";
}

 

 say @num + 4; #num returns the number of elements


@backwords = sort qw/ yabba dabba doo /;
say @backwords;
$backwords = sort qw/ yabba dabba doo /; #sort does not return scalar value
say $backwords;

$fred = something; # scalar context 
@pebbles = something; # list context 
($wilma, $betty) = something ; # list context 
($dino) = sodmething; # still list context! () 는 리스트 할당자임 위에거랑 같음..


@wilma = undef; # does not clear the array
@wilma = (); # correct way to clear

say @rocks; #list
say scalar @rocks; #force to return scalar...(number of array)

#$input = <STDIN>;

@input  = <STDIN>; #press ctrl+d (ctrl+z on windows)
chomp (@input); #discard all the new line characters;
say @input; 

use 5.012;


