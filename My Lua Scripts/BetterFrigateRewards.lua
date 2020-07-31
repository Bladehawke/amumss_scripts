UNITS_MULTIPLIER = 5			-- Default value is 1 | Multiplys the amount of units you get 
NANITES_MULTIPLIER = 5			-- Default value is 1 | Multiplys the amount of nanites you get
PRODUCT_MULTIPLIER = 2			-- Default value is 1 | Multiplys the amount of products you get
RESOURCE_MULTIPLIER = 3			-- Default value is 1 | Multiplys the amount of resources you get

-----------------------------------------------------------------------------------------------------------
----------------------------------- DO NOT EDIT ANYTHING PAS THIS POINT -----------------------------------
-----------------------------------------------------------------------------------------------------------

NMS_MOD_DEFINITION_CONTAINER = 
{
	["MOD_FILENAME"] 			= "BetterFrigateRewards.pak",
	["MOD_AUTHOR"]				= "MrTrack",
	["NMS_VERSION"]				= "2.42",
	["MODIFICATIONS"] 			=
	{
		{
			["MBIN_CHANGE_TABLE"] = 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\TABLES\EXPEDITIONREWARDTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	=
					{
-----------------------------------------------------------------------------------------------------------
-------------------------------------------------- UNITS --------------------------------------------------
-----------------------------------------------------------------------------------------------------------
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_DIPLOMATIC_0"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"]			= "250000",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	UNITS_MULTIPLIER}
							}
						},
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_DIPLOMATIC_0"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"]			= "350000",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMax",	UNITS_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_DIPLOMATIC_1"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	UNITS_MULTIPLIER},
								{"AmountMax",	UNITS_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_DIPLOMATIC_2"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	UNITS_MULTIPLIER},
								{"AmountMax",	UNITS_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_DIPLOMATIC_3"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	UNITS_MULTIPLIER},
								{"AmountMax",	UNITS_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_COMBAT_0"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	UNITS_MULTIPLIER},
								{"AmountMax",	UNITS_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_COMBAT_1"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"]			= "200000",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	UNITS_MULTIPLIER}
							}
						},
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_COMBAT_1"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"]			= "350000",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMax",	UNITS_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_COMBAT_2"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	UNITS_MULTIPLIER},
								{"AmountMax",	UNITS_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_EXPLORATION_0"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"]			= "250000",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	UNITS_MULTIPLIER}
							}
						},
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_EXPLORATION_0"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"]			= "400000",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMax",	UNITS_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_EXPLORATION_1"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"]			= "250000",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	UNITS_MULTIPLIER}
							}
						},
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_EXPLORATION_1"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"]			= "400000",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMax",	UNITS_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_EXPLORATION_2"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"]			= "250000",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	UNITS_MULTIPLIER}
							}
						},
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_EXPLORATION_2"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"]			= "400000",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMax",	UNITS_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_EXPLORATION_3"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"]			= "250000",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	UNITS_MULTIPLIER}
							}
						},
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_EXPLORATION_3"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"]			= "400000",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMax",	UNITS_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MINING_0"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"]			= "250000",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	UNITS_MULTIPLIER}
							}
						},
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MINING_0"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"]			= "400000",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMax",	UNITS_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MINING_1"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"]			= "250000",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	UNITS_MULTIPLIER}
							}
						},
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MINING_1"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"]			= "400000",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMax",	UNITS_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MINING_2"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"]			= "250000",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	UNITS_MULTIPLIER}
							}
						},
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MINING_2"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"]			= "400000",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMax",	UNITS_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MINING_3"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"]			= "250000",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	UNITS_MULTIPLIER}
							}
						},
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MINING_3"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"]			= "400000",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMax",	UNITS_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_DIP_EASY_0"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"]			= "25000",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	UNITS_MULTIPLIER}
							}
						},
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_DIP_EASY_0"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"]			= "35000",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMax",	UNITS_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_DIP_EASY_1"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	UNITS_MULTIPLIER},
								{"AmountMax",	UNITS_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_DIP_EASY_2"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	UNITS_MULTIPLIER},
								{"AmountMax",	UNITS_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_DIP_EASY_3"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	UNITS_MULTIPLIER},
								{"AmountMax",	UNITS_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_COM_EASY_0"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	UNITS_MULTIPLIER},
								{"AmountMax",	UNITS_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_COM_EASY_1"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"]			= "20000",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	UNITS_MULTIPLIER}
							}
						},
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_COM_EASY_1"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"]			= "35000",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMax",	UNITS_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_COM_EASY_2"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	UNITS_MULTIPLIER},
								{"AmountMax",	UNITS_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_EXP_EASY_0"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"]			= "25000",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	UNITS_MULTIPLIER}
							}
						},
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_EXP_EASY_0"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"]			= "40000",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMax",	UNITS_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_EXP_EASY_1"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"]			= "25000",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	UNITS_MULTIPLIER}
							}
						},
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_EXP_EASY_1"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"]			= "40000",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMax",	UNITS_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_EXP_EASY_2"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"]			= "25000",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	UNITS_MULTIPLIER}
							}
						},
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_EXP_EASY_2"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"]			= "40000",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMax",	UNITS_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_EXP_EASY_3"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"]			= "25000",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	UNITS_MULTIPLIER}
							}
						},
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_EXP_EASY_3"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"]			= "40000",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMax",	UNITS_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MINE_EASY_0"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"]			= "25000",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	UNITS_MULTIPLIER}
							}
						},
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MINE_EASY_0"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"]			= "40000",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMax",	UNITS_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MINE_EASY_1"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"]			= "25000",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	UNITS_MULTIPLIER}
							}
						},
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MINE_EASY_1"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"]			= "40000",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMax",	UNITS_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MINE_EASY_2"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"]			= "25000",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	UNITS_MULTIPLIER}
							}
						},
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MINE_EASY_2"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"]			= "40000",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMax",	UNITS_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MINE_EASY_3"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"]			= "25000",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	UNITS_MULTIPLIER}
							}
						},
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MINE_EASY_3"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"]			= "40000",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMax",	UNITS_MULTIPLIER}
							}
						},
