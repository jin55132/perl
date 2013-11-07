#!/usr/bin/perl 


use 5.010;

open FILE, "customs";

while(<FILE>) {
	chomp;
	my @items = split /:/;
	my ($card_num, $count) = ($items[1], $items[5]);
	#same as
	my (undef, $card_num, undef, undef, undef, $count) = split /:/;
	#same as
	my $card_num = (split /:/)[1];
	my $count = (split /:/)[5];
	#same as
	my ($card_num, $count) = (split /:/)[1,5];
	#same as
	my ($card_num, $count) = (split /:/)[1,-1]; #-1 is the last element
	say "$card_num, $count";

}

my $some_file  = "customs"; 
my (undef,undef,undef,undef,undef,undef,undef,undef,undef,$mtime) = stat $some_file;

#same as

my $mtime = (stat $some_file)[9];
#my $mtime = stat ($some_file)[9]; #syntax error!!

say $mtime;


# array slice

my @name = qw{ zero one two three for five six seven eight nine };
my @numbers = (@name)[9,1,2,5,2];
# same as
my @numbers = @name[9,1,2,5,2]; # parenthesis not required with ARRAY
say "Bedrock @name[9,1,2,5,2]";

@name[0,9] = (NewZer,9);
say "@name[0,9]";


#hash slice
my %score;
$score{"barney"} = 100;
$score{"fred"} = 140;
$score{"dino"} = 300;

my @three_scores = ($score{"barney"}, $score{"fred"}, $score{"dino"});
#same as
my @three_scores = @score{(barney, fred, dino)};
say "@three_scores";

my @players = qw /barney fred dino/;
my @new_scores = (3455,234,111);

@score{@players} = @new_scores;
say "@players";
say "@score{@players}";

