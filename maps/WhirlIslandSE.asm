WhirlIslandSE_MapScriptHeader:
.MapTriggers:
	db 0

.MapCallbacks:
	db 0

WhirlIslandSE_MapEventHeader:
	; filler
	db 0, 0

.Warps:
	db 2
	warp_def $d, $5, 4, GROUP_ROUTE_41, MAP_ROUTE_41
	warp_def $3, $5, 6, GROUP_WHIRL_ISLAND_B1F, MAP_WHIRL_ISLAND_B1F

.XYTriggers:
	db 0

.Signposts:
	db 0

.PersonEvents:
	db 0
