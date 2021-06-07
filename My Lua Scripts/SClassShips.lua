NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"] = "_SClassShips.pak",
    ["MOD_AUTHOR"] = "Bladehawke",
    ["NMS_VERSION"] = "3.51+",
    ["UPDATE_LINK"] = "https://pastebin.com/raw/QHQBs7Pf",
    ["MODIFICATIONS"] = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA/REALITY/TABLES/INVENTORYTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"ClassProbabilityData"},
                            ["MATH_OPERATION"] = "",
                            ["REPLACE_TYPE"] = "ALL", --3*4=12 actions
                            ["VALUE_MATCH"] = "",
                            ["VALUE_MATCH_TYPE"] = "",
                            ["VALUE_CHANGE_TABLE"] = {
                                {"C", "0"},
                                {"B", "0"},
                                {"A", "0"},
                                {"S", "100"}
                            }
                        }
                    }
                }
            }
        }
    }
}
