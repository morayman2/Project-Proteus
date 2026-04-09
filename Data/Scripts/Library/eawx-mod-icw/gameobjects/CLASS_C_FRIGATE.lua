return {
	Ship_Crew_Requirement = 45,
	Fighters = {
		["LIGHT_FIGHTER_HALF"] = {
			DEFAULT = {Initial = 1, Reserve = 2}
		},
		["LIGHT_BOMBER_HALF"] = {
			DEFAULT = {Initial = 1, Reserve = 0}
		}
	},
	Native = "SECTOR_FORCES",
	Scripts = {"multilayer", "fighter-spawn"},
	Flags = {HANGAR = true}
}