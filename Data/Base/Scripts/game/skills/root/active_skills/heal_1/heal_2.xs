// -----------------------------------------------------------------------------
// 	Copyright (C) 2013-2014 TwinDrills, All Rights Reserved
// -----------------------------------------------------------------------------
using runtime.math;
using runtime.log;
using game.skills.skill_archetype;

public class Skill_Heal_2 : Skill_Archetype
{
	Skill_Heal_2()
	{
		Name 				= "#skill_heal_2_name";
		Description 		= "#skill_heal_2_description";
		Icon_Frame 			= "skill_heal_2";
		Cost 				= 2;
        Energy_Type         = Skill_Energy_Type.Enemy_Kills;
        Energy_Required     = 300;
		Is_Passive		 	= false;
		Are_Children_Mutex 	= true;
		Parent_Name 		= "Skill_Heal_1";
		Is_Team_Based		= false;
		Duration			= 5.0f;
		Player_Effect		= "heal_5s_player";
        Unlock_Criteria_Threshold = 10;
	}

	public override void Apply(NetUser user)
	{
		user.Skill_Stat_Multipliers[Profile_Stat.Health_Regen] = 1.0f / 5.0f;
	}
}