//TFF 28/8/19 - cleanup of areas placement - removes all but rogueminer_vr stuff.
/area
	var/limit_mob_size = TRUE //If mob size is limited in the area.

/area/Entered(mob/living/H, oldLoc)
	//Clamps mob size when entering a new area that has size limit.
	//Mobs with size_uncapped set to TRUE or 1 will be ignored.
	. = ..()
	if (src.limit_mob_size && isliving(H) && !H.size_uncapped)
		H.resize(H.size_multiplier)

/area/shuttle/belter
	name = "Belter Shuttle"
	icon_state = "shuttle2"

//Rouguelike Mining
/area/asteroid/rogue
	has_gravity = 0
	requires_power = 1
	always_unpowered = 1
	power_light = 0
	power_equip = 0
	power_environ = 0
	var/asteroid_spawns = list()
	var/mob_spawns = list()
	var/shuttle_area //It would be neat if this were more dynamic, but eh.

/area/asteroid/rogue/zone1
	name = "Asteroid Belt Zone 1"
	icon_state = "red2"
	//shuttle_area = /area/shuttle/belter/belt/zone1

/area/asteroid/rogue/zone2
	name = "Asteroid Belt Zone 2"
	icon_state = "blue2"
	//shuttle_area = /area/shuttle/belter/belt/zone2

/area/asteroid/rogue/zone3
	name = "Asteroid Belt Zone 3"
	icon_state = "blue2"
	//shuttle_area = /area/shuttle/belter/belt/zone3

/area/asteroid/rogue/zone4
	name = "Asteroid Belt Zone 4"
	icon_state = "red2"
	//shuttle_area = /area/shuttle/belter/belt/zone4

/area/engineering/engine_gas
	name = "\improper Engine Gas Storage"
	icon_state = "engine_waste"

//holodeck 3/29/21
/area/holodeck/source_smoleworld
	name = "\improper Holodeck - Smolworld"
	
	
