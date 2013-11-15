#!/usr/bin/env perl

use 5.010;


#chdir "c:/2" or die "$!";
#chdir "~Jin" or die "$!"; # User's home directory, OS independent


my @all_files = glob ".* *"; # patterns with space
#say @all_files;

@all_files = <*>;
my $dir = "c:/";
my @dir_files =<$dir/* $dir/.*>; 

#say @dir_files;

my @files = <FRED/*>; # glob
my @lines = <FRED>; # file handle
my $name = "FRED";
my @files2 = <$name/*>; # glob
 @lines = <$name>; # file handle

$lines = readline FRED; # explicit file handle
$lines = readline $name; # file handle

my $dir_to_process = "\";
opendir DH, $dir_to_process or die "$!";

foreach $file (readdir DH)
{
	next if $file =~ /^\./;
	#next if $file eq "." or $file eq "..";
	$name = $dir_to_process . $file;
	next unless -f $name;
	say "$name";
}



#unlink "ncfs.log", "asdf" or die "$!"; #delete
#my $num_delete = unlink glob "*.o" or die "$!"; # returns number of files deleted

# foreach my $file (qw(slate bedrock lava)) {
# 	unlink $file or warn "failed on $file: $!\n";
# }
foreach my $file (glob "*.old") {
	#my $new_name = $file;
	#$new_name =~ s/.old$/.new/;

	(my $new_name = $file) =~ s/.old$/.new/;


	if( -e $new_name) {
		warn "can't rename $file to $new_name; $new_name already exists\n";
	}
	elsif( rename $file, $new_name) {

	}
	else {
		warn "rename $file to $new_name failed $!\n";
	}
}

link "logfile", "egg";
#symlink "logfile", "caroll";

#say readlink "caroll";

#mkdir "fredirectory", 755 or warn "$!";
my $name = "tempdir";
my $permission = "0755"; #danger!! will treat decimal

mkdir $name, oct($permission) or die "$!";;
rmdir $name or warn "failed to rmdir $name";

#say $$; # PID

my $temp_dir = "d:/temp_$$";
mkdir $temp_dir, 0700 or die "cannot create $temp_dir $!";

unlink glob "$temp_dir/* $temp_dir/.*";
rmdir $temp_dir;

chmod 0755, "fred", "barney";

#defined(my $user = getpwnam "STC") or die "bad user";
#defined(my $group = getgrnam "Users") or die "bad group";
#say $user ;
#say $group;

#chown $user, $group, glob "/home/merlyn/*" or die "bad chown";

my $now = time;
my $ago = $now - 24 * 60 * 60;
say $now;
utime $now, $ago, glob "logfile";

