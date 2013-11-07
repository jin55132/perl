#!/usr/bin/env perl

use 5.010;

my $stuff = "Howdy world!";
my $where = index($stuff, "wor"); #first occurance

my $where1 = index($stuff, "w"); #2
my $where2 = index($stuff, "w", $where1 + 1); # 6, starting position
my $where3 = index($stuff, "w", $where2 + 1); # -1 failed

my $last_slash = rindex("/etc/password", "/");# 4


$fred = "Yabba dabba doo!";
$where1 = rindex($fred, "abba"); # $where1 gets 7
$where2 = rindex($fred, "abba", $where1 - 1); # $where2 gets 1
$where3 = rindex($fred, "abba", $where2 - 1); # $where3 gets –1

my $mineral = substr("Fred J. Flintstone", 8, 5); # gets "Flint"
my $rock = substr "Fred J. Flintstone", 13, 1000; # gets "stone"

my $pebble = substr "Fred J. Flintstone", 13; # gets "stone"

my $out = substr("some very long string", -3, 2); # $out gets "in"

my $long = "some very very long string";
my $right = substr($long, index($long, "l") ); # gets "long string";


my $string = "Hello, world!";
substr($string, 0, 5) = "Goodbye"; # $string is now "Goodbye, world!"

substr($string, -20) =~ s/fred/barney/g; # replace fred with barney in the last 20 chars

my $previous_value = substr($string, 0, 5, "Goodbye"); # traditional way

#my $date_tag = sprintf "%4d/%02d/%02d %2d:%02d:%02d", $yr, $mo, $da, $h, $m, $s;
# "2038/01/19 3:00:08"

my $money = sprintf "%.2f", 2.49997;

sub big_money {
	my $number = sprintf "%.2f", shift @_;
	# Add one comma each time through the do-nothing loop
	1 while $number =~ s/^(-?\d+)(\d\d\d)/$1,$2/;
	# Put the dollar sign in the right place
	$number =~ s/^(-?)/$1\$/;
	$number;
}

#advanced sorting

my @some_numbers = (3,4,1,2,10,5,8);
my @some_chars = qw / a b c q w t z a /;

# sub by_number {
# 	# a sort subroutine, expect $a and $b
# 	if ($a < $b) { -1 } elsif ($a > $b) { 1 } else { 0 }
# }

sub by_number { $a <=> $b }
sub by_code_point { $a cmp $b }
sub case_insensitive { "\L$a" cmp "\L$b" }

say "@some_numbers";

my @result = sort by_number @some_numbers;
my @cresult = sort by_code_point @some_chars;

my @numbers = sort { $a <=> $b } @some_numbers;
my @descending = reverse sort { $a <=> $b } @some_numbers;
@descending = sort { $b <=> $a } @some_numbers;

say "@result";
say "@cresult";


#sorting a hash


my %score = ("barney" => 195, "fred" => 205, "dino" => 30);
#my @winners = sort by_number keys %score; # wrong!!

sub by_score { $score{$b} <=> $score{$a} }
my @winners = sort by_score keys %score; #works


#Sorting by Multiple Keys

%score = (
	"barney" => 195, "fred" => 205,
	"dino" => 30, "bamm-bamm" => 195,
);

sub by_score_and_name {
	$score{$b} <=> $score{$a}
		or 
	$a cmp $b
}

@winners = sort by_score_and_name keys %score;

# @patron_IDs = sort {
# 	&fines($b) <=> &fines($a) or
# 	$items{$b} <=> $items{$a} or
# 	$family_name{$a} cmp $family_name{$b} or
# 	$personal_name{$a} cmp $family_name{$b} or
# 	$a <=> $b
# } @patron_IDs;
