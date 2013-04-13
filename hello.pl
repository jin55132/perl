#!/usr/bin/perl # 위에꺼 있으면 커맨드창에서 chmod +x 하면, 바로 실행 가능함 경로에 perl이 있어야함
## Copyright (C) 20XX by Yours Truly
#!/usr/bin/env perl   #perl 경로에 관계없이 실행 가능
## Copyright (C) 20XX by Yours Truly

use 5.010; 
# say 같은 경우 5.100에 추가된 기능으로 위에서 버젼을 명시해야 해당 기능을 사용가능함. v5.10 -> 5.010으로 표시

use warnings; 
# 경고 발생

#use diagnostics;
# 경고에 대한 설명 출력

#say "hello world"; #say 는 newline 포함

#@line = `perldoc -u -f atan2`;

#foreach(@line) {
#	s/\w<([^>]+)>/\U$1/g;
#	print;
#}

# chapter 02 Scalar
#print 'this is plain\n' . "attached". "\n";
#print 'iteration' x 3;
#print 5 x 4; #l-value coverted to string
#print '12' * 3;
#print "12abc" * 3;
#printf "12", 6* 7, "56";


#variable
# $a = 'abc';
# $a .= "def";
#$a = $a x 5;
# $asdf = "quoted $a";
#print $asdf;

#print "fred ate $asdfgh\n";
#print "fred ate ${asdf}gh\n";


# 0 은 false, 이외 숫자는 true 숫자 비교연산자는 == != > < >= <=
# ' ' 은 false, 이외 문자는 true 문자 비교연산자는 eq ne lt gt le ge
# say 'a' eq'b';

# say 1 eq 1;

# say '1' == '2'; #conversion to numeric

# $line = <STDIN>;

# if( $line eq "\n") {
# 	print "that was just a blnkk line!\n";
# }
# else
# {

# 	print "that line of input was : $line";
# }

# ($text = <STDIN>);

# print $text;

# while ($count < 10)
# {
# 	$count ++;
# 	say $count;
# }


# $dd = undef;
# $dd =  'defined';
# if( defined($dd) )
# {
# 	print "undef";
# }
# else
# {
# 	print "def";
# }
# print $dd;


$maddona = <STDIN>;
if(defined ($maddona))
{
	print "input was $maddona";

}
else
{
	print "no input available\n";
}