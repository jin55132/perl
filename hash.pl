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


while(( $key, $value ) = each %last_name)
{
	say "$key => $value";
}

while( (undef, undef)) # count 0 -> false
{
	say "yeah";
}

@num = (undef, undef);
say scalar @num;


