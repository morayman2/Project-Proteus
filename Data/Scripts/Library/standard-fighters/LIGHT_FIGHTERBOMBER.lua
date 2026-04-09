require("StandardFighterFunctions")

return {
	Evaluate_Fighters = function(native,suffix,owner,alias,techLevel,regime,flags,is_main_empire)		
		local fighter = "Z95ML_HEADHUNTER_SQUADRON"
		
		if Is_Amalgam(owner) then
			alias = native
		end
		
		local simpletypes = {
			IMPERIAL = "TIE_GT_SQUADRON",
			ZSINJ_EMPIRE = "Z95ML_HEADHUNTER_SQUADRON",
			EMPIREOFTHEHAND = "TIE_GT_SQUADRON",
			HAPES_CONSORTIUM = "MIYTIL_FIGHTER_SQUADRON",
		}
		
		if simpletypes[owner] then
			fighter = simpletypes[owner]
		elseif simpletypes[alias] then
			fighter = simpletypes[alias]
		end
		
		if owner == "IMPERIAL_PROTEUS" then
			local proteus = GlobalValue.Get("PROTEUS_GROUP_NAME")
			if proteus == "TAGGE" then
				fighter = "TIE_GT_SQUADRON"
			elseif proteus == "TIERFON" then
				fighter = "MISSILE_TIE_INTERCEPTOR_SQUADRON"
			elseif proteus == "SELLASAS" then
				fighter = "MISSILE_SHIELDED_ARMORED_INTERCEPTOR_SQUADRON"
			elseif proteus == "DASTA" then
				fighter = "Z95ML_HEADHUNTER_SQUADRON"
			elseif proteus == "VOGEL" then
				fighter = "TIE_GT_SQUADRON"
			elseif proteus == "BRAK" then
				fighter = "TIE_GT_SQUADRON"
				if Get_Fighter_Research("BrakFighters") then
					fighter = "TIE_X2_SQUADRON"
				end
			elseif proteus == "ISECTOR" then
				fighter = "Z95ML_HEADHUNTER_SQUADRON"
			elseif proteus == "SHADOWSPAWN" then
				fighter = "MISSILE_TIE_INTERCEPTOR_SQUADRON"
			elseif proteus == "TAPANI" then
				fighter = "Z95ML_HEADHUNTER_SQUADRON"
			elseif proteus == "RESTORED_EMPIRE" then
				fighter = "Z95ML_HEADHUNTER_SQUADRON"
			elseif proteus == "ZAARIN_REMNANTS" then
				fighter = "TIE_V1_SQUADRON"
			elseif proteus == "ELROOD" then
				fighter = "Z95ML_HEADHUNTER_SQUADRON"
			elseif proteus == "WILD_SPACE" then
				fighter = "TIE_GT_TORPS_SQUADRON"
			elseif proteus == "PRENTIOCH" then
				fighter = "TIE_GT_SQUADRON"
			elseif proteus == "JARDEEN" then
				fighter = "TIE_GT_TORPS_SQUADRON"
			elseif proteus == "KASHYYYK" then
				fighter = "Z95ML_HEADHUNTER_SQUADRON"
			elseif proteus == "LUMIYA" then
				fighter = "TIE_AVENGER_TORPS_SQUADRON"
			elseif proteus == "ARDA" then
				fighter = "Z95ML_HEADHUNTER_SQUADRON"
			elseif proteus == "CATO_NEIMOIDIA" then
				fighter = "TIE_GT_SQUADRON"
			elseif proteus == "KUAT" then
				fighter = "ASSAULT_ETA2_ACTIS_SQUADRON"
			elseif proteus == "KAARENTH_DISSENSION" then
				fighter = "Z95ML_HEADHUNTER_SQUADRON" --TBC
			elseif proteus == "TAMARIN" then
				fighter = "TIE_GT_SQUADRON"
			elseif proteus == "BAKURA" then
				fighter = "Z95ML_HEADHUNTER_SQUADRON"
			elseif proteus == "ANTEMERIDIAS" then
				fighter = "Z95ML_HEADHUNTER_SQUADRON"
			elseif proteus == "SECTOR_5" then
				fighter = "TIE_GT_TORPS_SQUADRON"
			elseif proteus == "PRAKITH" then
				fighter = "TIE_GT_SQUADRON"
			elseif proteus == "RADAMA" then
				fighter = "TIE_GT_SQUADRON"
			elseif proteus == "MAELSTROM" then
				fighter = "TIE_GT_SQUADRON"
			elseif proteus == "PROPHETS" then
				fighter = "Z95ML_HEADHUNTER_SQUADRON" --TBC
			elseif proteus == "RAYTER" then
				fighter = "TIE_GT_SQUADRON"
			--elseif proteus == "WESSEX" then
				--fighter = ""
			--elseif proteus == "HAMMERS" then
				--fighter = ""
			--elseif proteus == "QUINTAD" then
				--fighter = ""
			elseif proteus == "IMPERIAL_LIANNA" then
				fighter = "TIE_X2_SQUADRON"
			--elseif proteus == "GAROS" then
				--fighter = ""
			--elseif proteus == "NABOO" then
				--fighter = ""
			--elseif proteus == "KAMINO" then
				--fighter = ""
			--elseif proteus == "CIUTRIC_HEGEMONY" then
				--fighter = ""
			--elseif proteus == "ZERO_COMMAND" then
				--fighter = ""
			--elseif proteus == "LAMBDA" then
				--fighter = ""
			end
		end
		
		if suffix then
			fighter = fighter .. suffix
		end
		return fighter
	end
}