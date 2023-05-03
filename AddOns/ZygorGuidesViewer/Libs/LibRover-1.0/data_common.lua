local name,addon = ...

addon.LibRoverData = addon.LibRoverData or {}
local data=addon.LibRoverData

--[[
	These lines define how each point's text displays, depending on their "situation".
	The keys of this dictionary adhere to a quirky, but logical pattern of "a_b__c_d", which means:
		a = "this type of connection"
		_ = "to"
		b = "this type of point"
		_ = "and"
		_ = "then"
		c = "that type of connection"
		_ = "to"
		d = "that type of point".
	So, a "start" point that you "walk" to (all paths start like that), after which you'll "fly" to a "border" point, is in a situation of "walk_start__fly_border" ("walk to start, and then fly to border").
	You can supply just "a_b", or just "b".
	A point attribute <template:nameoftemplate> overrides the point's basic type for the purpose of this list. Thus, a point can stay a "portal", but have the flavour of "portalclick" if it has a <template:portalclick> attribute and have a special display of "Click portal", matching a "portalclick" type.
	A connection attribute {template:nameoftemplate} overrides the mode of transport for the purpose of this list. Thus, if a connection has {template:portalauto} one can match for "portalauto_*" to show descriptions for that connection, or match for "*_*__portalauto_*" to match for NEXT connection's type and perhaps show an appropriate text on the previous node before a portal.
	A connection attribute that is not found in this list, is looked up in the list above, for easy two-way descriptions.
	Asterisks denote wildcards.
	One can also use the text part of the dictionary to refer to other entries in the list.
	Entries are checked in the file's order. First match gets the cake.

	So, for example: 
		"taxi" - matches points of type "taxi", to display them as "Talk to {npc}\nFly to {next_name}, {next_map}".
		"portalauto" - matches points of template "portalauto", to display them as "Enter portal to {next_map}".
		"*_*__pinkportal" - matches any point AFTER which there's a pinkportal connection.
--]]

