NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "MaxPlayerTech.pak", 
["MOD_AUTHOR"]				= "Bladehawke",
["NMS_VERSION"]				= "2.61",
["MOD_DESCRIPTION"]			= "This mod gives you 48 Exosuit Technology slots",
["MODIFICATIONS"] 			= {{
			["MBIN_CHANGE_TABLE"] 	= 	{{
			["MBIN_FILE_SOURCE"] 	= 
			{
				"METADATA\GAMESTATE\DEFAULTINVENTORYBALANCE.MBIN",
				"METADATA\GAMESTATE\DEFAULTINVENTORYBALANCESURVIVAL.MBIN",
			},
			["EXML_CHANGE_TABLE"] 	= {
				{["PRECEDING_KEY_WORDS"] = "",
				["VALUE_CHANGE_TABLE"] 	= {
					{ "PlayerPersonalInventoryTechWidth", "8" },
					{ "PlayerPersonalInventoryTechHeight", "6" },
				}},
			}
		},}
}}}
		