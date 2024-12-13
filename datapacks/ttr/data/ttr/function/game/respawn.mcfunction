scoreboard players set @s deathTime 0
execute if score #opt_gamemode value matches 7 if score #infection_state value matches 2 unless entity @s[tag=infection_start] run tag @s add infect_on_respawn

#change arena size if needed?
scoreboard players set #no_grow value 1
function ttr:random/level_gen/check_if_changes_needed

#balance teams if needed
execute if score #opt_teams value matches 1 unless score #opt_gamemode value matches 7 if score #opt_teambalance value matches 2.. if entity @s[tag=blueTeam] if score #remember_team_advantage value matches ..-2 if score #blue_team_available value matches 0 run function ttr:game/switch_to_red
execute if score #opt_teams value matches 1 unless score #opt_gamemode value matches 7 if score #opt_teambalance value matches 2.. if entity @s[tag=redTeam] if score #remember_team_advantage value matches 2.. if score #red_team_available value matches 0 run function ttr:game/switch_to_blue
#infection mode...
execute if entity @s[tag=infection_start,tag=!infect_on_respawn] unless entity @s[tag=blueTeam] run function ttr:game/switch_to_blue_infect
execute if entity @s[tag=infect_on_respawn] unless entity @s[tag=redTeam] run function ttr:game/switch_to_red_infect
tag @s remove infection_start
tag @s remove infect_on_respawn

#find a nice place to spawn
execute as @e[tag=my_char] at @s run function ttr:random/find_spawnpoint
tag @e[tag=my_char] remove player_ded

kill @e[limit=1,tag=my_model,type=armor_stand]
kill @e[limit=1,tag=my_model_2,type=armor_stand]

#back to max hitpoints
scoreboard players add @s hitpoints 0
scoreboard players operation @s hitpoints = #opt_hitpoints value
scoreboard players set @s[scores={hitpoints=..0}] hitpoints 1

scoreboard players set @s shootCooldown 20
execute if score #opt_gamemode value matches 6 run scoreboard players set @s shootCooldown 40
scoreboard players set @e[limit=1,sort=nearest,tag=my_char] invulTime 40
scoreboard players set @s afkTime 0
scoreboard players set @s burstStreak 0

scoreboard players set @s tankDash 0

scoreboard players set @s hasItem2 0
scoreboard players set @s hasItem3 0
scoreboard players set @s hasItem4 0
scoreboard players set @s hasItem5 0
scoreboard players set @s hasItem6 0
scoreboard players set @s hasItem7 0
scoreboard players set @s hasItem8 0

execute if score #opt_startitems value matches 1.. run function ttr:game/give_starting_items

scoreboard players set @s vel_multiplier 170
scoreboard players set @s cooldown_mult 100
tag @s remove extra_life

scoreboard players set @s respawnTime 0

effect clear @s speed
effect clear @s haste
effect clear @s absorption
effect clear @s regeneration

tag @s[tag=force_respawn] remove force_respawn