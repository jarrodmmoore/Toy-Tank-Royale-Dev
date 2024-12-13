scoreboard players set #invis_node_id value 9999999

function ttr:random/powerups/spawn_invis_node
execute if score #active_areas value matches 2.. run function ttr:random/powerups/spawn_invis_node
execute if score #active_areas value matches 3.. run function ttr:random/powerups/spawn_invis_node
execute if score #active_areas value matches 4.. run function ttr:random/powerups/spawn_invis_node
execute if score #active_areas value matches 5.. run function ttr:random/powerups/spawn_invis_node
execute if score #active_areas value matches 6.. run function ttr:random/powerups/spawn_invis_node
execute if score #active_areas value matches 7.. run function ttr:random/powerups/spawn_invis_node
execute if score #active_areas value matches 8.. run function ttr:random/powerups/spawn_invis_node
execute if score #active_areas value matches 9.. run function ttr:random/powerups/spawn_invis_node

scoreboard players set #powerup_time_invis value 100