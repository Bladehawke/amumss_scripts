NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "Fi_Less_Damaged_Ship_Slots_Mod.pak",
["MOD_AUTHOR"]				= "Ficell",
["NMS_VERSION"]				= "3.0",
["MODIFICATIONS"] 			= 
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.59B126E2.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "GCSPACESHIPGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{						
						{
						["PRECEDING_KEY_WORDS"] = "",
						["VALUE_CHANGE_TABLE"] 	= 
							{
								{"CrashedShipMinNonBrokenSlots",				"8"},	
								{"CrashedShipBrokenSlotChance",					"0.33"},		
								{"CrashedShipBrokenTechChance",					"0.6"},
								{"CrashedShipRepairSlotCostIncreaseFactor",		"1.3"},		
								{"CrashedShipGeneralCostDiscount",				"0.1"},	
								{"CrashedShipTechSlotsCostDiscount",			"0.1"}								
							}
						},
					}
				}
			}
		}
	}	
}