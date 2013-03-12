#!/usr/bin/env perl


use 5.010;



#problem 1
#@ARGV = reverse @ARGV;

# while (<>)
# {
# 	chomp;
# 	say;
# }


#print reverse <>; # not same with the above..


#problem 2

chomp(@input = <STDIN>);
say "1234567890" x 4;

$colums = shift @input;
$format = "%${colums}s\n";

foreach $input (@input)
{
	printf  $format, $input;
}
