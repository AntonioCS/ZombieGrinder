// -----------------------------------------------------------------------------
// 	Copyright (C) 2013-2014 TwinDrills, All Rights Reserved
// -----------------------------------------------------------------------------
using system.components.sprite;
using system.actors.actor;

[
	Placeable(true), 
	Name("Soda Vending Machine"), 
	Description("Vends soda?") 
]
public class Soda_Vending_Machine : Actor, Interactable
{
	[ 
		Name("Cost"),
		Description("Coin cost if purchasable.")
	]
	public serialized(150) int Cost = 1000;
	
	[ 
		Name("Health"),
		Description("Health restored when bought.")
	]
	public serialized(150) float Health = 50.0f;

	Soda_Vending_Machine()
	{
		Bounding_Box = Vec4(0, 0, 48, 64);
	}
	
	public override float Get_Duration(Pawn other)
	{
		return 250.0f;
	}
	
	public override int Get_Cost(Pawn other)
	{
		return Cost;
	}
	
	public override string Get_Prompt(Pawn other)
	{
		return Locale.Get("#buy_health_prompt").Format(new object[] { Locale.Get("#item_soda_name"), <int>Health });		
	}
	
	public override bool Can_Interact(Pawn other)
	{
		Human_Player player = <Human_Player>other;
		if (player != null) 
		{
			if (player.Health < player.Max_Health)
			{
				return true;
			}
		}
		return false;
	}

	public override void Interact(Pawn other)
	{
		Human_Player player = <Human_Player>other;
		if (player != null) 
		{
			player.Heal(Health, 0.0f);
			Audio.Play2D("sfx_hud_ui_sodavendingmachine_vend");
		}
	}
	
	default state Idle
	{
		event void On_Enter()
		{
			Hibernate();
		}
	}
	
	components
	{
		serialized(1) SpriteComponent sprite
		{
			Frame = "actor_vending_machine_soda_machine_0";
			Color = Vec4(255.0, 255.0, 255.0, 255.0);
			Object_Mask = Vec4(1.0f, 1.0f, 1.0f, 1.0f);
		}
		CollisionComponent collision
		{
			Shape 			= CollisionShape.Rectangle;
			Area 			= Vec4(0, 48, 48, 16);
			Type			= CollisionType.Solid;		
			Group			= CollisionGroup.Environment;
			Collides_With	= CollisionGroup.All;
			Blocks_Path_Spawns	= true;
		}
	}
}