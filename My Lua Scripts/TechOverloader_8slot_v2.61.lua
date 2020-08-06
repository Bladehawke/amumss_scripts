NMS_MOD_DEFINITION_CONTAINER = 
{
  ["MOD_FILENAME"] 			= "___________TechOverload_8Slots_v2.61.pak",
  ["MOD_DESCRIPTION"]		= "A simple mod allowing the use of 8 same class tech mods to be used in Exosuit, Starship and Multitool.",         --optional, for reference
  ["MOD_AUTHOR"]				= "N3rdface",
  ["NMS_VERSION"]				= "2.61",
  ["MODIFICATIONS"] 		=
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.59B126E2.pak",
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCGAMEPLAYGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] = 
					{
						{
							["PRECEDING_KEY_WORDS"] = "",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"MaxNumSameGroupTech", "8"},
							}	
						},
					}
				},
			}
		},
	}
}
