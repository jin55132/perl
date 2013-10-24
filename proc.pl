#!/usr/bin/env perl

use 5.010;

 system "date";
# system "ls -l \$HOME"; # back slash required to avoid interpolate
# system 'ls -l $HOME'; # no interpolate with single quote

 
 #system 'for i in *; do echo == $i ==; cat $i; done'; # print all file's contents
 #system "sudo apt-get update &";


# Avoiding the Shell
 my $tarfile = 'something*wiked.tar';
 my @dirs = qw(fred|flintstone <barney&rubble> betty);
# print "@dirs";
# system 'tar', 'cvf', $tarfile, @dirs; # no shell involved more than one argument, so it's safe because string mangling does not happen like belows
 

 # Dangerous
 my $tarfile = 'something*wicked.tar';
 #my @dirs = qw(fred|flintstone <barney&rubble> betty );
 my @dirs = qw( ; rm -rf / );
 #system "tar cvf $tarfile @dirs"; # could malicious string expands!

unless(system 'date') { # return 0 is okay
	print "we gave you a date OK!\n";
}
#
#"do this or die"
#! system "mv files_to_delete  asdf" or die "somthing went wrong"; #simply add ! at the first

#
#
chdir "/tmp" or die "cannot chdir /tmp: $!";
#exec "ls", "-a", "-l"; # perl process ends here 
#say "Do I?"; # this won't run
#
#custom path
$ENV{'PATH'} = "/home/rootbeer/bin:$ENV{'PATH'}";
delete $ENV{'IFS'}; #delete unnecessary variable
my $make_result = system 'make';
say $make_result;
#
#
chomp(my $now = `date`); #back quote
say "the timie is now $now";
#
my @functions = qw{ int rand sleep length hex eof not exit sqrt umask };
my %about;
#
foreach (@functions) {
#	$about{$_} = `perldoc -t -f $_`; # back quote always interpolate
}

#
## stdout to file
## ls -l > ls-l.txt
#
## stderr to file
## grep da * 2> grep-errors.txt
#
## stdout 2 stderr
## grep da * 1>&2
#
## stderr to stdout
## grep * 2>&1
# 
## stderr and stdout to file
## command &> 
#
my $who_text = `who`; #whole line
my @who_text = `who`; #line-by-line list context
#
foreach (`who`) {
	my ($user, $tty, $date) = /(\S+)\s+(\S+)\s+(.*)/;
	$ttys{$user} .= "$tty at $date\n";
}
#
foreach $name (keys %ttys) {
	say $name;
	say $ttys{$name};
}
#
open DATE, "date|" or die "cannot pipe from date: $!"; # similar to date | my program
#open MAIL, "|mail merlyn" or die "cannot pipe to mail: $!";

my $now = <DATE>;
#print MAIL "THe time is now $now";
#close MAIL;
#die "mail: non-zero exit of $?" if $?; # result of the latest command is in $?

#open my $find_fh, '-|', 'find', qw( / -atime +90 -size +1000 -print) or die "fork: $!"; # fourth argument goes to command arguemnt

#while (<$find_fh>) {
#	chomp;
#	printf "%s size %dK last accessed %.2f days ago\n", $_, (1023 + -s $_)/1024, -A $_; # -s -A refer to file test section
#}

# low level implement of fork
# system "date";
#

defined(my $pid = fork) or die "Cannot fork: $!";

unless ($pid) {
	#child process (pid 0)
	exec "date";
	die " cannot exec date: $!";
}

#parent process
waitpid($pid, 0);


#send SIGNAL
my $pid = 1111;
#kill 2, 4201 or die "cannot signal 4201 with SIGINT: $!";
unless (kill 0, $pid) {
	warn "$pid has gone away";
}

#catch SIGNAL
my $temp_directory="/tmp/myprog.$$";
mkdir $temp_directory, 0700 or die "Cannot create $temp_directory: $!";

sub clean_up {
	say "cleaning up...";
	unlink glob "$temp_directory/*";
	rmdir $temp_directory;
}

sub my_int_handler {
	&clean_up();
#	die "interrupted, exiting...\n";
}
$SIG{'INT'} = 'my_int_handler';
sleep(100);
&clean_up();




