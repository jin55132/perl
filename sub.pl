#/usr/bin/env perl

use 5.010;

$fred = 4;
$wilma = 5;


sub marine {
	$n += 1; #global variable $n
	print "hello, sailor number $n\n";
	$r = $fred + $wilma;	#last calculation will be return value;

}

sub larger_of_fred_or_barney {
	if($fred > $barney) {
		$fred;
	} else {
		$barney;
	}
}

sub max {
	#say @_;  #argument list
 	#say $_[0]; #argument variable
 	
 	# if($_[0] > $_[1]){
 	# 	$_[0];
 	# } else {
 	# 	$_[1];
 	# }

 	#my($m, $n); # private variables;
 	#($m, $n) = @_; #give names to the parameters;
 	my($m, $n) = @_;
 	if($m > $n) {$m} else {$n}

}

say max(99,100);
say max(110,100,200);

$return = marine;
&marine;


say $return;
say $r;