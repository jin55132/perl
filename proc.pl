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


# my $tarfile = 'something*wicked.tar';
# my @dirs = qw(fred|flintstone <barney&rubble> betty );
# system 'tar', 'cvf', $tarfile, @dirs; # Exact 5 argument

# #my @dirs = qw( ; rm -rf / );
# system "tar cvf $tarfile @dirs"; # could malicious string expands!

unless(system 'date') { # return 0 is okay
	print "we gave you a date OK!\n";
}

#"do this or die"
#! system "mv files_to_delete  asdf" or die "somthing went wrong";


chdir "/tmp" or die "cannot chdir /tmp: $!";
#exec "ls", "-a", "-l"; # perl process ends here 
say "Do I?"; # this won't run

#custom path
$ENV{'PATH'} = "/home/rootbeer/bin:$ENV{'PATH'}";
delete $ENV{'IFS'}; #delete unnecessary variable
my $make_result = system 'make';


chomp(my $now = `date`); #back quote
say "the timie is now $now";

my @functions = qw{ int rand sleep length hex eof not exit sqrt umask };
my %about;

#interpreted like double quote
foreach (@functions) {
	$about{$_} = `perldoc -t -f $_`;
}

# stdout to file
# ls -l > ls-l.txt

# stderr to file
# grep da * 2> grep-errors.txt

# stdout 2 stderr
# grep da * 1>&2

# stderr to stdout
# grep * 2>&1
 
# stderr and stdout to file
# command &> file