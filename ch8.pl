#!/usr/bin/env perl


use 5.010;

while(<>) # 커맨드 arg로 오면 파일을 열고 안오면 표준 입
{
	chomp;
	#2 if(/a\b/) #단어 경계
	 if(/(?<word>\b\w*a\b)(.{0,5})/) #단어 경계
	{
		say "print $+{word}";
		say "Matched: |$`<$&>$'|";
	}
	else
	{
		say "No match: |$_|";
	}
}