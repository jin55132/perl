#!/usr/bin/env perl

use 5.010;
use LWP::Simple;


my ($sec, $min, $hour, $mday, $mon, $year, $wday, $yday, $isdst) = localtime;
my $now_date_time = sprintf("%04d.-%02d.-%02d. %02d:%02d:%02d", $year + 1900, $mon + 1, $mday, $hour, $min, $sec);

say $now_date_time;



print get('http://www.whatismyip.org/');
