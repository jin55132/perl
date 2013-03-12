#!/usr/bin/env perl
use 5.010;


sub total{
	my $sum;
	foreach (@_)
	{
		$sum += $_;
	}
	$sum;
}



my @fred = qw {1 2 3 4 5};
say total(@fred);
#say total(<STDIN>);


sub total1000{
	#my ($sum, $i) = 0;
	while($i <= 1000)
	{
		$sum+=$i++;
	}
	return $sum;
}

say total1000();

sub above_averate {
	my $ave = total(@_) / @_; 
	my (@above);
	foreach(@_) {
		if($_ > $ave) {
			push(@above, $_);
		}
	}
	return @above;

}


say above_averate(1..10);

sub greet {
	state @last_persons;
	my $name = $_[0];

	if(defined($last_persons)) {
		say "Hi $name $last_person is also here!";
	} else {
		say "Hi $name I've seen: @last_persons";
	}

	push(@last_persons,$name);
}

greet ("Fred");
greet ("Teddy");
greet ("Jin");
