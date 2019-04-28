/obj/item/weapon/gun/projectile/m79
	name = "\improper m79 grenade launcher"
	desc = "Uses 40x46 ammunition."
	icon = 'icons/obj/gun.dmi'
	icon_state = "m79"
	item_state = "m79"
	w_class = ITEM_SIZE_LARGE
	force = 10
	slot_flags = SLOT_FLAGS_BACK
	origin_tech = "combat=5;materials=3"
	recoil = 0 //extra kickback
	mag_type = /obj/item/ammo_box/magazine/internal/m79
	fire_sound = 'sound/weapons/guns/gunshot_m79.ogg'
	var/open = 0

/obj/item/weapon/gun/projectile/m79/isHandgun()
	return 0

/obj/item/weapon/gun/projectile/m79/update_icon()
	if(open)
		icon_state = "m79-open"
	else
		icon_state = "m79"

/obj/item/weapon/gun/projectile/m79/process_chamber()
	return ..(0, 0)

/obj/item/weapon/gun/projectile/m79/attackby(obj/item/A, mob/user)
	if(!open)
		return
	if(chambered)
		to_chat(user, "<span class='warning'>There is a shell inside \the [src]!</span>")
		return
	var/num_loaded = magazine.attackby(A, user, 1)
	if(num_loaded)
		playsound(src.loc, 'sound/weapons/guns/reload_m79.ogg', 50, 1)
		to_chat(user, "<span class='notice'>You load [num_loaded] shell\s into \the [src]!</span>")
		var/obj/item/ammo_casing/AC = magazine.get_round() //load next casing.
		chambered = AC
		update_icon()	//I.E. fix the desc
		A.update_icon()

/obj/item/weapon/gun/projectile/m79/attack_self(mob/user)
	open = !open
	if(open)
		playsound(src.loc, 'sound/weapons/guns/m79_out.ogg', 50, 1)
		if(chambered)
			addtimer(CALLBACK(GLOBAL_PROC, .proc/playsound, loc, 'sound/weapons/guns/shell_drop.ogg', 50, 1), 3)
			chambered.loc = get_turf(src)//Eject casing
			chambered.SpinAnimation(5, 1)
			chambered = null
	else
		playsound(src.loc, 'sound/weapons/guns/m79_in.ogg', 50, 1)
		open = 0
	add_fingerprint(user)
	update_icon()

/obj/item/weapon/gun/projectile/m79/special_check(mob/user)
	if(open)
		to_chat(user, "<span class='warning'>You can't fire [src] while it is open!</span>")
		return 0
	return ..()
