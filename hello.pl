#!/usr/bin/perl # 위에꺼 있으면 커맨드창에서 chmod +x 하면, 바로 실행 가능함 경로에 perl이 있어야함
#!/usr/bin/env perl   #perl 경로에 관계없이 실행 가능

use 5.010; 
# say 같은 경우 5.100에 추가된 기능으로 위에서 버젼을 명시해야 해당 기능을 사용가능함. v5.10 -> 5.010으로 표시

say "hello world"; #say 는 newline 포함
print "hello printf\n";


@line = `perldoc -u -f atan2`;

foreach(@line) {
	s/\w<([^>]+)>/\U$1/g;
	print;
}