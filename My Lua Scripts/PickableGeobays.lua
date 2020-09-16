-- Taking a page out of Gumsk's book here.  Eventually I want to make this more robust and programatic, but it looks
-- like I have to go entry by entry to avoid going back to undo changes. That normally wouldn't be too bad (and would)
-- result in a shorter script, but I'm trying to modularize these particular scripts so we can mix and match the effects

local AuthorName = "Bladehawke"
local ModName = "PickableGeobays"
local GameVersion = "2.62"
local ModVersion = "a"
local ModDesc = "Allows to pickup geobays"
local BatchVersion = "a"

NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"] = ModName .. " " .. GameVersion .. ModVersion .. ".pak",
    ["MOD_DESCRIPTION"] = ModDesc,
    ["MOD_AUTHOR"] = AuthorName,
    ["NMS_VERSION"] = GameVersion,
    ["MODIFICATIONS"] = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA/REALITY/TABLES/BASEBUILDINGTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "GARAGE_B"},
                            ["VALUE_CHANGE_TABLE"] = {{"CanPickUp", "true"}}
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "GARAGE_S"},
                            ["VALUE_CHANGE_TABLE"] = {{"CanPickUp", "true"}}
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "GARAGE_M"},
                            ["VALUE_CHANGE_TABLE"] = {{"CanPickUp", "true"}}
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "GARAGE_L"},
                            ["VALUE_CHANGE_TABLE"] = {{"CanPickUp", "true"}}
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "GARAGE_MECH"},
                            ["VALUE_CHANGE_TABLE"] = {{"CanPickUp", "true"}}
                        },
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ID", "GARAGE_SUB"},
                            ["VALUE_CHANGE_TABLE"] = {{"CanPickUp", "true"}}
                        }
                    }
                }
            }
        }
    }
}
