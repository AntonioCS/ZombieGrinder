// -----------------------------------------------------------------------------
// 	Copyright (C) 2013-2014 TwinDrills, All Rights Reserved
// -----------------------------------------------------------------------------
using runtime.math;
using runtime.log;
using game.items.item_archetype;
using game.weapons.pistol.weapon_flare_gun;

public class Item_Flare_Gun : Item_Archetype
{
	Item_Flare_Gun()
	{
		Name 					= "#item_flare_gun_name";
		Description 			= "#item_flare_gun_description";
		Category				= "#item_flare_gun_category";
		
		Slot					= Item_Slot.Weapon;
		Cost					= 150000;
		Unlock_Criteria_Threshold			= 4;
		
		Is_Stackable			= false;
		Is_Buyable				= true;
		Is_Tintable				= false;
		Is_Sellable				= true;
		Is_Tradable				= true;
		Is_Dropable				= true;
		Is_PVP_Usable			= true;
		Is_Inventory_Droppable	= false;
		Is_Premium_Only			= false;
		Premium_Price			= "1;VLV100";
		
		Rarity					= Item_Rarity.Legendary;
		
		Default_Tint			= Vec4(255, 255, 255, 255);
		
		Icon_Animation			= "item_weapon_flare_gun";
		Icon_Offset				= Vec2(16, 10);
		
		Body_Animation			= "avatar_body_flaregun";
		
		Is_Icon_Direction_Based	= false;
		Is_Icon_Overlay			= false;
		
		Weapon_Type				= typeof(Weapon_Flare_Gun);
		
        Override_Inventory_ID_Name = "Item_Flare_Gun_Old";
        Upgrade_Tree            = Item_Upgrade_Tree.Find_By_Type(typeof(Item_Flare_Gun_Upgrade_Tree));
		
		Combine_Name			= "Flare Gun";
		Combine_Group			= "Guns";
		Combinations 			= new Item_Combination[1];
		Combinations[0] 		= Item_Combination("Spanner", Item_Combine_Method.Repair, "Nothing");
	}
}