data.point_context_templates = {
	{'*_animaflow__taxi_animaflow',"Click the Animaflow Teleporter\nFly to {next_name}"},
	{'start_start',"Start at {node}"}, -- dev purposes only
	{'walk_start',"You are here"},

	{'whistle',"Use Flight Master's Whistle"},
	{'taxi_taxi__taxi_taxi',"passfp"},
	{'taxi_ferry__taxi_ferry',"passfp"},
	{'forced_taxi__taxi_taxi',"Arrive at {name}, {map}\nFly again to {next_name}, {next_map}"},
	{'forced_ferry__taxi_ferry',"Arrive at {name}, {map}\nTake the Ferry again to {next_name}"},
	{'*_ferry__taxi_ferry',"Talk to {npc}\nTake the Ferry to {next_name}"},
	--{'taxi_taxi__taxi_taxi',"arrive"},

	{'*_taxi__taxi_taxi',"Talk to {npc}\nFly to {next_name}, {next_map}"},
	{'*_eternalgateway__taxi_eternalgateway',"eternalgateway"},
	{'taxi_taxi',"arrivefp"},
	{'*_eternalgateway',"taxidumb"},
	{'taxi_ferry',"arrivefp"},
	{'taxi_argusportal',"arrivefp"},
	{'taxi_argushub',"arrivefp"},
	{'taxi_zerethportal',"arrivefp"},
	{'taxi_zerethportal2',"arrivefp"},
	{'taxi_zerethportal3',"arrivefp"},
	{'taxi_zerethlocus',"arrivefp"},

	{'taximaybe',"Talk to {npc}\nTry to fly to {next_name}, {next_map}"},
	{'eternalgateway',"Activate the blue teleport pad\nTeleport to {next_name}"},
	{'taxidumb',"Arrive at your destination"},

	{'*_ship__ship_ship',"Ride the Boat to {next_port}"}, {'ship_ship',"arrive"},
	{'*_zeppelin__zeppelin_zeppelin',"Ride the Zeppelin to {next_port}"}, {'zeppelin_zeppelin',"arrive"},

	{'*_*__pandarope_*',"Click the Rope on the Ground\nto Swing to {next_map}"},

	{'*_portal__portal_*',"portalclick"}, {'portal*_*',"arrive"},
	{'*_portal__portalauto_*',"portalauto"},-- {'portalauto_X',"arrive"},
	{'*_portal__portalDungeonEnter_*',"portalauto"},-- {'portaldungeon_X',"arrive"},
	{'*_portal__portalDungeonExit_*',"Use the Portal to Leave {map}"},-- {'portaldungeon_X',"arrive"},
	{'portalauto',"Enter the Portal to {next_map}"},
	{'portaldungeon',"Enter the Portal to {next_map}"},
	{'portalclick',"Click the Portal to {next_map}"},
	{'*_teleportnamed',"Teleport to {next_name}"},
	--{'portal',"Click the Portal to {next_map}\nTeleport to {next_map}"},
	{'pinkportal',"Go Through the Pink Portal to {next_map}"},
	{'*_*__pinkportal_*',"Go Through the Pink Portal to {next_map}"},
	{'*_*__darkportal_*',"Enter the Green Portal\nTeleport to {next_map}"},
	{'darkportal',"Enter the Green Portal\nTeleport to {next_map}"},
	{'*_*__cityportal_*',"Enter the Circular Portal\nTeleport to {next_map}"},
	{'cityportal',"Enter the Circular Portal\nTeleport to {next_map}"},
	{'blackcat',"Talk to the Nightsaber Rider\nto Travel to {next_name}"},
	{'moltentele',"Talk to Lothos Riftwaker\n Teleport to {next_map}"},
	{'orbofcommand',"Click the Orb of Command\n Teleport to {next_map}"},
	{'dragonrider',"Talk to the Dragon\n Arrive at {next_map}"},
	{'*_*__transporter_*',"Enter the Transporter"},
	{'transporter_*',"Leave the Transporter"},
	{'argusportal',"Use the Lightforged Beacon\nto Teleport to {next_name}"},
	{'argushub',"Use the Navigaton Console\nto Teleport to {next_name}"},
	{'zerethportal',"Use the Ancient Translocator\nto Teleport to {next_name}"},
	{'zerethportal2',"Use the Ancient Translocator\nto Fly to {next_name}"},
	{'zerethportal3',"Use the Ancient Translocator\nto Fly to {next_name}"},
	{'zerethlocus',"Use Locus Shift\nand teleport to {next_name}"},
	{'ancientwaygate',"Use the Ancient Waygate\nto Teleport to {next_name}"},

	{'walk_border',"walk_map"}, {'border_border',"walk_map"},

	{'arrive',"Arrive at {map}"},
	{'arrivefp',"Arrive at {name}"},
	{'passfp',"Pass {name}, {map}"},

	{'*_tram__tram_tram',"tram"}, {'tram_tram',"arrive"},
	{'tram',"Ride the Tram to {next_map}"},

	{'deathgate',"Cast Death Gate to Acherus"},
	{'teleport',"Cast Teleport to {map}"},

	{'courtesymage',"Find a Mage to Teleport you to {map}\nNo Direct Path Available"},
	{'courtesywarlock',"No Path to {map} Available"},
	{'courtesy',"Use a Courtesy!"},

	{'teleport_ask',"Use a Mage Portal to {map}"},
	{'useitem',"Use {item}"},
	{'dhearth',"Use the Dalaran Hearthstone"},
	{'*_temp__mole_*',"{next_title}"}, -- not used; .title overrides this

	{'hearth',"Hearth to {name}"},
	{'ghearth',"Hearth to Your Garrison"},
	{'astralrecall',"Cast Astral Recall to Teleport to {name}"},

	{'*_door',"Click to Open the Door"},
	{'walk',"Go to {node}"},
	{'swim',"Swim to {node}"},
	{'walk_map',"Go to {bordermap}"},
	{'fly',"Go to {node}"},
	{'travel','walk'},
}


data.connection_templates = {
	['building'] = {
		['title_atob'] = "Enter the building",
		['title_btoa'] = "Leave the building",
	},
	['cave'] = {
		['title_atob'] = "Enter the cave",
		['title_btoa'] = "Leave the cave",
	},
	['mine'] = {
		['title_atob'] = "Enter the mine",
		['title_btoa'] = "Leave the mine",
	},
	['tunnel'] = {
		['title_atob'] = "Enter tunnel",
		['title_btoa'] = "Exit tunnel",
	},
	['longtunnel'] = {
		['title_atob'] = "Enter tunnel",
		['title_btoa'] = "Go through tunnel",
	},
	['barrow'] = {
		['title_atob'] = "Enter barrow",
		['title_btoa'] = "Exit barrow",
	},
	['tomb'] = {
		['title_atob'] = "Enter tomb",
		['title_btoa'] = "Exit tomb",
	},
	['pathup'] = {
		['title_atob'] = "Go up the path",
		['title_btoa'] = "Go down the path",
	},
}