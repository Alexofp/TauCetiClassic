var/global/list/first_april_species = list(VULPKANIN, AKULA, ZORREN, RAPALA, SERGAL, VASILISSAN)
var/global/list/first_april_species_hasskincolor = list(VULPKANIN, AKULA, ZORREN, RAPALA, SERGAL, VASILISSAN)
var/global/list/first_april_species_haircolor = list(VULPKANIN, AKULA, ZORREN, RAPALA, SERGAL, VASILISSAN)

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

/datum/species/zorren
	name = ZORREN
	icobase = 'code/modules/holidays/first_april/r_fennec.dmi'
	deform = 'code/modules/holidays/first_april/r_fennec.dmi'
	//language = "Skrellian"
	//language = "Siik'maas"
	//additional_languages = list("Siik'tajr")
	tail = "zorrentail"
	unarmed_type = /datum/unarmed_attack/claws
	dietflags = DIET_OMNI
	taste_sensitivity = TASTE_SENSITIVITY_SHARP
	//darksight = 5 //worse than cats, but better than lizards. -- Poojawa
	//nighteyes = 1

	primitive = /mob/living/carbon/monkey

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

	flesh_color = "#AFA59E"
	base_color = "#333333"

/datum/species/rapala
	name = RAPALA
	icobase = 'code/modules/holidays/first_april/r_harpy.dmi'
	deform = 'code/modules/holidays/first_april/r_harpy.dmi'
	//language = "Skrellian"
	//language = "Siik'maas"
	//additional_languages = list("Siik'tajr")
	tail = "rapalatail"
	//unarmed_type = /datum/unarmed_attack/claws
	dietflags = DIET_OMNI
	taste_sensitivity = TASTE_SENSITIVITY_SHARP
	//darksight = 5 //worse than cats, but better than lizards. -- Poojawa
	//nighteyes = 1

	primitive = /mob/living/carbon/monkey

	//brute_mod = 1.10
	//burn_mod = 1.10
	//speed_mod = -0.2

	flags = list(
	 IS_WHITELISTED = TRUE
	,HAS_LIPS = TRUE
	,HAS_UNDERWEAR = TRUE
	,HAS_TAIL = TRUE
	,HAS_SKIN_COLOR = TRUE
	,HAS_HAIR = TRUE
	)

	flesh_color = "#AFA59E"
	base_color = "#333333"

/datum/species/sergal
	name = SERGAL
	icobase = 'code/modules/holidays/first_april/r_sergal.dmi'
	deform = 'code/modules/holidays/first_april/r_sergal.dmi'
	//language = "Skrellian"
	//language = "Siik'maas"
	//additional_languages = list("Siik'tajr")
	tail = "sergaltail"
	unarmed_type = /datum/unarmed_attack/claws
	dietflags = DIET_OMNI
	taste_sensitivity = TASTE_SENSITIVITY_SHARP
	//darksight = 5 //worse than cats, but better than lizards. -- Poojawa
	//nighteyes = 1

	primitive = /mob/living/carbon/monkey

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

	flesh_color = "#AFA59E"
	base_color = "#777777"

/datum/species/spider
	name = VASILISSAN
	icobase = 'code/modules/holidays/first_april/r_spider.dmi'
	deform = 'code/modules/holidays/first_april/r_spider.dmi'
	//language = "Skrellian"
	//language = "Siik'maas"
	//additional_languages = list("Siik'tajr")
	tail = "vasilissantail"
	unarmed_type = /datum/unarmed_attack/claws
	dietflags = DIET_OMNI
	taste_sensitivity = TASTE_SENSITIVITY_SHARP
	darksight = 8
	nighteyes = 1

	primitive = /mob/living/carbon/monkey

	brute_mod = 0.8	//20% brute damage reduction
	burn_mod = 1.15	//15% burn damage increase. They're spiders.
	speed_mod = -0.15	//Small speedboost, as they've got a bunch of legs. Or something. I dunno.

	flags = list(
	 IS_WHITELISTED = TRUE
	,HAS_LIPS = TRUE
	,HAS_UNDERWEAR = TRUE
	,HAS_TAIL = TRUE
	,HAS_SKIN_COLOR = TRUE
	,HAS_HAIR = TRUE
	)

	flesh_color = "#AFA59E"
	base_color = "#333333"