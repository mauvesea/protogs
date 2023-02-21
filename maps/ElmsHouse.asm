	object_const_def
	const ELMSHOUSE_ELMS_WIFE

ElmsHouse_MapScripts:
	def_scene_scripts

	def_callbacks

ElmsWife:
	jumptextfaceplayer ElmsWifeText

ElmsHousePC:
	jumptext ElmsHousePCText

ElmsWifeText:
	text "Hi, <PLAYER>!"
	
	para "Are you looking"
	line "for <RIVAL>?"
	
	para "He just left."
	
	para "I think he was"
	line "going to PROF.ELM's"
	
	para "LAB."
	done

ElmsHousePCText:
	text "Hello, <RIVAL>!"
	line "It's me, PROF.ELM."
	
	para "Could you please"
	line "come to my lab?"
	
	para "I need you to"
	line "help me with"
	cont "something."
	
	para "If you see"
	line "<PLAYER>, please"
	
	para "bring him as well."
	
	para "Sincerely,"
	line "PROF. ELM"
	done

ElmsHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, NEW_BARK_TOWN, 4
	warp_event  3,  7, NEW_BARK_TOWN, 4

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, ElmsHousePC

	def_object_events
	object_event  6,  5, SPRITE_TEACHER, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, ElmsWife, -1
