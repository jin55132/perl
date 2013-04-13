
#!usr/bin/env perl
## Copyright (C) 20XX by Yours Truly
use 5.010;


# while(defined($line = <STDIN>))
# {
# 	print "i saw the $line";
# }

# while(<STDIN>)
# {
# 	print "i saw the $_";
# }
# while 과 표준입력을 위와 같이 사용하면 아래와 같이 동작함. 한줄한줄 돌아감
# while( defined($_ = <STDIN>))
# {
# 	print "i saw the $_";
# }


# foreach(<STDIN>)
# {
# 	print "i saw $_";
# }

#foreach 는 목록 문맥이므로 표준입출력을 다 받은후에 foreach를 돈다.
#용량이 큰 파일은 while을 사용하는게 유리하다. while은 루프를 돌면서 이전값을 버림.


# while( defined($line = <>)) #<> 는 입력파일을 하나로 합친다. c:/>ch5.pl ch1.pl
# {
# 	$i++;
# 	chomp($line);
# 	print "$i i saw $line that i saw \n";
# }


#@ARGV =  qw# ch1.pl ch3.pl#;

# while(<>)  #<> read args from ARGV
# {
# 	chomp;
# 	print "i saw $_ that i saw \n";
# }

#print <>;

$ret = print  ( 2+3 ) * 4; # return value (1) * 4...
say $ret;

my @items = qw(wilma dino pebbles);
my $format = "The items are:\n" . ("%10s\n" x @items);

#printf $format, @items;

printf "The items are:\n" .("%10s\n" x @items), @items;
