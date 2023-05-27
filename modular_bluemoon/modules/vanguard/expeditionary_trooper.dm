/datum/job/expeditionary_trooper
	title = JOB_VANGUARD_OPERATIVE
	description = "Принимай участие в проекте Врата, исследуя Мир по ту сторону Аномалии Синих Лун. Наблюдай за гибелью друзей и найди всю существующую добычу..."
	department_head = list(JOB_CAPTAIN)
	faction = FACTION_STATION
	total_positions = 4
	spawn_positions = 4
	supervisors = "Центральное Командование, Директор Отдела Исследований и Капитан Космической Станции"
	minimal_player_age = 40
	exp_requirements = 400
	exp_required_type = EXP_TYPE_CREW
	exp_required_type_department = EXP_TYPE_SCIENCE
	exp_granted_type = EXP_TYPE_CREW
	config_tag = "VANGUARD_OPERATIVE"

	departments_list = list(
		/datum/job_department/science,
	)

	outfit = /datum/outfit/job/expeditionary_trooper
	plasmaman_outfit = /datum/outfit/plasmaman/mining

	paycheck = PAYCHECK_CREW
	paycheck_department = ACCOUNT_SCI

	display_order = JOB_DISPLAY_ORDER_EXP_CORPS
	bounty_types = CIV_JOB_SCI

	family_heirlooms = list(/obj/item/binoculars)

	veteran_only = TRUE

	job_flags = JOB_ANNOUNCE_ARRIVAL | JOB_CREW_MANIFEST | JOB_EQUIP_RANK | JOB_CREW_MEMBER | JOB_NEW_PLAYER_JOINABLE | JOB_REOPEN_ON_ROUNDSTART_LOSS | JOB_ASSIGN_QUIRKS

/datum/outfit/job/expeditionary_trooper
	name = "Vanguard Operative"
	jobtype = /datum/job/expeditionary_trooper

	shoes = /obj/item/clothing/shoes/combat/expeditionary_corps
	ears = /obj/item/radio/headset/headset_sci
	uniform = /obj/item/clothing/under/rank/expeditionary_corps
	glasses = /obj/item/clothing/glasses/sunglasses/big

	backpack = /obj/item/storage/backpack
	satchel = /obj/item/storage/backpack/satchel
	duffelbag = /obj/item/storage/backpack/duffelbag

	box = /obj/item/storage/box/survival/expeditionary_corps

	backpack_contents = list(/obj/item/summon_beacon/vanguard)

	id = /obj/item/card/id/advanced/silver/exp_corps
	id_trim = /datum/id_trim/job/expeditionary_trooper

	belt = /obj/item/modular_computer/pda/expeditionary_corps

/obj/effect/landmark/start/expeditionary_corps
	name = "Vanguard Operative"
	icon_state = "Vanguard Operative"
	icon = 'modular_skyrat/master_files/icons/mob/landmarks.dmi'

/obj/item/modular_computer/pda/expeditionary_corps
	greyscale_colors = "#891417#000099"
	name = "Military PDA"
	long_ranged = TRUE
/obj/item/storage/box/survival/expeditionary_corps
	mask_type = /obj/item/clothing/mask/gas/alt

/obj/item/card/id/advanced/silver/exp_corps
	wildcard_slots = WILDCARD_LIMIT_CENTCOM

/obj/structure/closet/crate/secure/exp_corps
	name = "Expedition Crate"
	desc = "A secure crate, for Expeditionary Corps only!"
	icon_state = "expcrate"
	icon = 'modular_skyrat/modules/exp_corps/icons/exp_crate.dmi'
	req_access = list(ACCESS_GATEWAY)
	max_integrity = 500
	var/loadout_desc = "Whoever picks this is an incredibly boring generalist."

/obj/structure/closet/crate/secure/exp_corps/pointman
	name = "Pointman Crate"
	loadout_desc = "The Pointman's role is to lead the expedition team from the front \
	lines, and has been outfitted with a Shield. Due to the manufacturing costs involved \
	the Pointman kit lacks when it comes to engineering and medical tools."

