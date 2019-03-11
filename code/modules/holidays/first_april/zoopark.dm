var/global/list/first_april_species = list(VULPKANIN, AKULA)
var/global/list/first_april_species_hasskincolor = list(VULPKANIN, AKULA)

/datum/species/vulpkanin
	name = VULPKANIN
	icobase = 'code/modules/holidays/first_april/r_vulpkanin.dmi'
	deform = 'code/modules/holidays/first_april/r_vulpkanin.dmi'
	//language = "Siik'maas"
	//additional_languages = list("Siik'tajr")
	tail = "vulptail"
	unarmed_type = /datum/unarmed_attack/claws
	dietflags = DIET_OMNI
	taste_sensitivity = TASTE_SENSITIVITY_SHARP
	darksight = 5 //worse than cats, but better than lizards. -- Poojawa
	//nighteyes = 1

	primitive = /mob/living/carbon/monkey/tajara

	brute_mod = 1.10
	burn_mod = 1.10
	speed_mod = -0.2

	flags = list(
	 IS_WHITELISTED = TRUE
	,HAS_LIPS = TRUE
	,HAS_UNDERWEAR = TRUE
	,HAS_TAIL = TRUE
	,HAS_SKIN_COLOR = TRUE
	,HAS_HAIR = TRUE
	)

	flesh_color = "#966464"
	base_color = "#B43214"

/datum/species/akula
	name = AKULA
	icobase = 'code/modules/holidays/first_april/r_akula.dmi'
	deform = 'code/modules/holidays/first_april/r_akula.dmi'
	language = "Skrellian"
	//language = "Siik'maas"
	//additional_languages = list("Siik'tajr")
	tail = "akulatail"
	unarmed_type = /datum/unarmed_attack/claws
	dietflags = DIET_OMNI
	taste_sensitivity = TASTE_SENSITIVITY_SHARP
	//darksight = 5 //worse than cats, but better than lizards. -- Poojawa
	//nighteyes = 1

	primitive = /mob/living/carbon/monkey

	/*brute_mod = 1.10
	burn_mod = 1.10
	speed_mod = -0.2*/

	flags = list(
	 IS_WHITELISTED = TRUE
	,HAS_LIPS = TRUE
	,HAS_UNDERWEAR = TRUE
	,HAS_TAIL = TRUE
	,HAS_SKIN_COLOR = TRUE
	,HAS_HAIR = TRUE
	)

	flesh_color = "#AFA59E"
	base_color = "#777777"