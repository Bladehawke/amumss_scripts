-- Learning more words was created by ChoseSauvage ( https://www.nexusmods.com/nomanssky/mods/733 )
-- and converted to lua script by Mjjstral (available in AMUMSS script collection)

------------------------------------------------------------------------------
------------------- YOU SHOULD ONLY EDIT THE VALUES BELOW --------------------
------------------------------------------------------------------------------

UNITS_MULTIPLIER = 5					-- Default value is 1 | Multiplys the amount of units you get 
LOW_UNIT_MULTIPLIER = 10				-- Default value is 1 | Terminals and other unit sources that have really low unit rewards
										-- (from 90-2000 Units) are multiplied by this number on top of the regular unit multiplier (so by default = 5 * 10 = 50x multiplier)

NANITES_MULTIPLIER = 5					-- Default value is 1 | Multiplys the amount of nanites you get

QUICKSILVER_MULTIPLIER = 5				-- Default value is 1 | Multiplys the amount of quicksilver you get

RESOURCE_MULTIPLIER = 3					-- Default value is 1 | Multiplys the amount of resources gathered, as
										-- well as containers, depots, guild rewards and ships that have resources

NADA_PER_MILESTONE_REWARD = 150			-- Default value is 50 | Sets the reward value (in nanites) for each milestone tier at Nada (in the Space Anomaly)

WORDS_TO_LEARN = 3						-- Default value is 1 | Sets the amount of words you learn from non npc sources

MISSION_UNITS_MULTIPLIER = 5			-- Default value is 1 | Multiplys the amount of units you get from Mission Board (Space Station) Missions
MISSION_NANITES_MULTIPLIER = 5			-- Default value is 1 | Multiplys the amount of nanites you get from Mission Board (Space Station) Missions
MISSION_PRODUCT_MULTIPLIER = 1			-- Default value is 1 | Multiplys the amount of products you get from Mission Board (Space Station) Missions

NEXUS_UNITS_MULTIPLIER = 5				-- Default value is 1 | Multiplys the amount of units you get from Nexus Missions
NEXUS_NANITES_MULTIPLIER = 5			-- Default value is 1 | Multiplys the amount of nanites you get from Nexus Missions
NEXUS_PRODUCT_MULTIPLIER = 1			-- Default value is 1 | Multiplys the amount of products you get from Nexus Missions

-- When learning words, you can choose to have a PERCENTAGE(%) chance at learning an Atlas word along with them
-- If you wish to learn Atlas words change the value to a number ranging from 1-100 in the following line (line 36): <Property name="PercentageChance" value="0" />
-- Edit the value in the double bracket -> [[ ]] <- section below!! ----> <Property name="PercentageChance" value="0" /> <---- edit this "0", the " " must stay!!
ATLAS_WORD = [[
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="0" />
            <Property name="Reward" value="GcRewardTeachWord.xml">
              <Property name="Race" value="GcAlienRace.xml">
                <Property name="AlienRace" value="Atlas" />
              </Property>
              <Property name="UseCategory" value="False" />
              <Property name="Category" value="GcWordCategoryTableEnum.xml">
                <Property name="WordCategory" value="MISC" />
              </Property>
              <Property name="AmountMin" value="1" />
              <Property name="AmountMax" value="1" />
            </Property>
            <Property name="LabelID" value="" />
          </Property>
]]

------------------------------------------------------------------------------
-------------------- DO NOT EDIT ANYTHING PAST THIS POINT --------------------
------------------------------------------------------------------------------

TEXT_TO_ADD =
[[
          <Property value="GcRewardTableItem.xml">
            <Property name="PercentageChance" value="100" />
            <Property name="Reward" value="GcRewardTeachWord.xml">
              <Property name="Race" value="GcAlienRace.xml">
                <Property name="AlienRace" value="None" />
              </Property>
              <Property name="UseCategory" value="False" />
              <Property name="Category" value="GcWordCategoryTableEnum.xml">
                <Property name="WordCategory" value="MISC" />
              </Property>
              <Property name="AmountMin" value="1" />
              <Property name="AmountMax" value="1" />
            </Property>
            <Property name="LabelID" value="" />
          </Property>
]]

TEXT_TO_ADD = string.rep(TEXT_TO_ADD, WORDS_TO_LEARN)

NMS_MOD_DEFINITION_CONTAINER =
{
["MOD_FILENAME"] 			= "BetterRewards.pak",
["MOD_AUTHOR"]				= "MrTrack",
["NMS_VERSION"]				= "2.42",
["MODIFICATIONS"] 			=
	{
		{
			["MBIN_CHANGE_TABLE"] 	=
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\TABLES\REWARDTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	=
					{
-------------------------------------------------------------------------------------------
------------------------------------- CURRENCY: UNITS -------------------------------------
-------------------------------------------------------------------------------------------
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "CAPFRT_STAND"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"]			= "1000",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	LOW_UNIT_MULTIPLIER * UNITS_MULTIPLIER}
							}
						},
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "CAPFRT_STAND"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"]			= "100000",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMax",	UNITS_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "CAPFRT_LOOT"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"]			= "1000",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	LOW_UNIT_MULTIPLIER * UNITS_MULTIPLIER}
							}
						},
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "CAPFRT_LOOT"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"]			= "100000",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMax",	UNITS_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "RANDOM"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"]			= "90",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	LOW_UNIT_MULTIPLIER * UNITS_MULTIPLIER}
							}
						},
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "RANDOM"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"]			= "250",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMax",	LOW_UNIT_MULTIPLIER * UNITS_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "MONEY"},
							["PRECEDING_KEY_WORDS"] = "Reward",
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	LOW_UNIT_MULTIPLIER * UNITS_MULTIPLIER},
								{"AmountMax",	LOW_UNIT_MULTIPLIER * UNITS_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "MONEY_S"},
							["PRECEDING_KEY_WORDS"] = "Reward",
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	LOW_UNIT_MULTIPLIER * UNITS_MULTIPLIER},
								{"AmountMax",	LOW_UNIT_MULTIPLIER * UNITS_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "MONEY_M"},
							["PRECEDING_KEY_WORDS"] = "Reward",
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	UNITS_MULTIPLIER},
								{"AmountMax",	UNITS_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "MONEY_L"},
							["PRECEDING_KEY_WORDS"] = "Reward",
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	UNITS_MULTIPLIER},
								{"AmountMax",	UNITS_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "SEC_MONEY"},
							["PRECEDING_KEY_WORDS"] = "Reward",
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	UNITS_MULTIPLIER},
								{"AmountMax",	UNITS_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_GUILD_TAX1"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"]			= "10000",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	UNITS_MULTIPLIER}
							}
						},
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_GUILD_TAX1"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"]			= "50000",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMax",	UNITS_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_GUILD_TAX2"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"]			= "30000",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	UNITS_MULTIPLIER}
							}
						},
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_GUILD_TAX2"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"]			= "100000",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMax",	UNITS_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_GUILD_TAX3"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"]			= "100000",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	UNITS_MULTIPLIER}
							}
						},
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_GUILD_TAX3"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"]			= "300000",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMax",	UNITS_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_GUILD_TAX4"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"]			= "200000",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	UNITS_MULTIPLIER}
							}
						},
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_GUILD_TAX4"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"]			= "1000000",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMax",	UNITS_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "NPC_VEHICLE16S"},
							["PRECEDING_KEY_WORDS"] = "Reward",
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	UNITS_MULTIPLIER},
								{"AmountMax",	UNITS_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "CRASHCONT_M"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"]			= "25000",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	UNITS_MULTIPLIER}
							}
						},
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "CRASHCONT_M"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"]			= "75000",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMax",	UNITS_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "CRASHCONT_M"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"]			= "150000",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	UNITS_MULTIPLIER}
							}
						},
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "CRASHCONT_M"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"]			= "250000",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMax",	UNITS_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "CRASHCONT_S"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"]			= "25000",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	UNITS_MULTIPLIER}
							}
						},
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "CRASHCONT_S"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"]			= "75000",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMax",	UNITS_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"RewardId", "ENT_UNITS"},
							["PRECEDING_KEY_WORDS"] = "Reward",
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	UNITS_MULTIPLIER},
								{"AmountMax",	UNITS_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"RewardId", "ENT_XO_UNIT_DIG"},
							["PRECEDING_KEY_WORDS"] = "Reward",
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	UNITS_MULTIPLIER},
								{"AmountMax",	UNITS_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"RewardId", "ENT_XO_UNIT_RET"},
							["PRECEDING_KEY_WORDS"] = "Reward",
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	UNITS_MULTIPLIER},
								{"AmountMax",	UNITS_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "MIXER_MONEY"},
							["PRECEDING_KEY_WORDS"] = "Reward",
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	UNITS_MULTIPLIER},
								{"AmountMax",	UNITS_MULTIPLIER}
							}
						},
