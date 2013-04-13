#!/usr/bin/env perl

use 5.010;

my $in = $ARGV[0];
if (! defined $in) {
	die "Usage: $0 filename";
}

my $out = $in;
$out =~ s/(\.\w+)?$/.out/;

if (! open $in_fh, '<', $in ) {
	die "Can't open '$in': $!";
}
if (! open $out_fh, '>', $out ) {
	die "Can't write '$out': $!";
}

# while (<$in_fh>) {
# 	chomp;
# 	s/Fred/\n/gi; # Replace all FREDs
# 	s/Wilma/Fred/gi; # Replace all WILMAs
# 	s/\n/Wilma/g; # Replace the placeholder
# 	print $out_fh "$_\n";
# }

@context = $in_fh;

say @content;