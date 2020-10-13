script.on_init(function() On_Init() end)
script.on_configuration_changed(function() On_Init() end)

function On_Init()
	game.surfaces[1].always_day=true
    game.forces["player"].character_build_distance_bonus = 24
    game.forces["player"].character_item_drop_distance_bonus = 24
    game.forces["player"].character_reach_distance_bonus = 24
    game.forces["player"].character_resource_reach_distance_bonus = 24
    game.forces["player"].character_item_pickup_distance_bonus = 24
    game.forces["player"].character_loot_pickup_distance_bonus = 24
end

script.on_event(defines.events.on_player_created, function(event)
	local player = game.players[event.player_index]
	if not (player and player.valid) then return end
	player.force.research_queue_enabled = true

	player.force.technologies["stack-inserter"].researched = true
	player.force.technologies["inserter-capacity-bonus-1"].researched = true

	local box = game.surfaces[1].create_entity{name="steel-chest", position=player.position, force=player.force}
	box.insert({name="iron-plate", count=10})
	box.insert({name="copper-plate", count=10})
	box.insert({name="wood", count=10})

	box.insert({name="submachine-gun", count=1})
	box.insert({name="uranium-rounds-magazine", count=100})
	box.insert({name="power-armor-mk2", count=1})
	box.insert({name="battery-mk2-equipment", count=4})
	box.insert({name="fusion-reactor-equipment", count=2})
	box.insert({name="exoskeleton-equipment", count=2})
	box.insert({name="personal-roboport-mk2-equipment", count=1})
	box.insert({name="construction-robot", count=50})

	box.insert({name="small-electric-pole", count=50})
	box.insert({name="solar-panel", count=8})
	box.insert({name="accumulator", count=4})

	box.insert({name="roboport", count=10})
	box.insert({name="logistic-robot", count=200})
	box.insert({name="logistic-chest-requester", count=50})
	box.insert({name="logistic-chest-active-provider", count=50})
	box.insert({name="fast-transport-belt", count=50})
	box.insert({name="fast-underground-belt", count=50})
	box.insert({name="assembling-machine-1", count=50})

	box.insert({name="close-inserter", count=50})
	box.insert({name="k2-electric-mining-drill", count=12})	
	box.insert({name="k2-electric-furnace", count=12})
	box.insert({name="k2-warehouse", count=4})	

	if (game.active_mods["Factorissimo2"]) then
		if (player.force.technologies["factory-architecture-t1"].researched == false) then
			player.force.technologies["factory-architecture-t1"].researched = true
			player.force.technologies["factory-architecture-t1"].researched = true
			player.force.technologies["factory-architecture-t2"].researched = true
			player.force.technologies["factory-architecture-t3"].researched = true
			player.force.technologies["factory-connection-type-chest"].researched = true
			player.force.technologies["factory-interior-upgrade-lights"].researched = true
			player.force.technologies["factory-preview"].researched = true
			player.force.technologies["factory-recursion-t1"].researched = true
			player.force.technologies["factory-recursion-t2"].researched = true
			player.force.technologies["factory-connection-type-fluid"].researched = true
			player.force.technologies["factory-connection-type-circuit"].researched = true
			player.force.technologies["factory-interior-upgrade-display"].researched = true
			player.force.technologies["factory-requester-chest"].researched = true
		end
		box.insert({name="factory-1", count=4})	
		box.insert({name="factory-2", count=4})
		box.insert({name="factory-3", count=4})
	end

	if (game.active_mods["deadlock-beltboxes-loaders"]) then
		player.force.technologies["deadlock-stacking-1"].researched = true
		player.force.technologies["deadlock-stacking-2"].researched = true
		box.insert({name="fast-transport-belt-beltbox", count=50})	
	end
end)





