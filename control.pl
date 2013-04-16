#!/usr/bin/env perl

use 5.010;


$fred = "1asdf";

unless ($fred =~ /\A[A-Z_]\w*\z/i)
{
	print "the value of \$fred doesn't look like a perl identifier name.";
}

$mon = "Feb";
unless ($mon =~ /\AFeb/) {
	print "This month has at least thirty days.\n";
	} else {
		print "Do you see what's going on here?\n";
	}

#reverse of while
until ($i > 10)
{
	$i ++;
	say $i;
}

$n = -1;
print "$n is a negative number.\n" if $n < 0; 
#same;
if ($n < 0) {
	print "$n is a negative number.\n";
}


# &error("Invalid input") unless &valid($input);
# $i *= 2 until $i > $j;
# print " ", ($n += 2) while $n < 10;
# &greet($_) foreach @person;

# {
# 	print "Please enter a number: ";
# 	chomp(my $n = <STDIN>);
# 	my $root = sqrt $n; # calculate the square root
# 	print "The square root of $n is $root.\n";
# }

if ( ! defined $dino) {
	print "The value is undef.\n";
	} elsif ($dino =~ /^-?\d+\.?$/) {
		print "The value is an integer.\n";
		} elsif ($dino =~ /^-?\d*\.\d+$/) {
			print "The value is a _simple_ floating-point number.\n";
			} elsif ($dino eq '') {
				print "The value is the empty string.\n";
				} else {
					print "The value is the string '$dino'.\n";
				}



my @people = qw{ fred barney bamm-bamm wilma dino barney betty pebbles };
my %seen;

foreach (@people)
{
	print "I've seen you somewhere before, $_!\n" if $seen{$_}++;
}


for($_ = "bedrock"; s/(.)//; ){
	print "One Character is: $1\n";
}

# for is same as foreach completely.
for (1..10) { # really a foreach loop from 1 to 10
	print "I can count to $_!\n";
}



# # Print all input lines mentioning fred, until the __END__ marker
# while (<STDIN>) {
# 	if (/__END__/) {
#	# No more input on or after this marker line
# 	last; # break
# } elsif (/fred/) {
# 	print; 
#   }
# }
# ## last comes here ##

# # Analyze words in the input file or files
# while (<>) {
# 	foreach (split) { # break $_ into words, assign each to $_ in turn
# 		$total++;
# 		next if /\W/; # strange words skip the remainder of the loop
# 		$valid++;
# 		$count{$_}++; # count each separate word
# 	## next comes here ##
# 	}
# }

# # Typing test
# my @words = qw{ fred barney pebbles dino wilma betty };
# my $errors = 0;
# foreach (@words) {
# 	## redo comes here ##
# 	print "Type the word '$_': ";
# 	chomp(my $try = <STDIN>);
# 	if ($try ne $_) {
# 		print "Sorry - That's not right.\n\n";
# 		$errors++;
# 		redo; # jump back up to the top of the loop
# 	}
# }


# foreach (1..10) {
# 	print "Iteration number $_.\n\n";
# 	print "Please choose: last, next, redo, or none of the above? ";
# 	chomp(my $choice = <STDIN>);
# 	print "\n";
# 	last if $choice =~ /last/i;
# 	next if $choice =~ /next/i;
# 	redo if $choice =~ /redo/i;
# 	print "That wasn't any of the choices... onward!\n\n";
# }
# print "That's all, folks!\n";

# my $location = &is_weekend($day) ? "home" : "work";

# my $average = $n ? ($total/$n) : "-----";
# print "Average: $average\n";

# my $average;
# if ($n) {
# 	$average = $total / $n;
# 	} else {	
# 		$average = "-----";
# }
# 	print "Average: $average\n";

# 	# my $size =
# 	# ($width < 10) ? "small" :
# 	# ($width < 20) ? "medium" :
# 	# ($width < 50) ? "large" :
# 	# "extra-large"; # default


# if ($dessert{'cake'} && $dessert{'ice cream'}) {
# 	# Both are true
# 	print "Hooray! Cake and ice cream!\n";
# } elsif ($dessert{'cake'} || $dessert{'ice cream'}) {
# 	# At least one is true
# 	print "That's still good...\n";
# } else {
# 	# Neither is true; do nothing (we're sad)
# }


my %last_name;
$last_name{"jin"} = 0;
$someone = "jin"; 
my $last = $last_name{$someone} || '(No last name)'; # problem!!!
say $last;

my $last = $last_name{$someone} // '(No last name)'; # new operator 
say $last;

my $Verbose = $ENV{PAS} // 1;
print "I can talk to you!\n" if $Verbose;




# foreach $key (keys %ENV) {
# 	say "$key : " . $ENV{$key};
# }


foreach my $try ( 0, undef, '0', 1, 25 ) {
	print "Trying [$try] ---> ";
	my $value = $try // 'default';
	say "\tgot [$value]";
}

my $name; # no value, so undefined!
printf "%s", $name; # Use of uninitialized value(undef) in printf ...

my $name; # no value, so undefined!
printf "%s", $name // '';