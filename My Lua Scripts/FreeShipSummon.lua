-- Taking a page out of Gumsk's book here.  Eventually I want to make this more robust and programatic, but it looks
-- like I have to go entry by entry to avoid going back to undo changes. That normally wouldn't be too bad (and would)
-- result in a shorter script, but I'm trying to modularize these particular scripts so we can mix and match the effects

local AuthorName = "Bladehawke"
local ModName = "FreeShipSummon"
local GameVersion = "2.62"
local ModVersion = "a"
local ModDesc =
    "Allows you to summon your ship for free from landing pads/zones.  Makes no sense that I can for free everywhere else."
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
                    ["MBIN_FILE_SOURCE"] = {
                        "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/COMMONPARTS/LANDINGZONE/SUMMONSHIPBEACON/ENTITIES/SUMMONSHIP.ENTITY.MBIN",
                        "MODELS/PLANETS/BIOMES/COMMON/BUILDINGS/PARTS/ENTITIES/SUMMONSHIP.ENTITY.MBIN"
                    },
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["PRECEDING_KEY_WORDS"] = "ActivationCost",
                            ["VALUE_CHANGE_TABLE"] = {{"SubstanceId", ""}, {"Cost", "0"}}
                        }
                    }
                }
            }
        }
    }
}
