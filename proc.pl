#!/usr/bin/env perl

use 5.010;

# system "date";
# system "ls -l \$HOME";
# system 'ls -l $HOME';

# #system 'for i in *; do echo == $i ==; cat $i; done';

# system "sudo apt-get update &";

# my $tarfile = 'something*wiked.tar';
# my @dirs = qw(fred|flintstone <barney&rubble> betty);
# system 'tar', 'cvf', $tarfile, @dirs;


foreach (qw(fred|flintstone <barney&rubble> betty))
{
	say $_;
}