/obj/structure/closet/crate/secure/exp_corps/field_medic
	name = "Field Medic Crate"
	loadout_desc = "The Field Medic's role is to ensure that the expidition returns at all. \
	Their role as a supportive unit is vital, and they are outfitted with the tools required of \
	their duty. This comes at the cost of any engineering equipment."

/obj/structure/closet/crate/secure/exp_corps/combat_tech
	name = "Combat Tech Crate"
	loadout_desc = "A Combat Tech is always good for an expedition. Having someone with \
	mechanical know-how can mean life or death. A good role to bring along to any expedition. \
	Sadly, this kit is lacking when it comes to medical equipment."

/obj/structure/closet/crate/secure/exp_corps/marksman
	name = "Marksman Crate"
	loadout_desc = "A Combat Tech is always good for an expedition. Having someone with \
	mechanical know-how can mean life or death. A good role to bring along to any expedition. \
	Sadly, this kit is lacking when it comes to medical equipment."

//base, don't use this, but leaving it for admin spawns is probably a good call?
/obj/structure/closet/crate/secure/exp_corps/PopulateContents()
	new /obj/item/storage/medkit/tactical(src)
	new /obj/item/storage/box/expeditionary_survival(src)
	new /obj/item/radio(src)
	new /obj/item/melee/tomahawk(src)
	new /obj/item/clothing/gloves/color/black/expeditionary_corps(src)
	new /obj/item/clothing/head/helmet/expeditionary_corps(src)
	new /obj/item/clothing/suit/armor/vest/expeditionary_corps(src)
	new /obj/item/storage/belt/military/expeditionary_corps(src)
	new /obj/item/storage/backpack/duffelbag/expeditionary_corps(src)

//shield guy
/obj/structure/closet/crate/secure/exp_corps/pointman/PopulateContents()
	new /obj/item/storage/medkit/regular(src)
	new /obj/item/storage/box/expeditionary_survival(src)
	new /obj/item/radio(src)
	new /obj/item/melee/tomahawk(src)
	new /obj/item/clothing/gloves/color/black/expeditionary_corps(src)
	new /obj/item/clothing/head/helmet/expeditionary_corps(src)
	new /obj/item/clothing/suit/armor/vest/expeditionary_corps(src)
	new /obj/item/storage/belt/military/expeditionary_corps/pointman(src)
	new /obj/item/storage/backpack/duffelbag/expeditionary_corps(src)
	new /obj/item/shield/riot/pointman(src)

//medic
/obj/structure/closet/crate/secure/exp_corps/field_medic/PopulateContents()
	new /obj/item/storage/medkit/expeditionary(src)
	new /obj/item/storage/box/expeditionary_survival(src)
	new /obj/item/radio(src)
	new /obj/item/clothing/gloves/latex/nitrile/expeditionary_corps(src)
	new /obj/item/clothing/head/helmet/expeditionary_corps(src)
	new /obj/item/clothing/suit/armor/vest/expeditionary_corps(src)
	new /obj/item/storage/belt/military/expeditionary_corps/field_medic(src)
	new /obj/item/storage/backpack/duffelbag/expeditionary_corps(src)
	new /obj/item/healthanalyzer(src)

//engineer gaming
/obj/structure/closet/crate/secure/exp_corps/combat_tech/PopulateContents()
	new /obj/item/storage/medkit/emergency(src)
	new /obj/item/storage/box/expeditionary_survival(src)
	new /obj/item/radio(src)
	new /obj/item/melee/tomahawk(src)
	new /obj/item/clothing/gloves/chief_engineer/expeditionary_corps(src)
	new /obj/item/clothing/head/helmet/expeditionary_corps(src)
	new /obj/item/clothing/suit/armor/vest/expeditionary_corps(src)
	new /obj/item/storage/belt/military/expeditionary_corps/combat_tech(src)
	new /obj/item/storage/backpack/duffelbag/expeditionary_corps(src)
	new /obj/item/skillchip/job/engineer(src)
	new /obj/item/storage/bag/material(src)
