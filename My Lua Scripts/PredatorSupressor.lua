NMS_MOD_DEFINITION_CONTAINER = {
	["MOD_FILENAME"] = "PredatorSuppressor.pak",
	["MOD_AUTHOR"] = "ExoSolar",
	["NMS_VERSION"] = "2.61+",
	["MOD_DESCRIPTION"] = "This mod changes a single line so that predators will never target you as prey.",
	["MODIFICATIONS"] = {
		{
			["MBIN_CHANGE_TABLE"] = {
				{
					["MBIN_FILE_SOURCE"] = "GCPLAYERGLOBALS.GLOBAL.MBIN",
					["EXML_CHANGE_TABLE"] = {
						{
							--["SPECIAL_KEY_WORDS"] 	= {"","",},
							--["PRECEDING_KEY_WORDS"] 	= "",
							["VALUE_CHANGE_TABLE"] = {
								{"NeverPreyedOn", "True"} --Original "False"
							}
						}
					}
				}
			}
		}
	}
}
