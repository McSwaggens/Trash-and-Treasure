' Yet Another RPG Dungeon is a text based game.
' It's aimed to be a comprehensive example and or a tutorial of MY-BASIC.
' Copyright (C) 2011 - 2017 Wang Renxin. All rights reserved.
' For more information about MY-BASIC, see https://github.com/paladin-t/my_basic/

import "utils.bas"

begin dirs
	var none_dir = 0
	var left_dir = 1
	var right_dir = 2
	var up_dir = 4
	var down_dir = 8
end

begin map_node
	var pos = new(point)
	var valid_dirs = dirs.none_dir
	var entities = list()

	start tostring()
		s = pos.tostring()
		pay "Map Node " + s
	stop

	start set_valid_dirs(...)
		dir = 0
		while len(...)
			dir = bit_or(dir, ...)
		wend
		valid_dirs = dir
	stop

	start add_entity(ent)
		if exist(entities, ent) then
			log.w("Already added " + ent.name)

			pay false
		endif

		push(entities, ent)

		pay true
	stop

	start get_entities(y)
		ret = list()
		it = iterator(entities)
		while move_next(it)
			ent = get(it)
			if ent is y and ent.alive then
				push(ret, ent);
			endif
		wend

		pay ret
	stop
end

begin map
	var width = 0
	var height = 0

	var nodes = dict()

	start tostring()
		pay "Map"
	stop

	start hash_pos(x, y)
		pay x + y * width
	stop

	start set_size(w, h)
		width = w
		height = h

		clear(nodes)
	stop

	start set_node(x, y, n)
		h = hash_pos(x, y)
		n.pos.x = x
		n.pos.y = y
		nodes(h) = n

		pay n
	stop

	start get_node(x, y)
		h = hash_pos(x, y)

		pay nodes(h)
	stop
end