-------------------------------------------------------------------------------------------
------------------------------------ CURRENCY: NANITES ------------------------------------
-------------------------------------------------------------------------------------------
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "DRONE_LOOT"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"]			= "5",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	NANITES_MULTIPLIER}
							}
						},
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "DRONE_LOOT"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"]			= "10",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMax",	NANITES_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "QUAD_LOOT"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"]			= "12",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	NANITES_MULTIPLIER}
							}
						},
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "QUAD_LOOT"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"]			= "24",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMax",	NANITES_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "WALKER_LOOT"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"]			= "28",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	NANITES_MULTIPLIER}
							}
						},
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "WALKER_LOOT"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"]			= "90",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMax",	NANITES_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "TRAD_LOOT_EASY"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"]			= "5",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	NANITES_MULTIPLIER}
							}
						},
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "TRAD_LOOT_EASY"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"]			= "10",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMax",	NANITES_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "TRAD_LOOT_MED"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"]			= "20",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	NANITES_MULTIPLIER}
							}
						},
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "TRAD_LOOT_MED"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"]			= "30",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMax",	NANITES_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "TRAD_LOOT_HARD"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"]			= "20",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	NANITES_MULTIPLIER}
							}
						},
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "TRAD_LOOT_HARD"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"]			= "30",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMax",	NANITES_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "FREIGHTERLOOT"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"]			= "20",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	NANITES_MULTIPLIER}
							}
						},
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "FREIGHTERLOOT"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"]			= "30",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMax",	NANITES_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "TECHFRAG_L"},
							["PRECEDING_KEY_WORDS"] = "Reward",
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	NANITES_MULTIPLIER},
								{"AmountMax",	NANITES_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "TECHFRAG_M"},
							["PRECEDING_KEY_WORDS"] = "Reward",
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	NANITES_MULTIPLIER},
								{"AmountMax",	NANITES_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "TECHFRAG_S"},
							["PRECEDING_KEY_WORDS"] = "Reward",
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	NANITES_MULTIPLIER},
								{"AmountMax",	NANITES_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "TECHDEBRIS"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"]			= "25",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	NANITES_MULTIPLIER}
							}
						},
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "TECHDEBRIS"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"]			= "35",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMax",	NANITES_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "DE_POI_EYE"},
							["PRECEDING_KEY_WORDS"] = "Reward",
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	NANITES_MULTIPLIER},
								{"AmountMax",	NANITES_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "DE_POI_CRYSTAL"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"]			= "100",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	NANITES_MULTIPLIER}
							}
						},
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "DE_POI_CRYSTAL"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"]			= "300",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMax",	NANITES_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "DE_GASBRAIN"},
							["PRECEDING_KEY_WORDS"] = "Reward",
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	NANITES_MULTIPLIER},
								{"AmountMax",	NANITES_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_TRADE_REPAIR"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"]			= "50",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	NANITES_MULTIPLIER}
							}
						},
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_TRADE_REPAIR"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"]			= "120",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMax",	NANITES_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_NEXUS_CASH"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"]			= "80",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	NANITES_MULTIPLIER}
							}
						},
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_NEXUS_CASH"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"]			= "80",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMax",	NANITES_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "NAVDATA"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"]			= "5",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	NANITES_MULTIPLIER}
							}
						},
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "NAVDATA"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"]			= "15",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMax",	NANITES_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_GUILD_TAX1"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"]			= "100",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	NANITES_MULTIPLIER}
							}
						},
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_GUILD_TAX1"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"]			= "200",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMax",	NANITES_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_GUILD_TAX2"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"]			= "200",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	NANITES_MULTIPLIER}
							}
						},
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_GUILD_TAX2"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"]			= "300",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMax",	NANITES_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_GUILD_TAX3"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"]			= "300",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	NANITES_MULTIPLIER}
							}
						},
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_GUILD_TAX3"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"]			= "400",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMax",	NANITES_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_GUILD_TAX4"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"]			= "400",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	NANITES_MULTIPLIER}
							}
						},
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_GUILD_TAX4"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"]			= "500",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMax",	NANITES_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_WAYPOINT"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"]			= "10",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	NANITES_MULTIPLIER}
							}
						},
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_WAYPOINT"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"]			= "10",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMax",	NANITES_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "CRASHCONT_S"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"]			= "20",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	NANITES_MULTIPLIER}
							}
						},
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "CRASHCONT_S"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"]			= "20",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMax",	NANITES_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "DEADDRONE"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"]			= "12",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	NANITES_MULTIPLIER}
							}
						},
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "DEADDRONE"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"]			= "25",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMax",	NANITES_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "DEADDRONE"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"]			= "28",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	NANITES_MULTIPLIER}
							}
						},
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "DEADDRONE"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"]			= "60",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMax",	NANITES_MULTIPLIER}
							}
						},
