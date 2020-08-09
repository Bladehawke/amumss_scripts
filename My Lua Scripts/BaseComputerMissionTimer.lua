TIME_DIVISOR = 18
NMS_MOD_DEFINITION_CONTAINER = {
	["MOD_FILENAME"] = "BaseComputerMissionTimer.pak",
	["MOD_DESCRIPTION"] = [[	The original idea was to cut the missions down to 5 minute delays.
	However, this becomes quite overpowered when applied to the later
	missions that were supposed to have 24 hour delays.  So, we're 
	dividing the time of all missions that take 90 minutes or longer
	by the TIME_DIVISOR (18 by default) to make the intro missions take
	5 minutes but the longer ones still take proportionately longer.
]],
	["MOD_AUTHOR"] = "Bladehawke",
	["NMS_VERSION"] = "2.61", -- oldest version tested with
	["MODIFICATIONS"] = {
		{
			["MBIN_CHANGE_TABLE"] = {
				{
					["MBIN_FILE_SOURCE"] = "METADATA/SIMULATION/MISSIONS/BASECOMPUTERMISSIONTABLE.MBIN",
					["EXML_CHANGE_TABLE"] = {
						{
							["PRECEDING_KEY_WORDS"] = "",
							["REPLACE_TYPE"] = "ALL",
							["VALUE_MATCH_TYPE"] = "NUMBER",
							["VALUE_MATCH_OPTIONS"] = ">=",
							["VALUE_MATCH"] = "5400",
							["MATH_OPERATION"] = "/",
							["VALUE_CHANGE_TABLE"] = {
								--{ "NotifyDisplayTime", "0" },
								--{ "NotifyPauseTime", "0" },
								{"Time", TIME_DIVISOR}
							}
						}
					}
				}
			}
		}
	}
}
