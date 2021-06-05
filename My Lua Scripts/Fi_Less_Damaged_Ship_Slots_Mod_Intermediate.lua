NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "Fi_Less_Damaged_Ship_Slots_Mod_Intermediate.pak",
["MOD_AUTHOR"]				= "Ficell",
["NMS_VERSION"]				= "3.37",
["MODIFICATIONS"] 			= 
	{
		{
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCAISPACESHIPGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{						
						{
						["PRECEDING_KEY_WORDS"] = "",
						["VALUE_CHANGE_TABLE"] 	= 
							{
								{"CrashedShipMinNonBrokenSlots",				"5"},	
								{"CrashedShipBrokenSlotChance",					"0.5"},		
								{"CrashedShipBrokenTechChance",					"0.6"},
								{"CrashedShipRepairSlotCostIncreaseFactor",		"1.3"},		
								{"CrashedShipGeneralCostDiscount",				"0.4"},	
								{"CrashedShipTechSlotsCostDiscount",			"0.1"}								
							}
						},
					}
				}
			}
		}
	}	
}