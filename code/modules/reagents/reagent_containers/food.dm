////////////////////////////////////////////////////////////////////////////////
/// Food.
////////////////////////////////////////////////////////////////////////////////
/obj/item/weapon/reagent_containers/food
	flags = OPENCONTAINER
	possible_transfer_amounts = null
	volume = 50 //Sets the default container amount for all food items.
	var/filling_color = "#FFFFFF" //Used by sandwiches.

/obj/item/weapon/reagent_containers/food/self_feed_message(var/mob/user)
	user << "<span class='notice'>You eat \the [src].</span>"
	
/obj/item/weapon/reagent_containers/food/feed_sound(var/mob/user)
	playsound(user.loc, 'sound/items/eatfood.ogg', rand(10, 50), 1)