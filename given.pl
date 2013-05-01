#!/usr/bin/env perl

use 5.010001;


my $name = "My name is Fred";

print "I found Fred in the name\n" if $name =~ /Fred/i;
print "I found Fred in the name\n" if $name ~~ /Fred/i;

my %names = (
	'fred' => 'flitstone',
	'dino' => undef,
	'barney' => 'rubble',
	'betty' => 'rubble',
	);


my $flag = 0;

foreach my $key ( keys %names ) {
	next unless $key =~ /Fred/i;
	$flag = $key;
	last;
}
print "I found a key matching 'Fred'. It was $flag\n" if $flag;

say "I found a key matching 'Fred'" if %names ~~ /Fred/i;
say "I found a key matching 'Fred'" if /Fred/i ~~ %names;



my @names2 = keys %names;
my @names1 = keys %names;


my $equal = 0;
	foreach my $index ( 0 .. $#names1 ) {
	last unless $names1[$index] eq $names2[$index];
	$equal++;
}
print "The arrays have the same elements!\n" if $equal == @names1;

say "The arrays have the same elements!" if @names1 ~~ @names2;


sub max {
	my($m, $n) = @_;
 	if($m > $n) {$m} else {$n}
}

my @nums = qw( 1 2 3 27 42 );
my $result = max(@nums);
say "The result [$result] is one of the input values (@nums)"
#if @nums ~~ $result;
if $result ~~ @nums;

say "match number ~~ string" if 4 ~~ '4abc';
say "match string ~~ number" if '4abc' ~~ 4; #works

# match string ~~ number

given ( $ARGV[0] ) {
	when ( 'Fred' ) { say 'Name is Fred' }
	when ( /fred/i ) { say 'Name has fred in it' }
	when ( /\AFred/ ) { say 'Name starts with Fred' }
	default { say "I don't see a Fred" }
}

given ( $ARGV[0] ) {
	when ( $_ ~~ 'Fred' ) { say 'Name is Fred'; break }
	when ( $_ ~~ /fred/i ) { say 'Name has fred in it'; break }
	when ( $_ ~~ /\AFred/ ) { say 'Name starts with Fred'; break }
	default { say "I don't see a Fred"; break }
}

given ( $ARGV[0] ) {
	when ( $_ ~~ 'Fred' ) { say 'Name is Fred'; continue } # OOPS!
	when ( $_ ~~ /fred/i ) { say 'Name has fred in it'; continue }
	when ( $_ ~~ /\AFred/ ) { say 'Name starts with Fred'; continue }
	default { say "I don't see a Fred" }
}


given ( $ARGV[0] ) {
	when ( $_ ~~ 'Fred' ) { say 'Name is Fred'; continue }
	when ( $_ ~~ /\AFred/ ) { say 'Name starts with Fred'; continue }
	when ( $_ ~~ /fred/i ) { say 'Name has fred in it' } # OK now!
	when ( 1 == 1 ) { say "I don't see a Fred" }
}


given ( $ARGV[0] ) {
	when ( 'Fred' ) { say 'Name is Fred'; continue }
	when ( /\AFred/ ) { say 'Name starts with Fred'; continue }
	when ( /fred/i ) { say 'Name has fred in it'; }
	default { say "I don't see a Fred" }
}


given ( $ARGV[0] ) {
	when ( $_ eq 'Fred' ) { say 'Name is Fred'; continue }
	when ( $_ =~ /\AFred/ ) { say 'Name starts with Fred'; continue }
	when ( $_ =~ /fred/i ) { say 'Name has fred in it'; }
	default { say "I don't see a Fred" }
}

given ( $ARGV[0] ) {
	when ( 'Fred' ) { #smart
		say 'Name is Fred'; continue }
	when ( $_ =~ /\AFred/ ) { #dumb
		say 'Name starts with Fred'; continue }
	when ( /fred/i ) { #smart
		say 'Name has fred in it'; }
	default { say "I don't see a Fred" }
}

given ( $ARGV[0] ) {
	awhen ( ! /\A-?\d+\.\d+\z/ ) { #smart
	say 'Not a number!' }
	when ( $_ > 10 ) { #dumb
	say 'Number is greater than 10' }
	when ( $_ < 10 ) { #dumb
	say 'Number is less than 10' }
	default { say 'Number is 10' }
}

given ( $ARGV[0] ) {
	when ( name_has_fred( $_ ) ) { #dumb
	say 'Name has fred in it'; continue }
}

given( $ARGV[0] ) {
	when( ! $boolean ) { #dumb
		say 'Name has fred in it' }
	when( ! /fred/i ) { #dumb
		say 'Does not match Fred' }
}

foreach ( @names ) { # don't use a named variable!
	when ( /fred/i ) { say 'Name has fred in it'; continue }
	when ( /\AFred/ ) { say 'Name starts with Fred'; continue }
	when ( 'Fred' ) { say 'Name is Fred'; }
	default { say "I don't see a Fred" }
}

foreach ( @names ) { # don't use a named variable!
	say "\nProcessing $_";
	when ( /fred/i ) { say 'Name has fred in it'; continue }
	when ( /\AFred/ ) { say 'Name starts with Fred'; continue }
	when ( 'Fred' ) { say 'Name is Fred'; }
	default { say "I don't see a Fred" }
}

foreach ( @names ) { # don't use a named variable!
	say "\nProcessing $_";
	when ( /fred/i ) { say 'Name has fred in it'; continue }
	when ( /\AFred/ ) { say 'Name starts with Fred'; continue }
	when ( 'Fred' ) { say 'Name is Fred'; }
	say "Moving on to default...";
	default { say "I don't see a Fred" }
}