#!/usr/bin/env perl

use 5.010;

$family_name{'fred'} = 'flintstone';
$family_name{'barney'} = 'rubble';

foreach my $person (qw<barney fred>) {
	say $family_name{$person};
}

$foo = 'bar';
say $family_name{ $foo . 'ney'};

$family_name{'betty'} .= $family_name{'barney'};
$family_name{'betty'} .= $family_name{'barney'};


say $family_name{'betty'};


%some_hash = ('foo', 45, 'bar', 12.5, 2.5 , 'hello', 'wilma', 1.62e30, 'betty', "bye");

@any_array = %some_hash; #unwinding the hash

say "@any_array";

my %new_hash = %some_hash;  #unwind and assign
my %inverse_hash = reverse %some_hash; # key, value -> value, key, if duplication happens, last one wins.
say %new_hash;
say %inverse_hash;

my %last_name = (
	'fred' => 'flitstone',
	'dino' => undef,
	'barney' => 'rubble',
	'betty' => 'rubble',
	);

my %last_name = (
	fred => 'flitstone',
	dino => undef,
	barney => 'rubble',
	betty => 'rubble',
	); # quote mark can omit

say $last_name{fred};

my @k = keys %family_name;
my @v = values %family_name;

my $count = %last_name; # 4/8
my $count = keys %last_name; #number of keys
say @k;
say @v;

say $count;

if(%last_name)
{
	say "has something on hash";
}


while(( $key, $value ) = each %last_name) # last will be () -> 0 -> false
{
	say "$key => $value";
}

foreach $key (sort keys %last_name) {
	$value = $last_name{$key};
	say $value;
}


$books{'fred'} = 3;
$books{'jin'} = 1;

if($books{$someone})
{
	print "$someone has at leat one book checked out\n";
}

$books{barney} = 0; # no books currently checked out;
$books{'pebbles'} = undef; #no books ever checked out; new library card;

if(exists $books{'fred'})
{
	print "there is a library card for dino\n";
}

my $person = "fred";
delete $books{$person}; #revoke the libarry cards..

say "%books"; #no interpolation supported in double quote;


foreach $env (keys %ENV){
	say "$env => $ENV{$env}";	
}
