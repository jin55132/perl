#!/usr/bin/perl 
#===============================================================================
#
#         FILE: 16.pl
#
#        USAGE: ./16.pl  
#
#  DESCRIPTION:e 
#
#      OPTIONS: ---
# REQUIREMENTS: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: YOUR NAME (), 
# ORGANIZATION: 
#      VERSION: 1.0
#      CREATED: 10/24/2013 11:38:30 PM
#     REVISION: ---
#===============================================================================

use strict;
use warnings;

use 5.010;

#my $dir = "/home";
#open STDOUT, '>', 'ls.out';
#open STDERR, '>', 'ls.err';
#chdir $dir or die "cannot chdir to $dir: $!";
#exec "ls -ls $dir";

# write a program to parse output of the date command , if the day of the week is a weekday print get to work or print go play.


if( `date` =~ /\AS/ ) { #start with S(unday)
	print "go play\n";

}else{
	print "get to work\n";
}

sub my_hup_handler {state $n; say 'Caught HUP: ', ++$n}
sub my_usr1_handler {state $n; say 'Caught USR1: ', ++$n}
sub my_int_handler {say 'Caught INT. Exit'; exit}


say "I am $$";
foreach my $signal (qw (int hup usr1)) {
	$SIG { uc $signal } = "my_${signal}_handler";
}

while(1) {sleep 1};

