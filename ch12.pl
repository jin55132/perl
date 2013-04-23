#!/usr/bin/env perl

use 5.010;

#die "no file specified" if scalar @ARGV == 0;
die "no file specified" unless @ARGV;

foreach(@ARGV)
{
	# &filetest($_);
	my $age = -M $_;
	
	($oldest, $filename) = ($age, $_) if $oldest < $age;
	
}

say "$filename is oldest, $oldest";


# sub filetest {
# 	my $file = $_[0];

# 	if( -w $file ) {
# 		say "$_ is writable";
# 	}
# 	if( -r $file ) {
# 		say "$_ is readable"
# 	}
# 	if( -e $file ) {
# 		say "$_ is executable"
# 	}
	
# 	say "$_ does not exist" unless -e $_;
# }