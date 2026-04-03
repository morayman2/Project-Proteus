return {
	Ship_Crew_Requirement = 155,
	Fighters = {
		["ELITE_FIGHTERBOMBER"] = {
			DEFAULT = {Initial = 1, Reserve = 2},
			EMPIRE = {Initial = 1, Reserve = 2, ResearchType = {"~V38","~IMPERIAL_NABOO"}}
		},
		["V38_SQUADRON"] = {
			EMPIRE = {Initial = 1, Reserve = 2, ResearchType = "V38"}
		},
		["DUNELIZARD_INTERCEPTOR_SQUADRON"] = {
			EMPIRE = {Initial = 1, Reserve = 2, ResearchType = "IMPERIAL_NABOO"}
		}
	},
	Native = "IMPERIAL",
	Scripts = {"multilayer", "fighter-spawn", "single-unit-retreat"}
}