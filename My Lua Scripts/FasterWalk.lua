WalkSpeed = "10"
RunSpeed = "18" -- higher values have not been tested, but the run
-- is very jerky at this speed because you're going so fast

NMS_MOD_DEFINITION_CONTAINER = {
	["MOD_FILENAME"] = "FasterWalk.pak",
	["MOD_AUTHOR"] = "Bladehawke",
	["NMS_VERSION"] = "2.61",
	["MOD_DESCRIPTION"] = "This mod makes you walk/run faster",
	["MODIFICATIONS"] = {
		{
			["MBIN_CHANGE_TABLE"] = {
				{
					["MBIN_FILE_SOURCE"] = "GCPLAYERGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] = {
						{
							["PRECEDING_KEY_WORDS"] = "",
							["VALUE_CHANGE_TABLE"] = {
								{"GroundWalkSpeed", WalkSpeed},
								{"GroundRunSpeed", RunSpeed}
							}
						}
					}
				}
			}
		}
	}
}
