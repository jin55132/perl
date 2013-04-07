#!/usr/bin/env perl

use 5.010;

$_= "fred Alfred";

if(m#fred#) # m/ is same as qw / / m##
{
	say;
}

$_= "lily Alfred";

if(/alfred/i) # case-insensitive
{
	say;
}

$_ = "I saw Barney\ndown at the bowling alley\nwith Fred\nlast night.\n";

if(/Barney.*Fred/s) { #matching any character (. doens't accept \n newline)
	say;
}


if(/Barney[^\n]Fred/s) { #matching any character (. doens't accept \n newline)
	say;
}

$_ = "BarneyAlfred";
if(/ Barney Alfred /x) { #adding white space
	say
}
if(/ Barney Alfred /ix) { # combining /i /X
	say
}

# use 5.014;


# $_ = <STDIN>;

# my $OE = chr( 0xBC ); # get exactly what we intend

# if (/$OE/li) { # that's better ( l modifier use locale's rules)
# print "Found $OE\n";
# }

# $_ = <STDIN>;
# if (/OE/ui) { # now uses Unicode
# print "Found OE\n";
# }



# m{\Ahttps?://}i # Absoulute beginning
# m{\.png\z}i #absoulute ending


while (<STDIN>) {
	print if /\.png\Z/; # Absoulute Ending + optional Newline

}

while (<STDIN>) {
	chomp;
	print "$_\n" if /\.png\z/;
}

$_ = "manfred mann";

if(/^fred/)
{
	say "문자열의 첫부분";
}

$_ = "knute rockne";

if( /rock$/)
{
	say "문자열의 끝부분";
}

$_ = "frederic";

if( /\bfred\b/ )
{
	say "단어 경계";
}

$_ = "searching";

if( /\bsearch\B/ )
{
	say "단어 경계 반대";
}

my $like_per = <STDIN> =~ /\byte\b/i; # =~ regex 연산자


my $what = "larry";
#my $what = shift @ARGV;

while(<>) # read from @ARGV
{
	if(/^($what)/)
	{
		print "We saw $what in the beginning of $_";
	}

}


$_ = "Hello there, neighbor";

if(/\s(\w+),/)
{
	say "the word was $1";
}

if(/(\S+) (\S+), (\S+)/) # /S equals to ^/s
{
	say " words were $1 $2 $3";
}

my $dino = "I fear that I'll be extinct after 1000 years";
if($dino =~ /(\d*) years/)
{
	say "That said '$1' years.";
}

$dino = "I fear that I'll be extinct after a few million years";
if($dino =~ /(\d*) years/)
{
	say "That said '$1' years."; # empty string
}
my $wilma = '123';
$wilma =~ /([0-9]+)/; # Succeeds, $1 is 123
$wilma =~ /([a-zA-Z]+)/; # BAD! Untested match result 
print "Wilma's word was $1... or was it?\n"; # Still 123!


if ($wilma =~ /([a-zA-Z]+)/) 
{ 
	print "Wilma's word was $1.\n";
} else {
	print "Wilma doesn't have a word.\n"; 
}

if ($wilma =~ /([a-zA-Z]+)/) { 
	my $wilma_word = $1;
}

$_ = "bronto saurus burger";
if (/(bronto)?saurus (steak|burger)/) 
{ 
	print "Fred wants a $2\n";
}

# 괄호로 grouping 하지만 변수에 저장하지는 않기
if (/(?:bronto)?saurus (steak|burger)/) 
{ 
	print "Fred wants a $1\n";
}

if (/(?:bronto)?saurus (?:BBQ )?(steak|burger)/) 
{ 
	print "Fred wants a $1\n";
}

#named capture

use 5.010;
my $names = 'Fred or Barney';

if ( $names =~ m/(\w+) and (\w+)/ ) 
{ # won't match
	say "I saw $1 and $2"; 
}

if ( $names =~ m/(\w+) (and|or) (\w+)/ ) 
{ # matches now
	say "I saw $1 and $2"; 
}

if ( $names =~ m/(?<name1>\w+) (?:and|or) (?<name2>\w+)/ ) 
{
	say "I saw $+{name1} and $+{name2}"; 
}

#back reference \1, \2 .. \g{1} \g{2}
my $names = 'Fred Flintstone and Wilma Flintstone';
if ( $names =~ m/(?<last_name>\w+) and \w+ \g{last_name}/ ) 
{ 
	say "I saw $+{last_name}";
}

if ( $names =~ m/(?<last_name>\w+) and \w+ \k<last_name>/ ) {
	say "I saw $+{last_name}"; 
}

#The Automatic Match Variables

if ("Hello there, neighbor" =~ /\s(\w+), neighbor/) { 
	print "That actually matched '$&'.\n"; # $& entire matched section
}

if ("Hello there, neighbor" =~ /\s(\w+),/) {
	print "That was ($`)($&)($').\n"; 
	# $` = $&의 앞부분
	# $' = $&의 뒷부분 
}

use 5.010;
if ("Hello there, neighbor" =~ /\s(\w+),/p) {
	print "That actually matched '${^MATCH}'.\n"; }
if ("Hello there, neighbor" =~ /\s(\w+),/p) {
	print "That was (${^PREMATCH})(${^MATCH})(${^POSTMATCH}).\n";
}

$_ = "aaaa";

if(/a{5,15}/) # matches  5 to 15 times 
{
	say "matched";
}



