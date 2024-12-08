	db SHUCKLE ; 213

	db  35,  25,  60,  15,  15,  60
	;   hp  atk  def  spd  sat  sdf

	db ROCK, GROUND ; type
	db 190 ; catch rate
	db 80 ; base exp
	db BERRY, BERRY ; items
	db GENDER_UNKNOWN ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
IF DEF(_GOLD)
	INCBIN "gfx/pokemon/shuckle/front_gold.dimensions"
ELIF DEF(_SILVER)
	INCBIN "gfx/pokemon/shuckle/front_silver.dimensions"
ENDC
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, ROLLOUT, TOXIC, ROCK_SMASH, HIDDEN_POWER, SUNNY_DAY, SNORE, PROTECT, ENDURE, FRUSTRATION, EARTHQUAKE, RETURN, DIG, MUD_SLAP, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, SLUDGE_BOMB, SANDSTORM, DEFENSE_CURL, REST, ATTRACT, STRENGTH, FLASH
	; end
