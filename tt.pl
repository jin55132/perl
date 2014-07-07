#!/usr/bin/perl 
#===============================================================================
#
#         FILE: tt.pl
#
#        USAGE: ./tt.pl  
#
#  DESCRIPTION: j
#
#      OPTIONS: ---
# REQUIREMENTS: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: YOUR NAME (), 
# ORGANIZATION: 
#      VERSION: 1.0
#      CREATED: 2013/11/29 00시 05분 51초
#     REVISION: ---
#===============================================================================

use 5.010;
say big_money( -2.5);


sub big_money {
	my $number = sprintf "%.2f", shift @_;
	# Add one comma each time through the do-nothing loop
	1 while $number =~ s/^(-?\d+)(\d\d\d)/$1,$2/;
	# Put the dollar sign in the right place
	#$number =~ s/^(-?)/$1\$/;
	$number;
}
