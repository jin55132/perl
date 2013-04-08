#!/usr/bin/env perl 
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