// -----------------------------------------------------------------------------
// 	Copyright (C) 2013-2014 TwinDrills, All Rights Reserved
// -----------------------------------------------------------------------------
using game.weapons.projectile_weapon;

[
	Name("Buff Grenade Price"), 
	Description("AOE grenade that increases users price.") 
]
public class Weapon_Buff_Grenade_Price : Projectile_Weapon
{	
	Weapon_Buff_Grenade_Price()
	{
		Name = Locale.Get("#item_buff_grenade_price_name");

		Walk_Animation 	= "avatar_body_price_grenade";
		Fire_Animation	= "avatar_body_price_grenade_fire";

		Direction_Layers = { 
			1, 	// S
			1, 	// SE
			1, 	// E
			0, 	// NE
			0, 	// N
			0, 	// NW
			1, 	// W
			1 	// SW
		};

		Muzzle_Position = {
			Vec2(29, 41),		// S
			Vec2(33, 41),		// SE
			Vec2(33, 41),		// E
			Vec2(33, 40),		// NE
			Vec2(33, 37),		// N
			Vec2(32, 40),		// NW
			Vec2(29, 41),		// W
			Vec2(32, 41)		// SW
		};  

		Slot					= Weapon_Slot.Grenade;
		SubType					= Weapon_SubType.Grenade;
		Speed_Multiplier		= 1.0;

		Screenshake_Duration	= 0;
		Screenshake_Intensity	= 0;
		
		Clip_Size				= 1;
		Reserve_Size			= 4;
		Initial_Ammo			= 4;
		Reload_Duration			= 0.500;
		Has_Unlimited_Ammo	 	= false;
		Fire_Interval			= 0.500;			
		Fire_Ammo_Usage			= 1;
		Is_Rechargable			= false;

		Can_Buffs_Regenerate_Ammo	= false;
		Ignore_Spawn_Collision		= false;

		Hear_Radius				= 72.0f;
		
		HUD_Icon				= "game_hud_weaponicon_buff_grenade_price";
		HUD_Ammo_Icon			= "game_hud_ammoicon_buff_grenade_price";
		
		Fire_Sound				= "sfx_objects_weapons_buff_grenade_fire";
		
		AI_Priority				= 0.1f;

		Item_Type 				= Item_Archetype.Find_By_Type(typeof(Item_Buff_Grenade_Price));
		
		// Projectile specific settings.
		Muzzle_Effect			= "buff_grenade_price_fire";
		Is_Automatic			= false;
        
		Pickup_Sprite	= "actor_pickups_buff_grenade_price_0";
		Pickup_Name		= Locale.Get("#item_buff_grenade_price_name");
		Pickup_Sound	= "sfx_objects_pickups_buffgrenade_pickup";
	}	
}
