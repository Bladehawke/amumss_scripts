-- Taking a page out of Gumsk's book here.  Eventually I want to make this more robust and programatic, but it looks
-- like I have to go entry by entry to avoid going back to undo changes. That normally wouldn't be too bad (and would)
-- result in a shorter script, but I'm trying to modularize these particular scripts so we can mix and match the effects

local AuthorName = "Bladehawke"
local ModName = "FreePortals"
local GameVersion = "2.62"
local ModVersion = "a"
local ModDesc = "Allows you to use thje portal without charging it."
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
                    ["MBIN_FILE_SOURCE"] = "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PORTAL/PORTAL/ENTITIES/BUTTON.ENTITY.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["PRECEDING_KEY_WORDS"] = {"GcMaintenanceComponentData.xml", "PreInstalledTech"},
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] = {{"MinRandAmount", "100"}, {"MaxRandAmount", "100"}}
                        }
                    }
                }
            }
        }
    }
}
