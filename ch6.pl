#!usr/bin/env perl

use 5.010;

#problem 1
%names = (
	fred => 'flitstone',
	barney => 'rubble',
	wilma => 'flitstone',
	);

chomp($key = <STDIN>);
say $names{$key};


#problem 2
#chomp(@words = <STDIN>);


# while (<STDIN>)
# {
# 	chomp;
# 	$count{$_} += 1;
# }

# foreach $word (sort(keys %count)) {
# 	say "$word : $count{$word}";
# }

$longest = 0;

foreach (keys %ENV)
{
	# if (length($_) > $longest){
	# 	$longest = length($_);

	# }
	my $length = length($_);
	$longest = $length if $length > $longest;
}


while(($k, $v) = each %ENV) {
	printf "%${longest}s : %s\n", $k, $v;
}
