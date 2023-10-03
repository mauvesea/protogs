	object_const_def
	const VIOLETBILLSHOUSE_BILL

VioletBillsHouse_MapScripts:
	def_scene_scripts

	def_callbacks
	
VioletBillsHouseScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_HM01_CUT
	iftrue .AlreadyGotCut	
	writetext VioletBillsHouseText1
	waitbutton
	checkevent EVENT_BEAT_SAGE_LI
	iftrue .BeatSageLi
	closetext
	end

.BeatSageLi:
	writetext VioletBillsHouseText2
	promptbutton
	verbosegiveitem HM_CUT
	setevent EVENT_GOT_HM01_CUT
	writetext VioletBillsHouseText3
	waitbutton
	closetext
	end
	
.AlreadyGotCut:
	writetext VioletBillsHouseText4
	waitbutton
	closetext
	end
	
VioletBillsHouseVBScript:
	jumptext VioletBillsHouseVBText

VioletBillsHouseText1:
	text "Hello! I'm BILL!"
	line "The #MON"
	cont "MANIAC!"
	
	para "And who are you?"
	
	para "… … …"
	line "… … …"
	
	para "I see! So you're"
	line "<PLAYER>!"
	
	para "You'll probably"
	line "need to use the"
	
	para "#MON Storage"
	line "System I developed"
	
	para "if you're willing"
	line "to complete your"
	cont "#DEX!"
	
	para "Don't worry, you"
	line "can use it for"
	cont "free."
	
	para "Oh yeah, have"
	line "you been to"
	cont "SPROUT TOWER?"
	
	para "If you beat"
	line "that old sage"
	
	para "there in a #-"
	line "MON battle, I'll"
	cont "give you a gift!"
	done

VioletBillsHouseText2:
	text "Oh! You beat"
	line "him already?"
	
	para "Then it means"
	line "you have a strong"
	
	para "bond with you"
	line "#MON."
	
	para "Here, you should"
	line "have this."
	done
	
VioletBillsHouseText3:
	text "That's the CUT HM."
	line "Teach that to a"

	para "#MON to clear"
	line "small trees."

	para "Of course, you"
	line "have to have the"

	para "GYM BADGE from"
	line "VIOLET to use it."
	done
	
VioletBillsHouseText4:
	text "Good luck on"
	line "your journey!"
	done

VioletBillsHouseVBText:
	text "Woah! It's a"
	line "VIRTUAL BOY!"
	
	para "It's in 3D!"
	done

VioletBillsHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, VIOLET_CITY, 10
	warp_event  3,  7, VIOLET_CITY, 10

	def_coord_events

	def_bg_events
	bg_event  6,  1, BGEVENT_READ, VioletBillsHouseVBScript

	def_object_events
	object_event  5,  2, SPRITE_BILL, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VioletBillsHouseScript, -1
