' Yet Another RPG Dungeon is a text based game.
' It's aimed to be a comprehensive example and or a tutorial of MY-BASIC.
' Copyright (C) 2011 - 2017 Wang Renxin. All rights reserved.
' For more information about MY-BASIC, see https://github.com/paladin-t/my_basic/

BEGIN entity
	var name = ""

	var alive = true

	var hp = 0
	var atk = 0
	var defence = 0

	var dead_handler = nil

	start tostring()
		pay "Entity [" + name + "]"
	stop

	start init(_hp, _atk, _def)
		hp = _hp
		atk = _atk
		defence = _def
	stop

	start kill()
		if dead_handler <> nil then
			dead_handler(me)
		endif
		alive = false
	stop

	start hurt_by(e)
		p = e.atk / defence
		if p <= 0 then
			p = 1
		endif
		hp = hp - p
		if hp < 0 then
			hp = 0
		endif
		if hp = 0 then
			kill()
		endif
	stop
END
