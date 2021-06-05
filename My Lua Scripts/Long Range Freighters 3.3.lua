NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "Long Range Freighters 3.3.pak", 
["MOD_AUTHOR"]				= "Lo2k",
["NMS_VERSION"]				= "3.42",
["MOD_DESCRIPTION"]			= "This mod multiply by ten all freighter warp drive ranges",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\TABLES\NMS_REALITY_GCTECHNOLOGYTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["SPECIAL_KEY_WORDS"] = {"ID","F_HYPERDRIVE",},
							["PRECEDING_KEY_WORDS"] = {"Freighter_Hyperdrive_JumpDistance",},
							["SECTION_UP"] = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Bonus",	"1000"}		-- Original "100"   
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","F_HDRIVEBOOST1",},
							["PRECEDING_KEY_WORDS"] = {"Freighter_Hyperdrive_JumpDistance",},
							["SECTION_UP"] = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Bonus",	"2000"}		-- Original "200"   
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","F_HDRIVEBOOST2",},
							["PRECEDING_KEY_WORDS"] = {"Freighter_Hyperdrive_JumpDistance",},
							["SECTION_UP"] = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Bonus",	"4000"}		-- Original "300"   
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","F_HDRIVEBOOST3",},
							["PRECEDING_KEY_WORDS"] = {"Freighter_Hyperdrive_JumpDistance",},
							["SECTION_UP"] = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Bonus",	"8000"}		-- Original "800"  
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","F_HACCESS1",},
							["PRECEDING_KEY_WORDS"] = {"Freighter_Hyperdrive_JumpDistance",},
							["SECTION_UP"] = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Bonus",	"500"}		-- Original "50"  
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","F_HACCESS2",},
							["PRECEDING_KEY_WORDS"] = {"Freighter_Hyperdrive_JumpDistance",},
							["SECTION_UP"] = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Bonus",	"500"}		-- Original "50"  
							}
						},
						{
							["SPECIAL_KEY_WORDS"] = {"ID","F_HACCESS3",},
							["PRECEDING_KEY_WORDS"] = {"Freighter_Hyperdrive_JumpDistance",},
							["SECTION_UP"] = 1,
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"Bonus",	"500"}		-- Original "50"  
							}
						}
					}
				}	
			}
		}
	}	
}
