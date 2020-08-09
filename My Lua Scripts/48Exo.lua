NMS_MOD_DEFINITION_CONTAINER = {
	["MOD_FILENAME"] = "48Exo.pak",
	["MOD_DESCRIPTION"] = "Makes exocraft have 48 slots",
	["MOD_AUTHOR"] = "Bladehawke",
	["NMS_VERSION"] = "2.41",
	["MODIFICATIONS"] = {
		{
			["MBIN_CHANGE_TABLE"] = {
				{
					["MBIN_FILE_SOURCE"] = "METADATA/REALITY/TABLES/INVENTORYTABLE.MBIN",
					["EXML_CHANGE_TABLE"] = {
						{
							["PRECEDING_KEY_WORDS"] = {"GenerationDataPerSizeType", "VehicleSmall"},
							["VALUE_CHANGE_TABLE"] = {
								{"MinSlots", "48"},
								{"MaxSlots", "48"} --Original "16"
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"GenerationDataPerSizeType", "VehicleMedium"},
							["VALUE_CHANGE_TABLE"] = {
								{"MinSlots", "48"},
								{"MaxSlots", "48"} --Original "28"
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"GenerationDataPerSizeType", "VehicleLarge"},
							["VALUE_CHANGE_TABLE"] = {
								{"MinSlots", "48"},
								{"MaxSlots", "48"} --Original "42"
							}
						}
					} -- total 6 actions
				}
			}
		}
	}
}

--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE
