NMS_MOD_DEFINITION_CONTAINER = {
	["MOD_FILENAME"] = "AllShipsMaxSlots+SClass+48Exo.pak",
	["MOD_DESCRIPTION"] = "",
	["MOD_AUTHOR"] = "idea by dvkkha, script by Mjjstral, Exo mods by Bladehawke",
	["NMS_VERSION"] = "2.41",
	["MODIFICATIONS"] = {
		{
			["MBIN_CHANGE_TABLE"] = {
				{
					["MBIN_FILE_SOURCE"] = "METADATA/REALITY/TABLES/INVENTORYTABLE.MBIN",
					["EXML_CHANGE_TABLE"] = {
						-- Let's start by setting the MaxSlots and MaxExtraTech to the real max (not really sure this is needed)
						{
							["PRECEDING_KEY_WORDS"] = {"GenerationDataPerSizeType", "SciSmall"},
							["VALUE_CHANGE_TABLE"] = {
								{"MaxSlots", "38"}, --Original "19"
								{"MaxExtraTech", "12"} --Original "5"
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"GenerationDataPerSizeType", "SciMedium"},
							["VALUE_CHANGE_TABLE"] = {
								{"MaxSlots", "38"}, --Original "29"
								{"MaxExtraTech", "12"} --Original "8"
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"GenerationDataPerSizeType", "FgtSmall"},
							["VALUE_CHANGE_TABLE"] = {
								{"MaxSlots", "38"}, --Original "19"
								{"MaxExtraTech", "12"} --Original "4"
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"GenerationDataPerSizeType", "FgtMedium"},
							["VALUE_CHANGE_TABLE"] = {
								{"MaxSlots", "38"}, --Original "29"
								{"MaxExtraTech", "12"} --Original "5"
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"GenerationDataPerSizeType", "ShuSmall"},
							["VALUE_CHANGE_TABLE"] = {
								{"MaxSlots", "40"}, --Original "23"
								{"MaxExtraTech", "12"} --Original "6"
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"GenerationDataPerSizeType", "ShtMedium"},
							["VALUE_CHANGE_TABLE"] = {
								{"MaxSlots", "40"}, --Original "28"
								{"MaxExtraTech", "12"} --Original "8"
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"GenerationDataPerSizeType", "DrpSmall"},
							["VALUE_CHANGE_TABLE"] = {
								{"MaxSlots", "48"}, --Original "31"
								{"MaxExtraTech", "8"} --Original "4"
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"GenerationDataPerSizeType", "DrpMedium"},
							["VALUE_CHANGE_TABLE"] = {
								{"MaxSlots", "48"}, --Original "39"
								{"MaxExtraTech", "8"} --Original "6"
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"GenerationDataPerSizeType", "RoySmall"},
							["VALUE_CHANGE_TABLE"] = {
								{"MaxSlots", "30"}, --Original "14"
								{"MaxExtraTech", "10"} --Original "3"
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"GenerationDataPerSizeType", "RoyMedium"},
							["VALUE_CHANGE_TABLE"] = {
								{"MaxSlots", "30"}, --Original "20"
								{"MaxExtraTech", "10"} --Original "6"
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"GenerationDataPerSizeType", "RoyLarge"},
							["VALUE_CHANGE_TABLE"] = {
								{"MinSlots", "30"}, --Original "21"
								{"MinExtraTech", "10"} --Original "6"
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"GenerationDataPerSizeType", "WeaponSmall"},
							["VALUE_CHANGE_TABLE"] = {
								{"MinSlots", "10"}, --Original "5"
								{"MinExtraTech", "30"} --Original "0"
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"GenerationDataPerSizeType", "FreighterSmall"},
							["VALUE_CHANGE_TABLE"] = {
								{"MaxSlots", "48"}, --Original "19"
								{"MaxExtraTech", "12"} --Original "6"
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"GenerationDataPerSizeType", "FreighterMedium"},
							["VALUE_CHANGE_TABLE"] = {
								{"MaxSlots", "48"}, --Original "34"
								{"MaxExtraTech", "12"} --Original "9"
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"GenerationDataPerSizeType", "FreighterLarge"},
							["VALUE_CHANGE_TABLE"] = {
								{"MinExtraTech", "12"} --Original "7"
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"GenerationDataPerSizeType", "VehicleSmall"},
							["VALUE_CHANGE_TABLE"] = {
								{"MaxSlots", "48"} --Original "16"
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"GenerationDataPerSizeType", "VehicleMedium"},
							["VALUE_CHANGE_TABLE"] = {
								{"MaxSlots", "48"} --Original "28"
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"GenerationDataPerSizeType", "VehicleLarge"},
							["VALUE_CHANGE_TABLE"] = {
								{"MaxSlots", "48"} --Original "42"
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "",
							["MATH_OPERATION"] = "*F:MaxSlots",
							["REPLACE_TYPE"] = "ALL", --44 actions
							["VALUE_MATCH"] = "",
							["VALUE_MATCH_TYPE"] = "",
							["VALUE_CHANGE_TABLE"] = {
								{"MinSlots", "1"}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "",
							["MATH_OPERATION"] = "*F:MaxExtraTech",
							["REPLACE_TYPE"] = "ALL", --31 actions
							["VALUE_MATCH"] = "",
							["VALUE_MATCH_TYPE"] = "",
							["VALUE_CHANGE_TABLE"] = {
								{"MinExtraTech", "1"}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = "ClassMultiplier",
							["MATH_OPERATION"] = "",
							["REPLACE_TYPE"] = "ALL", --13*4=52 actions
							["VALUE_MATCH"] = "",
							["VALUE_MATCH_TYPE"] = "",
							["VALUE_CHANGE_TABLE"] = {
								{"C", "0"},
								{"B", "0"},
								{"A", "0"},
								{"S", "100"}
							}
						}, --127 global replacements
						-- {
						-- 	["PRECEDING_KEY_WORDS"] = "ClassProbabilityData",
						-- 	["MATH_OPERATION"] = "",
						-- 	["REPLACE_TYPE"] = "ALL", --13*4=52 actions
						-- 	["VALUE_MATCH"] = "",
						-- 	["VALUE_MATCH_TYPE"] = "",
						-- 	["VALUE_CHANGE_TABLE"] = {
						-- 		{"C", "0"},
						-- 		{"B", "0"},
						-- 		{"A", "0"},
						-- 		{"S", "100"}
						-- 	}
						-- },
						-- {
						-- 	["PRECEDING_KEY_WORDS"] = "ShipBaseStatsData",
						-- 	["MATH_OPERATION"] = "*F:Max",
						-- 	["REPLACE_TYPE"] = "ALL", --72 actions
						-- 	["VALUE_MATCH"] = "",
						-- 	["VALUE_MATCH_TYPE"] = "",
						-- 	["VALUE_CHANGE_TABLE"] = {
						-- 		{"Min", "1"}
						-- 	}
						-- },
						-- {
						-- 	["PRECEDING_KEY_WORDS"] = "WeaponBaseStatsData",
						-- 	["MATH_OPERATION"] = "*F:Max",
						-- 	["REPLACE_TYPE"] = "ALL", --48 actions
						-- 	["VALUE_MATCH"] = "",
						-- 	["VALUE_MATCH_TYPE"] = "",
						-- 	["VALUE_CHANGE_TABLE"] = {
						-- 		{"Min", "1"}
						-- 	}
						-- }
					} -- total 291 actions
				}
			}
		}
	}
}

--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE
