	const_def 2 ; object constants
	const ECRUTEAKLUGIASPEECHHOUSE_GRAMPS
	const ECRUTEAKLUGIASPEECHHOUSE_YOUNGSTER

EcruteakLugiaSpeechHouse_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

EcruteakLugiaSpeechHouseGrampsScript:
	jumptextfaceplayer EcruteakLugiaSpeechHouseGrampsText

EcruteakLugiaSpeechHouseYoungsterScript:
	jumptextfaceplayer EcruteakLugiaSpeechHouseYoungsterText

LugiaSpeechHouseRadio:
	jumpstd radio2

EcruteakLugiaSpeechHouseGrampsText:
	text "This happened when"
	line "I was young."

	para "The sky suddenly"
	line "turned black. A"

	para "giant flying #-"
	line "MON was blocking"
	cont "out the sun."

	para "I wonder what that"
	line "#MON was? "

	para "It was like a bird"
	line "and a dragon."
	done

EcruteakLugiaSpeechHouseYoungsterText:
	text "Is there really a"
	line "#MON that big?"

	para "If it exists, it"
	line "must be powerful."
	done

EcruteakLugiaSpeechHouse_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event 3, 7, 7, ECRUTEAK_CITY
	warp_event 4, 7, 7, ECRUTEAK_CITY

	db 0 ; coord events

	db 1 ; bg events
	bg_event 2, 1, BGEVENT_READ, LugiaSpeechHouseRadio

	db 2 ; object events
	object_event 2, 3, SPRITE_GRAMPS, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, EcruteakLugiaSpeechHouseGrampsScript, -1
	object_event 5, 4, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, EcruteakLugiaSpeechHouseYoungsterScript, -1