-----------------------------------------------------------------------------------------------------------
------------------------------------------------- NANITES -------------------------------------------------
-----------------------------------------------------------------------------------------------------------
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_EXPLORATION_0"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"]			= "200",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	NANITES_MULTIPLIER}
							}
						},
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_EXPLORATION_0"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"]			= "250",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMax",	NANITES_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_EXP_EASY_0"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"]			= "20",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	NANITES_MULTIPLIER}
							}
						},
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_EXP_EASY_0"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_MATCH"]			= "25",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMax",	NANITES_MULTIPLIER}
							}
						},
-----------------------------------------------------------------------------------------------------------
------------------------------------------------- PRODUCT -------------------------------------------------
-----------------------------------------------------------------------------------------------------------
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_DIPLOMATIC_0", "Id", "SHIP_INV_TOKEN"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	PRODUCT_MULTIPLIER},
								{"AmountMax",	PRODUCT_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_DIPLOMATIC_0", "Id", "TRA_CURIO1"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	PRODUCT_MULTIPLIER},
								{"AmountMax",	PRODUCT_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_DIPLOMATIC_0", "Id", "TRA_CURIO2"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	PRODUCT_MULTIPLIER},
								{"AmountMax",	PRODUCT_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_DIPLOMATIC_0", "Id", "WAR_CURIO1"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	PRODUCT_MULTIPLIER},
								{"AmountMax",	PRODUCT_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_DIPLOMATIC_0", "Id", "WAR_CURIO2"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	PRODUCT_MULTIPLIER},
								{"AmountMax",	PRODUCT_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_DIPLOMATIC_0", "Id", "EXP_CURIO1"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	PRODUCT_MULTIPLIER},
								{"AmountMax",	PRODUCT_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_DIPLOMATIC_0", "Id", "EXP_CURIO2"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	PRODUCT_MULTIPLIER},
								{"AmountMax",	PRODUCT_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_DIPLOMATIC_0", "Id", "COMPOUND6"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	PRODUCT_MULTIPLIER},
								{"AmountMax",	PRODUCT_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_DIPLOMATIC_0", "Id", "COMPOUND5"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	PRODUCT_MULTIPLIER},
								{"AmountMax",	PRODUCT_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_DIPLOMATIC_0", "Id", "COMPOUND4"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	PRODUCT_MULTIPLIER},
								{"AmountMax",	PRODUCT_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_COMBAT_1", "Id", "ALLOY7"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	PRODUCT_MULTIPLIER},
								{"AmountMax",	PRODUCT_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_COMBAT_1", "Id", "ALLOY8"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	PRODUCT_MULTIPLIER},
								{"AmountMax",	PRODUCT_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_EXPLORATION_0", "Id", "ANTIMATTER"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	PRODUCT_MULTIPLIER},
								{"AmountMax",	PRODUCT_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_EXPLORATION_1", "Id", "NIPNIPBUDS"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	PRODUCT_MULTIPLIER},
								{"AmountMax",	PRODUCT_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_EXPLORATION_1", "Id", "EXP_CURIO1"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	PRODUCT_MULTIPLIER},
								{"AmountMax",	PRODUCT_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_EXPLORATION_1", "Id", "WAR_CURIO1"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	PRODUCT_MULTIPLIER},
								{"AmountMax",	PRODUCT_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_EXPLORATION_1", "Id", "TRA_CURIO1"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	PRODUCT_MULTIPLIER},
								{"AmountMax",	PRODUCT_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_EXPLORATION_1", "Id", "SACVENOM"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	PRODUCT_MULTIPLIER},
								{"AmountMax",	PRODUCT_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_EXPLORATION_1", "Id", "ALBUMENPEARL"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	PRODUCT_MULTIPLIER},
								{"AmountMax",	PRODUCT_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_EXPLORATION_2", "Id", "REACTION1"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	PRODUCT_MULTIPLIER},
								{"AmountMax",	PRODUCT_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_EXPLORATION_2", "Id", "REACTION2"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	PRODUCT_MULTIPLIER},
								{"AmountMax",	PRODUCT_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_EXPLORATION_2", "Id", "REACTION3"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	PRODUCT_MULTIPLIER},
								{"AmountMax",	PRODUCT_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_EXPLORATION_2", "Id", "SACVENOM"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	PRODUCT_MULTIPLIER},
								{"AmountMax",	PRODUCT_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_EXPLORATION_2", "Id", "ALBUMENPEARL"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	PRODUCT_MULTIPLIER},
								{"AmountMax",	PRODUCT_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_EXPLORATION_3", "Id", "EXP_CURIO1"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	PRODUCT_MULTIPLIER},
								{"AmountMax",	PRODUCT_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_EXPLORATION_3", "Id", "WAR_CURIO1"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	PRODUCT_MULTIPLIER},
								{"AmountMax",	PRODUCT_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_EXPLORATION_3", "Id", "TRA_CURIO1"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	PRODUCT_MULTIPLIER},
								{"AmountMax",	PRODUCT_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_EXPLORATION_3", "Id", "CAVECUBE"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	PRODUCT_MULTIPLIER},
								{"AmountMax",	PRODUCT_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_EXPLORATION_3", "Id", "GRAVBALL"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	PRODUCT_MULTIPLIER},
								{"AmountMax",	PRODUCT_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MINING_1", "Id", "SHIP_INV_TOKEN"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	PRODUCT_MULTIPLIER},
								{"AmountMax",	PRODUCT_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MINING_1", "Id", "FRIG_TOKEN"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	PRODUCT_MULTIPLIER},
								{"AmountMax",	PRODUCT_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MINING_1", "Id", "TRA_EXOTICS5"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	PRODUCT_MULTIPLIER},
								{"AmountMax",	PRODUCT_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MINING_1", "Id", "TRA_MINERALS5"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	PRODUCT_MULTIPLIER},
								{"AmountMax",	PRODUCT_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MINING_1", "Id", "TRA_ALLOY5"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	PRODUCT_MULTIPLIER},
								{"AmountMax",	PRODUCT_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MINING_1", "Id", "COMPOUND1"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	PRODUCT_MULTIPLIER},
								{"AmountMax",	PRODUCT_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MINING_1", "Id", "COMPOUND2"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	PRODUCT_MULTIPLIER},
								{"AmountMax",	PRODUCT_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MINING_1", "Id", "COMPOUND3"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	PRODUCT_MULTIPLIER},
								{"AmountMax",	PRODUCT_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MINING_2", "Id", "SHIP_INV_TOKEN"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	PRODUCT_MULTIPLIER},
								{"AmountMax",	PRODUCT_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MINING_2", "Id", "ALLOY7"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	PRODUCT_MULTIPLIER},
								{"AmountMax",	PRODUCT_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MINING_2", "Id", "ALLOY8"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	PRODUCT_MULTIPLIER},
								{"AmountMax",	PRODUCT_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MINING_2", "Id", "ALLOY1"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	PRODUCT_MULTIPLIER},
								{"AmountMax",	PRODUCT_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MINING_2", "Id", "ALLOY2"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	PRODUCT_MULTIPLIER},
								{"AmountMax",	PRODUCT_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MINING_2", "Id", "ALLOY3"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	PRODUCT_MULTIPLIER},
								{"AmountMax",	PRODUCT_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MINING_2", "Id", "ALLOY4"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	PRODUCT_MULTIPLIER},
								{"AmountMax",	PRODUCT_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MINING_2", "Id", "ALLOY5"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	PRODUCT_MULTIPLIER},
								{"AmountMax",	PRODUCT_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MINING_2", "Id", "ALLOY6"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	PRODUCT_MULTIPLIER},
								{"AmountMax",	PRODUCT_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MINING_3", "Id", "SHIP_INV_TOKEN"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	PRODUCT_MULTIPLIER},
								{"AmountMax",	PRODUCT_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MINING_3", "Id", "FRIG_TOKEN"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	PRODUCT_MULTIPLIER},
								{"AmountMax",	PRODUCT_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MINING_3", "Id", "FUELPROD3"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	PRODUCT_MULTIPLIER},
								{"AmountMax",	PRODUCT_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MINING_3", "Id", "LANDPROD3"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	PRODUCT_MULTIPLIER},
								{"AmountMax",	PRODUCT_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MINING_3", "Id", "CAVEPROD3"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	PRODUCT_MULTIPLIER},
								{"AmountMax",	PRODUCT_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MINING_3", "Id", "WATERPROD3"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	PRODUCT_MULTIPLIER},
								{"AmountMax",	PRODUCT_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MINING_3", "Id", "CATAPROD3"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	PRODUCT_MULTIPLIER},
								{"AmountMax",	PRODUCT_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MINING_3", "Id", "OXYPROD3"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	PRODUCT_MULTIPLIER},
								{"AmountMax",	PRODUCT_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_DIP_EASY_0", "Id", "TRA_CURIO1"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	PRODUCT_MULTIPLIER},
								{"AmountMax",	PRODUCT_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_DIP_EASY_0", "Id", "TRA_CURIO2"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	PRODUCT_MULTIPLIER},
								{"AmountMax",	PRODUCT_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_DIP_EASY_0", "Id", "WAR_CURIO1"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	PRODUCT_MULTIPLIER},
								{"AmountMax",	PRODUCT_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_DIP_EASY_0", "Id", "WAR_CURIO2"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	PRODUCT_MULTIPLIER},
								{"AmountMax",	PRODUCT_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_DIP_EASY_0", "Id", "EXP_CURIO1"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	PRODUCT_MULTIPLIER},
								{"AmountMax",	PRODUCT_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_DIP_EASY_0", "Id", "EXP_CURIO2"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	PRODUCT_MULTIPLIER},
								{"AmountMax",	PRODUCT_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_COM_EASY_1", "Id", "ALLOY7"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	PRODUCT_MULTIPLIER},
								{"AmountMax",	PRODUCT_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_COM_EASY_1", "Id", "ALLOY8"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	PRODUCT_MULTIPLIER},
								{"AmountMax",	PRODUCT_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_EXP_EASY_0", "Id", "ANTIMATTER"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	PRODUCT_MULTIPLIER},
								{"AmountMax",	PRODUCT_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_EXP_EASY_1", "Id", "NIPNIPBUDS"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	PRODUCT_MULTIPLIER},
								{"AmountMax",	PRODUCT_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_EXP_EASY_1", "Id", "EXP_CURIO1"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	PRODUCT_MULTIPLIER},
								{"AmountMax",	PRODUCT_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_EXP_EASY_1", "Id", "WAR_CURIO1"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	PRODUCT_MULTIPLIER},
								{"AmountMax",	PRODUCT_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_EXP_EASY_1", "Id", "TRA_CURIO1"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	PRODUCT_MULTIPLIER},
								{"AmountMax",	PRODUCT_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_EXP_EASY_1", "Id", "SACVENOM"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	PRODUCT_MULTIPLIER},
								{"AmountMax",	PRODUCT_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_EXP_EASY_1", "Id", "ALBUMENPEARL"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	PRODUCT_MULTIPLIER},
								{"AmountMax",	PRODUCT_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_EXP_EASY_2", "Id", "REACTION1"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	PRODUCT_MULTIPLIER},
								{"AmountMax",	PRODUCT_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_EXP_EASY_2", "Id", "REACTION2"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	PRODUCT_MULTIPLIER},
								{"AmountMax",	PRODUCT_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_EXP_EASY_2", "Id", "REACTION3"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	PRODUCT_MULTIPLIER},
								{"AmountMax",	PRODUCT_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_EXP_EASY_2", "Id", "SACVENOM"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	PRODUCT_MULTIPLIER},
								{"AmountMax",	PRODUCT_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_EXP_EASY_2", "Id", "ALBUMENPEARL"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	PRODUCT_MULTIPLIER},
								{"AmountMax",	PRODUCT_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_EXP_EASY_3", "Id", "EXP_CURIO1"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	PRODUCT_MULTIPLIER},
								{"AmountMax",	PRODUCT_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_EXP_EASY_3", "Id", "WAR_CURIO1"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	PRODUCT_MULTIPLIER},
								{"AmountMax",	PRODUCT_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_EXP_EASY_3", "Id", "TRA_CURIO1"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	PRODUCT_MULTIPLIER},
								{"AmountMax",	PRODUCT_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_EXP_EASY_3", "Id", "CAVECUBE"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	PRODUCT_MULTIPLIER},
								{"AmountMax",	PRODUCT_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_EXP_EASY_3", "Id", "GRAVBALL"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	PRODUCT_MULTIPLIER},
								{"AmountMax",	PRODUCT_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MINE_EASY_1", "Id", "FRIG_TOKEN"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	PRODUCT_MULTIPLIER},
								{"AmountMax",	PRODUCT_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MINE_EASY_1", "Id", "TRA_EXOTICS5"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	PRODUCT_MULTIPLIER},
								{"AmountMax",	PRODUCT_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MINE_EASY_1", "Id", "TRA_MINERALS5"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	PRODUCT_MULTIPLIER},
								{"AmountMax",	PRODUCT_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MINE_EASY_1", "Id", "TRA_ALLOY5"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	PRODUCT_MULTIPLIER},
								{"AmountMax",	PRODUCT_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MINE_EASY_2", "Id", "ALLOY7"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	PRODUCT_MULTIPLIER},
								{"AmountMax",	PRODUCT_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MINE_EASY_2", "Id", "ALLOY8"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	PRODUCT_MULTIPLIER},
								{"AmountMax",	PRODUCT_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MINE_EASY_2", "Id", "ALLOY1"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	PRODUCT_MULTIPLIER},
								{"AmountMax",	PRODUCT_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MINE_EASY_2", "Id", "ALLOY2"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	PRODUCT_MULTIPLIER},
								{"AmountMax",	PRODUCT_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MINE_EASY_2", "Id", "ALLOY3"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	PRODUCT_MULTIPLIER},
								{"AmountMax",	PRODUCT_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MINE_EASY_2", "Id", "ALLOY4"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	PRODUCT_MULTIPLIER},
								{"AmountMax",	PRODUCT_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MINE_EASY_2", "Id", "ALLOY5"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	PRODUCT_MULTIPLIER},
								{"AmountMax",	PRODUCT_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MINE_EASY_2", "Id", "ALLOY6"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	PRODUCT_MULTIPLIER},
								{"AmountMax",	PRODUCT_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MINE_EASY_3", "Id", "FRIG_TOKEN"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	PRODUCT_MULTIPLIER},
								{"AmountMax",	PRODUCT_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MINE_EASY_3", "Id", "FUELPROD3"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	PRODUCT_MULTIPLIER},
								{"AmountMax",	PRODUCT_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MINE_EASY_3", "Id", "LANDPROD3"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	PRODUCT_MULTIPLIER},
								{"AmountMax",	PRODUCT_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MINE_EASY_3", "Id", "CAVEPROD3"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	PRODUCT_MULTIPLIER},
								{"AmountMax",	PRODUCT_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MINE_EASY_3", "Id", "WATERPROD3"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	PRODUCT_MULTIPLIER},
								{"AmountMax",	PRODUCT_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MINE_EASY_3", "Id", "CATAPROD3"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	PRODUCT_MULTIPLIER},
								{"AmountMax",	PRODUCT_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MINE_EASY_3", "Id", "OXYPROD3"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	PRODUCT_MULTIPLIER},
								{"AmountMax",	PRODUCT_MULTIPLIER}
							}
						},
-----------------------------------------------------------------------------------------------------------
------------------------------------------------ RESOURCES ------------------------------------------------
-----------------------------------------------------------------------------------------------------------
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_COMBAT_1", "Id", "STELLAR2"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_COMBAT_1", "Id", "BLUE2"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_COMBAT_1", "Id", "LAND3"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MINING_0", "Id", "EX_YELLOW"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MINING_0", "Id", "EX_RED"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MINING_0", "Id", "EX_GREEN"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MINING_0", "Id", "EX_BLUE"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_COM_EASY_1", "Id", "STELLAR2"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_COM_EASY_1", "Id", "BLUE2"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_COM_EASY_1", "Id", "LAND3"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MINE_EASY_0", "Id", "EX_YELLOW"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MINE_EASY_0", "Id", "EX_RED"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MINE_EASY_0", "Id", "EX_GREEN"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
						
						{
							["SPECIAL_KEY_WORDS"]	= {"Id", "R_MINE_EASY_0", "Id", "EX_BLUE"},
							["MATH_OPERATION"] 		= "*",
							["REPLACE_TYPE"] 		= "ALL",
							["VALUE_CHANGE_TABLE"] 	=
							{
								{"AmountMin",	RESOURCE_MULTIPLIER},
								{"AmountMax",	RESOURCE_MULTIPLIER}
							}
						},
					}
				},
			}
		},
	}
}
--NOTE: ANYTHING NOT in table NMS_MOD_DEFINITION_CONTAINER IS IGNORED AFTER THE SCRIPT IS LOADED
--IT IS BETTER TO ADD THINGS AT THE TOP IF YOU NEED TO
--DON'T ADD ANYTHING PASS THIS POINT HERE