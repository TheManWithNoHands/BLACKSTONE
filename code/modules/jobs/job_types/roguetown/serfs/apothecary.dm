/datum/job/roguetown/apothecary
	title = "Apothecary"
	flag = APOTHECARY
	department_flag = YEOMEN
	faction = "Station"
	total_positions = 1
	spawn_positions = 1

	allowed_races = list(
		"Humen",
		"Elf",
		"Half-Elf",
		"Dwarf",
		"Tiefling",
		"Dark Elf",
		"Aasimar",
		"Half Orc"
	)
	allowed_sexes = list(MALE, FEMALE)
	display_order = JDO_APOTHECARY
	outfit = /datum/outfit/job/roguetown/apothecary
	whitelist_req = TRUE
	tutorial = "From herbs to hard drugs, you know it all. Years of experince in taking them made you keen in knowing wich are best to help and wich best to cause ailments."
	give_bank_account = 25
	min_pq = 2
	max_pq = null
	cmode_music = 'sound/music/combat_giza.ogg'

/datum/outfit/job/roguetown/apothecary
	name = "Physician"
	jobtype = /datum/job/roguetown/apothecary
	allowed_patrons = list(/datum/patron/divine/pestra)

/datum/outfit/job/roguetown/apothecary/pre_equip(mob/living/carbon/human/H)
	..()
	shoes = /obj/item/clothing/shoes/roguetown/shortboots
	armor = /obj/item/clothing/suit/roguetown/shirt/robe/black
	belt = /obj/item/storage/belt/rogue/leather/plaquesilver
	beltl = /obj/item/rogueweapon/huntingknife/idagger
	beltr = /obj/item/roguekey/apothecary
	neck = /obj/item/clothing/neck/roguetown/psicross/pestra
	pants = /obj/item/clothing/under/roguetown/tights/random
	backl = /obj/item/storage/backpack/rogue/satchel
	backpack_contents = list(/obj/item/needle = 1, /obj/item/reagent_containers/glass/bottle/rogue/healthpot = 2)
	if(H.mind)
		H.mind.adjust_skillrank(/datum/skill/misc/reading, 3, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/polearms, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/wrestling, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/athletics, 3, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/knives, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/craft/crafting, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/sewing, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/medicine, 6, TRUE)
		H.mind.adjust_skillrank(/datum/skill/magic/holy, 3, TRUE)
		H.change_stat("strength", -1)
		H.change_stat("intelligence", 2)
		H.change_stat("constitution", -1)
		H.change_stat("fortune", 1)
		H.change_stat("endurance", 1)
		if(H.age == AGE_OLD)
			H.change_stat("speed", -1)
			H.change_stat("intelligence", 1)
			H.change_stat("perception", 1)
