-- Taking a page out of Gumsk's book here.  Eventually I want to make this more programatic, but I fear that will just
-- make it longer :p
local AuthorName = "Bladehawke"
local ModName = "bWeap24"
local GameVersion = "3.91"
local ModVersion = "a"
local ModDesc = "Makes Multitools all spawn with 24 slots expandable to 48" 
local ModBatch = "bInventoryTweaks"
local BatchVersion = "a"

NMS_MOD_DEFINITION_CONTAINER = {
	["MOD_FILENAME"] = ModName .. " " .. GameVersion .. ModVersion .. ".pak",
--	["MOD_BATCHNAME"] = ModBatch .. " " .. GameVersion .. BatchVersion .. ".pak",
    ["MOD_DESCRIPTION"] = ModDesc,
    ["MOD_AUTHOR"] = AuthorName,
    ["NMS_VERSION"] = GameVersion,
    ["MODIFICATIONS"] = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA/REALITY/TABLES/INVENTORYTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["PRECEDING_KEY_WORDS"] = "WeaponSmall",
                            ["REPLACE_TYPE"] = "",
                            ["VALUE_CHANGE_TABLE"] = {
                                {"MinSlots", "24"},
                                {"MaxSlots", "24"}
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = "WeaponMedium",
                            ["REPLACE_TYPE"] = "",
                            ["VALUE_CHANGE_TABLE"] = {
                                {"MinSlots", "24"},
                                {"MaxSlots", "24"}
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = "WeaponLarge",
                            ["REPLACE_TYPE"] = "",
                            ["VALUE_CHANGE_TABLE"] = {
                                {"MinSlots", "24"},
                                {"MaxSlots", "24"}
                            }
                        },
                        {
                            ["PRECEDING_KEY_WORDS"] = {"WeaponInventoryMaxUpgradeSize", "MaxInventoryCapacity"},
                            ["REPLACE_TYPE"] = "",
                            ["VALUE_CHANGE_TABLE"] = {
                                {"C", "48"},
                                {"B", "48"},
                                {"A", "48"},
                                {"S", "48"}
                            }
                        }
                    }
                }
            }
        }
    }
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE
