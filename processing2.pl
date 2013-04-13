#!/usr/bin/env perl 
## Copyright (C) 20XX by Yours Truly
use 5.010;


#Different Delimiters

$_ = "barney";
s#^https://#http://#;
s{fred}{barney}; #left right different
s[fred](barney);
s<fred>#barney#;

#Substitution Modifiers
s#wilma#Wilma#gi; # replace every WiLmA or WILMA with Wilma
s{__END__.*}{}s; # chop off the end marker and all following lines

s#wilma#Wilma#gi; # replace every WiLmA or WILMA with Wilma
s{__END__.*}{}s; # chop off the end marker and all following lines (/s . = \n)

$file_name = "root/bin/asdf";
$file_name =~ s#^.*/##s; # In $file_name, remove any Unix-style path
say $file_name;

#Nondestructive Substitutions

my $original = 'Fred ate 1 rib';
my $copy = $original;
$copy =~ s/\d+ ribs?/10 ribs/;

($copy = $original) =~ s/\d+ ribs?/10 ribs/;

#use 5.014;
#$copy = $original =~ s/\d+ ribs?/10 ribs/r; #leaves the original string and returns a modified copy
#say $copy;

#Case Shifting
$_ = "I saw Barney with Fred.";
s/(fred|barney)/\U$1/gi; say;
s/(fred|barney)/\L$1/gi; say;
s/(\w+) with (\w+)/\U$2\E with $1/i; say;
s/(fred|barney)/\u$1/ig; say; #When written in lowercase (\l and \u ), they affect only the next character:
s/(fred|barney)/\L\u$1/ig; say; #Using \u with \L means “all lowercase, but capitalize the first letter”:#
$name = "josh smith";
print "Hello, \L\u$name\E, would you like to play a game?\n";


my @fields = split /:/, "abc:def:g:h"; # gives ("abc", "def", "g", "h")
say @fields;

#trailing empty fields are discarded
my @fields = split /:/, ":::a:b:c:::"; # gives ("", "", "", "a", "b", "c")

my $some_input = "This is a \t test.\n";
my @args = split /\s+/, $some_input; # ("This", "is", "a", "test.")

say "@args";

#The default for split is to break up $_ on whitespace:
$_ = " a b c d e f ";
my @fields = split; # like split /\s+/, $_; #surpress leading empty
$f = @fields;
say $f;



#join


#my $result = join $glue, @pieces;
my $x = join ":", 4, 6, 8, 10, 12;
say $x;

# at least two can be glued
my $y = join "foo", "bar"; # gives just "bar", since no foo glue is needed
my @empty; # empty array
my $empty = join "baz", @empty; # no items, so it's an empty string

my @values = split /:/, $x;
my $z = join "-", @values;
say $z;

$_ = "Hello there, neighbor!";
my($first, $second, $third) = /(\S+) (\S+), (\S+)/; #list context
print "$second is my $third\n";


my $text = "Fred dropped a 5 ton granite block on Mr. Slate";
my @words = ($text =~ /([a-z]+)/ig); 
#In this case, a pattern with a pair of parentheses will return a capture from each time it matches:

say "@words";


my $data = "Barney Rubble Fred Flintstone Wilma Flintstone";
my %last_name = ($data =~ /(\w+)\s+(\w+)/g);

$_ = "I'm talking about the cartoon with Fred and <BOLD>Wilma</BOLD>!";
s#<BOLD>(.*)</BOLD>#$1#g;
$_ = "I thought you said Fred and <BOLD>Velma</BOLD>, not <BOLD>Wilma</BOLD>";
s#<BOLD>(.*?)</BOLD>#$1#g; 
#non greedy;

# /m regular expression option lets them match at internal newlines
$_ = "I'm much better\nthan Barney is\nat bowling,\nWilma.\n";
print "Found 'wilma' at start of line\n" if /^wilma\b/im;
# ^ (begenning) works!
