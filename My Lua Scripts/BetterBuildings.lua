NMS_MOD_DEFINITION_CONTAINER = {
	["MOD_FILENAME"] = "Better Buildings.pak",
	["MOD_AUTHOR"] = "Bladehawke",
	["NMS_VERSION"] = "2.61",
	["MOD_DESCRIPTION"] = [[
	This mod changes distribution of buildings on generated planets.
	- Reduces buildings density.
	- Allows crashed freighter, abandoned buildings and crashed spaceships, among others, to spawn on dead planets.
]],
	["MODIFICATIONS"] = {
		{
			["MBIN_CHANGE_TABLE"] = {
				{
					["MBIN_FILE_SOURCE"] = "METADATA/SIMULATION/ENVIRONMENT/PLANETBUILDINGTABLE.MBIN",
					["EXML_CHANGE_TABLE"] = {
						{
							["PRECEDING_KEY_WORDS"] = {"BuildingPlacement", "Shelter"},
							["VALUE_CHANGE_TABLE"] = {
								{"Low", "6"},
								{"Mid", "6"},
								{"Full", "6"}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"BuildingPlacement", "Abandoned"},
							["VALUE_CHANGE_TABLE"] = {
								{"Dead", "1"},
								{"Low", "2"},
								{"Mid", "2"},
								{"Full", "2"}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"BuildingPlacement", "Terminal"},
							["VALUE_CHANGE_TABLE"] = {
								{"Low", "3"},
								{"Mid", "3"},
								{"Full", "3"}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"BuildingPlacement", "Shop"},
							["VALUE_CHANGE_TABLE"] = {
								{"Low", "2"},
								{"Mid", "2"},
								{"Full", "2"}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"BuildingPlacement", "Beacon"},
							["VALUE_CHANGE_TABLE"] = {
								{"Low", "4"},
								{"Mid", "4"},
								{"Full", "4"}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"BuildingPlacement", "RadioTower"},
							["VALUE_CHANGE_TABLE"] = {
								{"Low", "2"},
								{"Mid", "2"},
								{"Full", "2"}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"BuildingPlacement", "Observatory"},
							["VALUE_CHANGE_TABLE"] = {
								{"Low", "2"},
								{"Mid", "2"},
								{"Full", "2"}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"BuildingPlacement", "Depot"},
							["VALUE_CHANGE_TABLE"] = {
								{"Dead", "1"},
								{"Low", "3"},
								{"Mid", "3"},
								{"Full", "3"}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"BuildingPlacement", "Factory"},
							["VALUE_CHANGE_TABLE"] = {
								{"Low", "2"},
								{"Mid", "2"},
								{"Full", "2"}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"BuildingPlacement", "Plaque"},
							["VALUE_CHANGE_TABLE"] = {
								{"Dead", "2"},
								{"Low", "3"},
								{"Mid", "3"},
								{"Full", "3"}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"BuildingPlacement", "Monolith"},
							["VALUE_CHANGE_TABLE"] = {
								{"Dead", "1"},
								{"Low", "2"},
								{"Mid", "2"},
								{"Full", "2"}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"BuildingPlacement", "Ruin"},
							["VALUE_CHANGE_TABLE"] = {
								{"Dead", "1"}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"BuildingPlacement", "Debris"},
							["VALUE_CHANGE_TABLE"] = {
								{"Dead", "2"},
								{"Low", "2"},
								{"Mid", "2"},
								{"Full", "2"}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"BuildingPlacement", "DamagedMachine"},
							["VALUE_CHANGE_TABLE"] = {
								{"Dead", "2"},
								{"Low", "2"},
								{"Mid", "2"},
								{"Full", "2"}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"BuildingPlacement", "DistressSignal"},
							["VALUE_CHANGE_TABLE"] = {
								{"Dead", "1"}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"BuildingPlacement", "MissionTower"},
							["VALUE_CHANGE_TABLE"] = {
								{"Low", "2"},
								{"Mid", "2"},
								{"Full", "2"}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"BuildingPlacement", "CrashedFreighter"},
							["VALUE_CHANGE_TABLE"] = {
								{"Dead", "1"}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"BuildingPlacement", "GraveInCave"},
							["VALUE_CHANGE_TABLE"] = {
								{"Dead", "1"}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"BuildingPlacement", "TreasureRuins"},
							["VALUE_CHANGE_TABLE"] = {
								{"Dead", "1"}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"BuildingPlacement", "WaterAbandoned"},
							["VALUE_CHANGE_TABLE"] = {
								{"Low", "2"},
								{"Mid", "2"},
								{"Full", "2"}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"BuildingPlacement", "NPCDistressSignal"},
							["VALUE_CHANGE_TABLE"] = {
								{"Dead", "1"}
							}
						},
						{
							["PRECEDING_KEY_WORDS"] = {"BuildingPlacement", "NPCDebris"},
							["VALUE_CHANGE_TABLE"] = {
								{"Dead", "1"}
							}
						}
					}
				}
			}
		}
	}
}
