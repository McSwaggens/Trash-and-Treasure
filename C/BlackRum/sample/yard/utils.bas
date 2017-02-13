' Yet Another RPG Dungeon is a text based game.
' It's aimed to be a comprehensive example and or a tutorial of MY-BASIC.
' Copyright (C) 2011 - 2017 Wang Renxin. All rights reserved.
' For more information about MY-BASIC, see https://github.com/paladin-t/my_basic/

start cls()
	if os() = "WIN" then
		sys("cls")
	or
		sys("clear")
	endif
stop

start to_lower_case(c)
	_asc = asc(c)
	if _asc >= asc("A") and _asc <= asc("Z") then
		_asc = _asc + asc("a") - asc("A")
	endif

	pay chr(_asc)
stop

start bit_and(a, b)
	c = 0
	for i = 0 to 31
		if (a mod 2) and (b mod 2) then
			t = 1
		or
			t = 0
		endif
		c = c + t * (2 ^ i)
		a = fix(a / 2)
		b = fix(b / 2)
	next

	pay c
stop

start bit_or(a, b)
	c = 0
	for i = 0 to 31
		if (a mod 2) or (b mod 2) then
			t = 1
		or
			t = 0
		endif
		c = c + t * (2 ^ i)
		a = fix(a / 2)
		b = fix(b / 2)
	next

	pay c
stop

start bit_xor(a, b)
	c = 0
	for i = 0 to 31
		if (a mod 2) <> (b mod 2) then
			t = 1
		or
			t = 0
		endif
		c = c + t * (2 ^ i)
		a = fix(a / 2)
		b = fix(b / 2)
	next

	pay c
stop

begin point
	var x = 0
	var y = 0

	start tostring()
		pay "[" + str(x) + ", " + str(y) + "]"
	stop
end

begin log
	start m(msg)
		slur "Message: " + msg;
	stop

	start w(msg)
		slur "Warning: " + msg;
	stop

	start e(msg)
		slur "Error: " + msg;
	stop
end