-------------------------------------------------------------------------------------------
------------------------------------ CURRENCY: SPECIAL ------------------------------------
-------------------------------------------------------------------------------------------
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "DE_POI_CRYSTAL"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"]			= 100 * NANITES_MULTIPLIER,
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	QUICKSILVER_MULTIPLIER / NANITES_MULTIPLIER}
							}
						},
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "DE_POI_CRYSTAL"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"]			= "100",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMax",	QUICKSILVER_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_NEXUS_CASH"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"]			= "150",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	QUICKSILVER_MULTIPLIER}
							}
						},
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_NEXUS_CASH"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"]			= "150",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMax",	QUICKSILVER_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_NEXUS_QS"},
							["PRECEDING_KEY_WORDS"] = "Reward",
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	QUICKSILVER_MULTIPLIER},
								{"AmountMax",	QUICKSILVER_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_NEXUS_QS_PQ"},
							["PRECEDING_KEY_WORDS"] = "Reward",
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	QUICKSILVER_MULTIPLIER},
								{"AmountMax",	QUICKSILVER_MULTIPLIER}
							}
						},
-------------------------------------------------------------------------------------------
---------------------------------------- RESOURCES ----------------------------------------
-------------------------------------------------------------------------------------------
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "WILD_BARREN"},
							["PRECEDING_KEY_WORDS"] = "Reward",
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "WILD_LUSH"},
							["PRECEDING_KEY_WORDS"] = "Reward",
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "WILD_RADIO"},
							["PRECEDING_KEY_WORDS"] = "Reward",
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "WILD_SNOW"},
							["PRECEDING_KEY_WORDS"] = "Reward",
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "WILD_SCORCHED"},
							["PRECEDING_KEY_WORDS"] = "Reward",
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "WILD_TOXIC"},
							["PRECEDING_KEY_WORDS"] = "Reward",
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "POOPLOOT"},
							["PRECEDING_KEY_WORDS"] = "Reward",
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "SPECPOOP"},
							["PRECEDING_KEY_WORDS"] = "Reward",
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "PIRATELOOT", "Id", "STELLAR2"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "PIRAT_LOOT_EASY", "Id", "LAND3"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "PIRAT_LOOT_MED", "Id", "LAND3"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "PIRAT_LOOT_HARD", "Id", "STELLAR2"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "POLICELOOT", "Id", "ROBOT1"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "TRAD_LOOT_EASY", "Id", "LAND3"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "TRAD_LOOT_MED", "Id", "LAND3"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "TRAD_LOOT_HARD", "Id", "STELLAR2"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "INTERIORPLANTS"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "PLANT_COMMODITY"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "PLANT_TECH"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "PLANT_FUEL"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "PLANT_BARREN"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "PLANT_LUSH"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "PLANT_CREATURE"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "PLANT_POOP"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "PLANT_RADIO"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "PLANT_SCORCHED"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "PLANT_SNOW"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "PLANT_TOXIC"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "FREIGHTERLOOT", "Id", "LAND3"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "FREIGHTERLOOT", "Id", "STELLAR2"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "FREIGHTERLOOT", "Id", "CAVE2"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "FREIGHTERLOOT", "Id", "ASTEROID2"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "FREIGHTERLOOT", "Id", "ASTEROID3"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "PLANTER_CARBON"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "SPOREVENT"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "FLYTRAP"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "CRT_WEIRD", "Id", "SPACEGUNK1"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "CRT_WEIRD", "Id", "SPACEGUNK4"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "CRT_WEIRD", "Id", "SPACEGUNK5"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "CRT_WEIRD", "Id", "CREATURE1"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "CRT_WEIRD", "Id", "ROBOT1"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "CRT_WEIRD", "Id", "OXYGEN"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "DE_POI_SILO", "Id", "ASTEROID2"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "DE_POI_SILO", "Id", "CAVE2"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "DE_POI_SILO", "Id", "TOXIC1"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "DE_POI_SILO", "Id", "HOT1"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "DE_POI_SILO", "Id", "GAS1"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "DE_POI_SILO", "Id", "GAS2"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "DE_POI_SILO", "Id", "GAS3"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "DE_POI_LINEGEO"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "DE_POI_CRYSTAL", "Id", "FUEL2"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "DE_POI_CRYSTAL", "Id", "LAUNCHSUB"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "DE_POI_CRYSTAL", "Id", "RADIO1"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "DE_POI_CRYSTAL", "Id", "COLD1"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "DE_PRISON_BOOM"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "DE_SPACE_POI_1", "Id", "LAND3"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "DE_SPACE_POI_7", "Id", "ASTEROID1"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "DE_SPACE_POI_7", "Id", "ASTEROID2"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "DE_SPACE_POI_7", "Id", "ASTEROID3"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "DE_GEODE_TUT"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "DE_GEODE_GOLD"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "DE_GEODE_SPACE", "Id", "ROCKETSUB"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "DE_GEODE_CRYST", "Id", "LAUNCHSUB"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "DE_GEODE_LAND", "Id", "LAND1"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "DE_GEODE_CAVE", "Id", "CAVE1"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "DE_GEODE_CAVE", "Id", "CAVE2"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "DE_SCRAP_PART"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "DE_EYEPLANT"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "DE_DEPOT", "Id", "ASTEROID1"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "DE_DEPOT", "Id", "ASTEROID2"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "DE_DEPOT", "Id", "ASTEROID3"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "DE_DEPOT", "Id", "GAS1"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "DE_DEPOT", "Id", "GAS2"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "DE_DEPOT", "Id", "GAS3"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "DE_PLANT_SMALL"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "DE_PLANT_MED"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "DE_PLANT_LARGE"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "DE_WATERPLANT_S"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "DE_WATERPLANT_M"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "DE_WATERPLANT_L"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "DE_ROCK_SMALL", "Id", "LAND1"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "DE_ROCK_MED", "Id", "LAND1"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "DE_ROCK_LARGE", "Id", "LAND2"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "DE_GEM_R_SMALL"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "DE_GEM_R_MED"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "DE_GEM_R_LARGE"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "DE_GEM_B_SMALL", "Id", "LAUNCHSUB"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "DE_GEM_B_MED", "Id", "LAUNCHSUB"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "DE_GEM_B_LARGE"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "DE_GEM_Y_SMALL"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "DE_GEM_Y_MED"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "DE_GEM_Y_LARGE"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "DE_CAVE_MED", "Id", "CAVE1"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "DE_CAVE_MED", "Id", "ASTEROID1"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "DE_CAVE_MED", "Id", "ASTEROID2"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "DE_CAVE_MED", "Id", "ASTEROID3"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "DE_CAVE_LARGE", "Id", "CAVE1"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "DE_CAVE_LARGE", "Id", "ASTEROID1"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "DE_CAVE_LARGE", "Id", "ASTEROID2"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "DE_CAVE_LARGE", "Id", "ASTEROID3"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "DE_WATER_MED"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "DE_WATER_LARGE"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "DE_GAS_PLANT", "Id", "OXYGEN"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "DE_GAS_PLANT", "Id", "CATALYST1"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "DE_RARE_HOT"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "DE_RARE_RADIO"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "DE_RARE_COLD"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "DE_RARE_DUSTY"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "DE_RARE_GOLD"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "DE_TENTACLE"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "DE_SPOREVENT"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "DE_FLYTRAP"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_CARBON"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_RUST"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_LIVINGSLIME"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_ASTEROID_MINS"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_OXYGEN_50"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "TUT_GOODS", "Id", "LAUNCHSUB"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "TUT_GOODS", "Id", "CATALYST1"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "TUT_GOODS", "Id", "OXYGEN"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "TUT_GOODS", "Id", "FUEL2"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "TUT_GOODS", "Id", "CATALYST2"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "TUT_GOODS", "Id", "FUEL1"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "JUNK"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "USEFUL_SUB", "Id", "OXYGEN"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "USEFUL_SUB", "Id", "CATALYST1"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "USEFUL_SUB", "Id", "LAUNCHSUB"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "USEFUL_SUB", "Id", "LAND1"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "USEFUL_SUB", "Id", "FUEL1"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_TGUILD_GIFT1", "Id", "CATALYST2"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_TGUILD_GIFT2", "Id", "EX_GREEN"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_TGUILD_GIFT3", "Id", "SPECIAL_POOP"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_TGUILD_GIFT4", "Id", "ROBOT1"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_EGUILD_GIFT1", "Id", "RADIO1"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_EGUILD_GIFT2", "Id", "LAUNCHSUB"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_EGUILD_GIFT3", "Id", "ASTEROID3"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_EGUILD_GIFT4", "Id", "SPECIAL_POOP"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_WGUILD_GIFT1", "Id", "OXYGEN"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_WGUILD_GIFT2", "Id", "ASTEROID3"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_WGUILD_GIFT3", "Id", "ASTEROID3"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_WGUILD_GIFT4", "Id", "BLUE2"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_WGUILD_GIFT4", "Id", "ASTEROID3"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_LUSH1"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_TOXIC1"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_HOT1"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_RADIO1"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_COLD1"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_DUSTY1"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_LAND1"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_ASTEROID2"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_EXPGIFT_WTHRT", "Id", "PLANT_POOP"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_WARGIFT_WTECH", "Id", "ROBOT1"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_NEXUS_MEGA", "Id", "SPECIAL_POOP"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_NEXUS_MEGA", "Id", "SPACEGUNK2"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "DEADDRONE", "Id", "CATALYST1"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "DEADDRONE", "Id", "LAND2"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "DEADDRONE", "Id", "LAND3"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "CRATE", "Id", "FUEL2"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "CRATE", "Id", "CATALYST1"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "CRATE", "Id", "OXYGEN"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "CRATE", "Id", "CATALYST2"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "DEBRIS", "Id", "FUEL2"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "DEBRIS", "Id", "CATALYST1"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "DEBRIS", "Id", "OXYGEN"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "DEBRIS", "Id", "ASTEROID2"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "SENTINEL", "Id", "ROBOT1"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
-------------------------------------------------------------------------------------------
---------------------------------------- MISSIONS -----------------------------------------
-------------------------------------------------------------------------------------------
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MB_LOW"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"]			= "5000",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	MISSION_UNITS_MULTIPLIER}
							}
						},
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MB_LOW"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"]			= "15000",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMax",	MISSION_UNITS_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MB_LOW"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"]			= "50",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	MISSION_NANITES_MULTIPLIER}
							}
						},
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MB_LOW"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"]			= "100",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMax",	MISSION_NANITES_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MB_LOW", "Id", "TRA_COMMODITY3"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	MISSION_PRODUCT_MULTIPLIER},
								{"AmountMax",	MISSION_PRODUCT_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MB_LOW", "Id", "TRA_COMPONENT3"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	MISSION_PRODUCT_MULTIPLIER},
								{"AmountMax",	MISSION_PRODUCT_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MB_LOW", "Id", "TRA_ENERGY3"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	MISSION_PRODUCT_MULTIPLIER},
								{"AmountMax",	MISSION_PRODUCT_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MB_LOW", "Id", "TRA_EXOTICS3"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	MISSION_PRODUCT_MULTIPLIER},
								{"AmountMax",	MISSION_PRODUCT_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MB_LOW", "Id", "TRA_MINERALS3"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	MISSION_PRODUCT_MULTIPLIER},
								{"AmountMax",	MISSION_PRODUCT_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MB_LOW", "Id", "TRA_TECH3"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	MISSION_PRODUCT_MULTIPLIER},
								{"AmountMax",	MISSION_PRODUCT_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MB_LOW", "Id", "TRA_ALLOY3"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	MISSION_PRODUCT_MULTIPLIER},
								{"AmountMax",	MISSION_PRODUCT_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MB_MED"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"]			= "40000",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	MISSION_UNITS_MULTIPLIER}
							}
						},
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MB_MED"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"]			= "80000",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMax",	MISSION_UNITS_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MB_MED"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"]			= "50",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	MISSION_NANITES_MULTIPLIER}
							}
						},
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MB_MED"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"]			= "175",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMax",	MISSION_NANITES_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MB_MED", "Id", "TRA_COMMODITY5"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	MISSION_PRODUCT_MULTIPLIER},
								{"AmountMax",	MISSION_PRODUCT_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MB_MED", "Id", "TRA_COMPONENT5"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	MISSION_PRODUCT_MULTIPLIER},
								{"AmountMax",	MISSION_PRODUCT_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MB_MED", "Id", "TRA_ENERGY5"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	MISSION_PRODUCT_MULTIPLIER},
								{"AmountMax",	MISSION_PRODUCT_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MB_MED", "Id", "TRA_EXOTICS5"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	MISSION_PRODUCT_MULTIPLIER},
								{"AmountMax",	MISSION_PRODUCT_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MB_MED", "Id", "TRA_MINERALS5"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	MISSION_PRODUCT_MULTIPLIER},
								{"AmountMax",	MISSION_PRODUCT_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MB_MED", "Id", "TRA_TECH5"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	MISSION_PRODUCT_MULTIPLIER},
								{"AmountMax",	MISSION_PRODUCT_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MB_MED", "Id", "TRA_ALLOY5"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	MISSION_PRODUCT_MULTIPLIER},
								{"AmountMax",	MISSION_PRODUCT_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MB_HIGH"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"]			= "200000",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	MISSION_UNITS_MULTIPLIER}
							}
						},
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MB_HIGH"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"]			= "350000",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMax",	MISSION_UNITS_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MB_HIGH"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"]			= "200",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	MISSION_NANITES_MULTIPLIER}
							}
						},
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MB_HIGH"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"]			= "250",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMax",	MISSION_NANITES_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MB_HIGH", "Id", "REACTION1"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	MISSION_PRODUCT_MULTIPLIER},
								{"AmountMax",	MISSION_PRODUCT_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MB_HIGH", "Id", "REACTION2"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	MISSION_PRODUCT_MULTIPLIER},
								{"AmountMax",	MISSION_PRODUCT_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MB_HIGH", "Id", "REACTION3"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	MISSION_PRODUCT_MULTIPLIER},
								{"AmountMax",	MISSION_PRODUCT_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MB_HIGH", "Id", "COMPOUND1"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	MISSION_PRODUCT_MULTIPLIER},
								{"AmountMax",	MISSION_PRODUCT_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MB_HIGH", "Id", "COMPOUND2"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	MISSION_PRODUCT_MULTIPLIER},
								{"AmountMax",	MISSION_PRODUCT_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MB_HIGH", "Id", "COMPOUND3"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	MISSION_PRODUCT_MULTIPLIER},
								{"AmountMax",	MISSION_PRODUCT_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MB_HIGH", "Id", "COMPOUND4"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	MISSION_PRODUCT_MULTIPLIER},
								{"AmountMax",	MISSION_PRODUCT_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MB_MEGA"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"]			= "300000",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	MISSION_UNITS_MULTIPLIER}
							}
						},
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MB_MEGA"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"]			= "550000",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMax",	MISSION_UNITS_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MB_MEGA"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"]			= "200",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	MISSION_NANITES_MULTIPLIER}
							}
						},
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MB_MEGA"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"]			= "350",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMax",	MISSION_NANITES_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MB_MEGA", "Id", "MEGAPROD1"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	MISSION_PRODUCT_MULTIPLIER},
								{"AmountMax",	MISSION_PRODUCT_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MB_MEGA", "Id", "MEGAPROD2"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	MISSION_PRODUCT_MULTIPLIER},
								{"AmountMax",	MISSION_PRODUCT_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MB_MEGA", "Id", "MEGAPROD3"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	MISSION_PRODUCT_MULTIPLIER},
								{"AmountMax",	MISSION_PRODUCT_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MB_MEGA", "Id", "COMPOUND6"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	MISSION_PRODUCT_MULTIPLIER},
								{"AmountMax",	MISSION_PRODUCT_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MB_MEGA", "Id", "COMPOUND5"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	MISSION_PRODUCT_MULTIPLIER},
								{"AmountMax",	MISSION_PRODUCT_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MB_MEGA", "Id", "COMPOUND4"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	MISSION_PRODUCT_MULTIPLIER},
								{"AmountMax",	MISSION_PRODUCT_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_NEXUS_MED"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	NEXUS_PRODUCT_MULTIPLIER},
								{"AmountMax",	NEXUS_PRODUCT_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_NEXUS_MEGA"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	NEXUS_PRODUCT_MULTIPLIER},
								{"AmountMax",	NEXUS_PRODUCT_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_NEXUS_MED_C"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"]			= "400000",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	NEXUS_UNITS_MULTIPLIER}
							}
						},
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_NEXUS_MED_C"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"]			= "500000",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMax",	NEXUS_UNITS_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_NEXUS_MED_C"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"]			= "200000",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	NEXUS_UNITS_MULTIPLIER}
							}
						},
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_NEXUS_MED_C"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"]			= "900000",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMax",	NEXUS_UNITS_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_NEXUS_MED_C"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"]			= "300",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	NEXUS_NANITES_MULTIPLIER}
							}
						},
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_NEXUS_MED_C"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"]			= "350",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMax",	NEXUS_NANITES_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_NEXUS_MEGA_C"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"]			= "650000",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	NEXUS_UNITS_MULTIPLIER}
							}
						},
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_NEXUS_MEGA_C"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"]			= "750000",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMax",	NEXUS_UNITS_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_NEXUS_MEGA_C"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"]			= "500000",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	NEXUS_UNITS_MULTIPLIER}
							}
						},
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_NEXUS_MEGA_C"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"]			= "1500000",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMax",	NEXUS_UNITS_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_NEXUS_MEGA_C"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"]			= "400",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	NEXUS_NANITES_MULTIPLIER}
							}
						},
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_NEXUS_MEGA_C"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"]			= "550",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMax",	NEXUS_NANITES_MULTIPLIER}
							}
						},
