require("StandardFighterFunctions")

return {
	Evaluate_Fighters = function(native,suffix,owner,alias,techLevel,regime,flags,is_main_empire)		
		local fighter = "H_WING_SQUADRON"
		
		if Is_Amalgam(owner) then
			alias = native
		end
		
		local simpletypes = {
			IMPERIAL = "TIE_HEAVY_BOMBER_SQUADRON",
			PENTASTAR = "TIE_TERROR_SQUADRON",
			ZSINJ_EMPIRE = "SCURRG_H6_PROTOTYPE_SQUADRON",
			EMPIREOFTHEHAND = "TIE_HEAVY_BOMBER_SQUADRON",
			MANDALORIANS = "FIRESPRAY_BOMBER_SQUADRON",
			HUTT_CARTELS = "SCURRG_H6_SQUADRON"
		}
		
		if simpletypes[owner] then
			fighter = simpletypes[owner]
		elseif simpletypes[alias] then
			fighter = simpletypes[alias]
		end
		
		if (owner == "REBEL" or alias == "REBEL") and Check_Flags(flags,"NCMP") then
			if Get_Fighter_Research("Kwing") then
				fighter = "K_WING_SQUADRON"
			else
				fighter = "K_WING_PROTOTYPE_SQUADRON"
			end
		end
		
		if Check_Flags(flags,"PUNISHERS") then
			fighter = "TIE_PUNISHER_SQUADRON"
		end
		
		if owner == "IMPERIAL_PROTEUS" then
			local proteus = GlobalValue.Get("PROTEUS_GROUP_NAME")
			if proteus == "TAGGE" then
				fighter = "TIE_HEAVY_BOMBER_SQUADRON"
			elseif proteus == "TIERFON" then
				fighter = "TIE_TERROR_SQUADRON"
			elseif proteus == "SELLASAS" then
				fighter = "SCURRG_H6_SQUADRON"
			elseif proteus == "DASTA" then
				fighter = "H_WING_SQUADRON" --TBC
			elseif proteus == "VOGEL" then
				fighter = "TIE_HEAVY_BOMBER_SQUADRON"
			elseif proteus == "BRAK" then
				fighter = "NTB_630_SQUADRON"
				if Get_Fighter_Research("BrakFighters") then
					fighter = "TIE_HEAVY_BOMBER_SQUADRON"
				end
			elseif proteus == "ISECTOR" then
				fighter = "FIRESPRAY_BOMBER_SQUADRON"
			elseif proteus == "SHADOWSPAWN" then
				fighter = "TIE_TERROR_SQUADRON"
			elseif proteus == "RESTORED_EMPIRE" then
				fighter = "NTB_630_SQUADRON"
			elseif proteus == "ZAARIN_REMNANTS" then
				fighter = "TIE_TERROR_SQUADRON"
			elseif proteus == "ELROOD" then
				fighter = "TIE_HEAVY_BOMBER_SQUADRON"
			elseif proteus == "WILD_SPACE" then
				fighter = "H_WING_SQUADRON"
			elseif proteus == "PRENTIOCH" then
				fighter = "COYOTE_BOMBER_BROWN_SQUADRON"
			elseif proteus == "JARDEEN" then
				fighter = "TIE_TERROR_SQUADRON"
			elseif proteus == "KASHYYYK" then
				fighter = "TIE_HEAVY_BOMBER_SQUADRON"
			elseif proteus == "LUMIYA" then
				fighter = "TIE_TERROR_SQUADRON"
			elseif proteus == "ARDA" then
				fighter = "TIE_HEAVY_BOMBER_SQUADRON"
			elseif proteus == "CATO_NEIMOIDIA" then
				fighter = "TIE_TERROR_SQUADRON"
			elseif proteus == "KUAT" then
				fighter = "FIRESPRAY_BOMBER_SQUADRON"
			elseif proteus == "KAARENTH_DISSENSION" then
				fighter = "SCURRG_H6_SQUADRON"
			elseif proteus == "TAMARIN" then
				fighter = "FIRESPRAY_BOMBER_SQUADRON"
			elseif proteus == "BAKURA" then
				fighter = "SCURRG_H6_SQUADRON"
			elseif proteus == "ANTEMERIDIAS" then
				fighter = "SCURRG_H6_SQUADRON"
			elseif proteus == "SECTOR_5" then
				fighter = "TIE_TERROR_SQUADRON"
			elseif proteus == "PRAKITH" then
				fighter = "FIRESPRAY_BOMBER_SQUADRON" --TBC
			elseif proteus == "RADAMA" then
				fighter = "TIE_HEAVY_BOMBER_SQUADRON"
			elseif proteus == "MAELSTROM" then
				fighter = "TIE_HEAVY_BOMBER_SQUADRON"
			elseif proteus == "PROPHETS" then
				fighter = "TIE_HEAVY_BOMBER_SQUADRON"
			elseif proteus == "RAYTER" then
				fighter = "TIE_HEAVY_BOMBER_SQUADRON"
			--elseif proteus == "WESSEX" then
				--fighter = ""
			--elseif proteus == "HAMMERS" then
				--fighter = ""
			--elseif proteus == "QUINTAD" then
				--fighter = ""
			elseif proteus == "IMPERIAL_LIANNA" then
				fighter = "TIE_TERROR_SQUADRON"
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