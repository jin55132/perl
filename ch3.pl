#!/usr/bin/env perl
## Copyright (C) 20XX by Yours Truly

use 5.010;


# say reverse ( <STDIN> );

@names = qw ( fred betty barney dino wilma pebbles bamm-bamm );

say @names;

# chomp(@userindex = <STDIN>);

# while (($index, $value) = each @userindex)
# {
# 	say @names[$value];
# }

# foreach(@userindex)
# {
# 	say @names[$_];
# }

# foreach(0.. $#userindex)
# {
# 	say @names[@userindex[$_]];
# }

# for($i = 0; $i <= $#userindex; $i ++)
# {
# 	say @names[@userindex[$i]];

# }


chomp(@input = sort(<STDIN>));

say @input;