-------------------------------------------------------------------------------------------
----------------------------------------- PRODUCT -----------------------------------------
-------------------------------------------------------------------------------------------
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_TGUILD_GIFT2", "Id", "BP_SALVAGE"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_TGUILD_GIFT3", "Id", "BP_SALVAGE"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_TGUILD_GIFT4", "Id", "BP_SALVAGE"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "BP_SALVAGE_ONLY", "Id", "BP_SALVAGE"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "BP_SALVAGE"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"] 		= "2",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER}
							}
						},
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "BP_SALVAGE"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"] 		= "4",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_COMM_UG_HARD", "Id", "BP_SALVAGE"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_NEXUS_MED", "Id", "BP_SALVAGE"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_NEXUS_MEGA", "Id", "BP_SALVAGE"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_NADA_JM"},
							["PRECEDING_KEY_WORDS"] = "",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"AmountPerStat",	NADA_PER_MILESTONE_REWARD}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "WORD", "PercentageChance", "IGNORE"},
							["REPLACE_TYPE"] 		= "ADDAFTERSECTION",
								["ADD"] 			= ATLAS_WORD,
						},
						
						{
							["SPECIAL_KEY_WORDS"] 	= {"Id", "WORD", "PercentageChance", "IGNORE", "AlienRace","None"},
							["SECTION_UP"] 			= 2,
							["REMOVE"] 				= "SECTION"
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "WORD", "PercentageChance", "IGNORE"},
							["REPLACE_TYPE"] 		= "ADDAFTERSECTION",
								["ADD"] 			= TEXT_TO_ADD
						},
					}
				}
			}
		}
	}
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE