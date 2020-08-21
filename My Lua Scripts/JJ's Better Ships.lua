-- Taking a page out of Gumsk's book here.  Eventually I want to make this more robust and programatic
local AuthorName = "Bladehawke"
local ModName = "JJs Better Ships"
local GameVersion = "2.62"
local ModVersion = "a"

local AISPACESHIPMANAGER =
    [[
    </Property>
    <Property name="AIRole" value="GcAISpaceshipRoles.xml">
      <Property name="AIShipRole" value="Standard" />
    </Property>
    <Property name="FrigateClass" value="GcFrigateClass.xml">
      <Property name="FrigateClass" value="Combat" />
    </Property>
  </Property>
  <Property value="GcAISpaceshipModelData.xml">
    <Property name="File" value="MODELS/COMMON/SPACECRAFT/S-CLASS/BIOPARTS/BIOSHIP_PROC.SCENE.MBIN" />
    <Property name="Class" value="GcSpaceshipClasses.xml">
      <Property name="ShipClass" value="Dropship" />
    </Property>
    <Property name="AIRole" value="GcAISpaceshipRoles.xml">
      <Property name="AIShipRole" value="Standard" />
    </Property>
    <Property name="FrigateClass" value="GcFrigateClass.xml">
      <Property name="FrigateClass" value="Combat" />
    </Property>
  </Property>
  <Property value="GcAISpaceshipModelData.xml">
    <Property name="File" value="MODELS/COMMON/SPACECRAFT/S-CLASS/S-CLASS_PROC.SCENE.MBIN" />
    <Property name="Class" value="GcSpaceshipClasses.xml">
      <Property name="ShipClass" value="Shuttle" />
]]

NMS_MOD_DEFINITION_CONTAINER = {
    ["MOD_FILENAME"] = ModName .. " " .. GameVersion .. ModVersion .. ".pak",
    ["MOD_DESCRIPTION"] = "",
    ["MOD_AUTHOR"] = AuthorName,
    ["NMS_VERSION"] = GameVersion,
    ["MODIFICATIONS"] = {
        {
            ["MBIN_CHANGE_TABLE"] = {
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA/SIMULATION/SPACE/AISPACESHIPMANAGER.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["SPECIAL_KEY_WORDS"] = {"ShipClass", "Alien"},
                            ["REPLACE_TYPE"] = "",
                            ["ADD"] = AISPACESHIPMANAGER
                        }
                    }
                },
                {
                    ["MBIN_FILE_SOURCE"] = "METADATA/REALITY/TABLES/INVENTORYTABLE.MBIN",
                    ["EXML_CHANGE_TABLE"] = {
                        {
                            ["PRECEDING_KEY_WORDS"] = "ClassProbabilityData",
                            ["REPLACE_TYPE"] = "ALL",
                            ["VALUE_CHANGE_TABLE"] = {
                                {"C", "0"},
                                {"B", "34"},
                                {"A", "33"},
                                {"S", "33"}
                            }
                        }
                    }
                -- },
                -- {
                --     ["MBIN_FILE_SOURCE"] = "METADATA/SIMULATION/SCENE/EXPERIENCESPAWNTABLE.MBIN",
                --     ["EXML_CHANGE_TABLE"] = {
                --         {
                --             ["PRECEDING_KEY_WORDS"] = "AmbientSpawns",
                --             ["REPLACE_TYPE"] = "",
                --             ["VALUE_CHANGE_TABLE"] = {{"WarpIn", "True"}}
                --         },
                --         {
                --             ["PRECEDING_KEY_WORDS"] = {"AmbientSpawns", "StartTime"},
                --             ["REPLACE_TYPE"] = "",
                --             ["VALUE_CHANGE_TABLE"] = {{"y", "2"}}
                --         },
                --         {
                --             ["PRECEDING_KEY_WORDS"] = {"AmbientSpawns", "ChildSpawns"},
                --             ["REPLACE_TYPE"] = "",
                --             ["VALUE_CHANGE_TABLE"] = {{"WarpIn", "True"}}
                --         },
                --         {
                --             ["PRECEDING_KEY_WORDS"] = {"AmbientSpawns", "ChildSpawns", "StartTime"},
                --             ["REPLACE_TYPE"] = "",
                --             ["VALUE_CHANGE_TABLE"] = {{"x", "4"}, {"y", "6"}}
                --         },
                --         {
                --             ["PRECEDING_KEY_WORDS"] = {
                --                 "AmbientSpawns",
                --                 "ChildSpawns",
                --                 "GcAIShipSpawnData.xml",
                --                 "GcAIShipSpawnData.xml"
                --             },
                --             ["REPLACE_TYPE"] = "",
                --             ["VALUE_CHANGE_TABLE"] = {{"WarpIn", "True"}}
                --         },
                --         {
                --             ["PRECEDING_KEY_WORDS"] = {
                --                 "AmbientSpawns",
                --                 "ChildSpawns",
                --                 "GcAIShipSpawnData.xml",
                --                 "GcAIShipSpawnData.xml",
                --                 "ChildSpawns"
                --             },
                --             ["REPLACE_TYPE"] = "",
                --             ["VALUE_CHANGE_TABLE"] = {{"WarpIn", "True"}}
                --         },
                --         {
                --             ["PRECEDING_KEY_WORDS"] = {"AmbientSpawns", ""},
                --             ["LINE_OFFSET"] = "146",
                --             --["SPECIAL_KEY_WORDS"] = {"AIShipRole", "Freighter"},
                --             --["SECTION_UP"] = "1",
                --             ["REPLACE_TYPE"] = "",
                --             ["VALUE_CHANGE_TABLE"] = {
                --                 {"AIShipRole", "CapitalFreighter"},
                --                 {"MinRange", "8000"}
                --             }
                --         },
                --         {
                --             ["PRECEDING_KEY_WORDS"] = {"AmbientSpawns", ""},
                --             ["LINE_OFFSET"] = "157",
                --             --["SPECIAL_KEY_WORDS"] = {"Count", "Vector2f.xml"},
                --             --["PRECEDING_FIRST"] = "TRUE",
                --             --["SECTION_UP"] = "1",
                --             ["REPLACE_TYPE"] = "",
                --             ["VALUE_CHANGE_TABLE"] = {
                --                 {"X", "1"},
                --                 {"y", "3"}
                --             }
                --         }
                --    }
                }
            }
        }
    }
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE
