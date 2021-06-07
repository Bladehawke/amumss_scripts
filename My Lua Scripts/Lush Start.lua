TEXT_TO_ADD =
	[[
  <Property name="ValidStartPlanetBiome">
    <Property value="GcBiomeType.xml">
      <Property name="Biome" value="Lush" />
    </Property>
  </Property>
]]

NMS_MOD_DEFINITION_CONTAINER = {
	["MOD_FILENAME"] = "Lush Start.pak",
	["MOD_DESCRIPTION"] = "Causes the starting planet to have a Lush Biome",
	["MOD_AUTHOR"] = "Bladehawke",
	["NMS_VERSION"] = "3.51", -- oldest version tested with
	["MODIFICATIONS"] = {
		{
			["MBIN_CHANGE_TABLE"] = {
				{
					["MBIN_FILE_SOURCE"] = "METADATA/SIMULATION/SOLARSYSTEM/BIOMES/BIOMEFILENAMES.MBIN",
					["EXML_CHANGE_TABLE"] = {
						{
							["PRECEDING_KEY_WORDS"] = {"ValidStartPlanetBiome"},
							["REPLACE_TYPE"] = "ADDAFTERSECTION",
							["ADD"] = TEXT_TO_ADD
						},
						{
							["PRECEDING_KEY_WORDS"] = {"ValidStartPlanetBiome"},
							["REMOVE"] = "SECTION"
						}
					}
				}
			}
		}
	}
}
