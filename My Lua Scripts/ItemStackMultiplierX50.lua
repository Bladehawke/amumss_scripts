STACK = 1 
STACK_MULTIPLIER = STACK * 50 

NMS_MOD_DEFINITION_CONTAINER = 
{
["MOD_FILENAME"] 			= "ItemStackMultiplierX50.pak",   
["MOD_AUTHOR"]				= "Jordan aka Twiggza",				 
["NMS_VERSION"]				= "2.62",					 
["MODIFICATIONS"] 			= 
	{
		{
			["PAK_FILE_SOURCE"] 	= "NMSARC.515F1D3.pak",
			["MBIN_CHANGE_TABLE"] 	= 
			{ 
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\TABLES\NMS_REALITY_GCSUBSTANCETABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	= 
					{
						{
							["PRECEDING_KEY_WORDS"] = "StackMultiplier",				
							["MATH_OPERATION"] 		= "*", 				
							["REPLACE_TYPE"] 		= "ALL",			  
							["VALUE_MATCH"] 		= "", 				  
							["VALUE_CHANGE_TABLE"] 	= 
							{
								{"StackMultiplier",	STACK_MULTIPLIER} 	-- Original 1 
							}
						}
					}
				},			
				{
					["MBIN_FILE_SOURCE"] 	= "METADATA\REALITY\TABLES\NMS_REALITY_GCPRODUCTTABLE.MBIN",
					["EXML_CHANGE_TABLE"] 	=
					{
						{
							["PRECEDING_KEY_WORDS"] = "StackMultiplier",				
							["MATH_OPERATION"] 		= "*",  			
							["REPLACE_TYPE"] 		= "ALL",			
							["VALUE_MATCH"] 		= "",        		
							["VALUE_CHANGE_TABLE"] 	= 					
							{
								{"StackMultiplier",	STACK_MULTIPLIER} 	-- Original 1
							}
						}
					}
				},		
			} 
		}
	}	
}
