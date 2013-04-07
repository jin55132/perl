#!/usr/bin/env perl


use 5.010;

while(<>) # 커맨드 arg로 오면 파일을 열고 안오면 표준 입
{
	chomp;
	#2 if(/a\b/) #단어 경계
	 if(/(a\b)/) #단어 경계
	{
		say "'$1'";
		say "Matched: |$`<$&>$'|\n";
	}
	else
	{
		say "No match: |$_|\n";
	}
}