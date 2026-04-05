--//////////////////////////////////////////////////////////////////////////////////////
-- Add Units to the reinforcement pool// This script is part of the Survival Mode
-- � Pox
--//////////////////////////////////////////////////////////////////////////////////////

require("PGBase")
require("PGStateMachine")
require("PGStoryMode")
require("eawx-util/MissionUtil")

function Definitions()
	
	DebugMessage("%s -- In Definitions", tostring(Script))

	Define_State("State_Init", State_Init);
	index = 0
	proteus_groups = {
		"LAMBDA", "ZERO_COMMAND", "ELROOD", "ANTEMERIDIAS", "WILD_SPACE", "PRENTIOCH", "SECTOR_5", "PRAKITH", 
		"JARDEEN", "CIUTRIC_HEGEMONY", "ZSINJ_REMNANTS", "KAMINO", "NABOO", "RADAMA", "TAPANI", "GAROS", 
		"MAELSTROM", "SHADOWSPAWN", "PROPHETS", "TAGGE", "TIERFON", "BAKURA", "BRAK", "TAMARIN", "ISECTOR", 
		"IMPERIAL_LIANNA", "QUINTAD", "DASTA", "HAMMERS", "KASHYYYK", "LUMIYA", "ARDA", "SELLASAS", "PROTECTORATE", 
		"ZAARIN_REMNANTS", "RAYTER", "VOGEL", "WESSEX", "CATO_NEIMOIDIA", "KUAT", "KAARENTH_DISSENSION", "RESTORED_EMPIRE",
	}
	proteus_displayed_names = {
		"Lambda Sector", "Zero Command", "Elrood Sector", "Antemeridian Sector", "Delurin's Empire", "Prentioch's Dominion", "Sector 5", "Protectorate of Prakith", 
		"Imperial Jardeen", "Ciutric Hegemony", "Zsinj Remnants", "Imperial Kamino", "Imperial Naboo", "Imperial Ord Radama", "Tapani Sector", "Imperial Garos", 
		"Maelstrom Command", "Shadow Realm", "Prophets of the Dark Side", "House of Tagge", "Tierfon Sector", "Imperial Bakura", "Brak Sector", "Tamarin Sector", "I-sector", 
		"Imperial Lianna", "The Quintad", "D'Astan Sector", "Imperial Hammers", "Imperial Kashyyyk", "Lumiya's Sith", "Imperial Arda", "Imperial Sellasas", "The Protectorate", 
		"Zaarin Remnants", "Rayter Sector", "Dustig Oversector", "Relgim Oversector", "Imperial Neimoidia", "Kuat Sector", "Kaarenth Dissension", "Restored Empire",
	}

end


function State_Init(message)
	if message == OnEnter then
		if Get_Game_Mode() ~= "Space" then
			ScriptExit()
		end
		local setterName = Object.Get_Type().Get_Name()
		local factionName = string.gsub(setterName, "IA_SET_", "")
		GlobalValue.Set("IA_FACTION", factionName)
		if factionName == "IMPERIAL_PROTEUS" then
			index = index + 1
			if index > 42 then
				index = 1
			end
			local proteus_group_name = proteus_groups[index]
			local proteus_friendly_name = proteus_displayed_names[index]
			GlobalValue.Set("PROTEUS_GROUP_NAME",proteus_group_name)
			StoryUtil.ShowScreenText("Imperial Proteus group set to"..proteus_friendly_name, 10, nil, {r=255, g=255, b=255})
		end

		ScriptExit()
		
	end
end