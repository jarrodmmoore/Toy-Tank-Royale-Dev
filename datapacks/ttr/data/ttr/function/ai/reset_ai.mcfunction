tag @s remove player_ded
execute if score #opt_gamemode value matches 7 if score #infection_state value matches 2 unless entity @s[tag=infection_start] run tag @s add infect_on_respawn

#random chance of going in hard on the objective
tag @s[tag=ai_want_objective] remove ai_want_objective
scoreboard players operation #objective_roll value = @e[limit=1,sort=random,type=marker,tag=randomize,scores={randomize=1..4}] randomize
execute if score #objective_roll value matches 4.. run tag @s add ai_want_objective

#change arena size if needed?
execute if entity @s[tag=already_lived] run scoreboard players set #no_grow value 1
function ttr:random/level_gen/check_if_changes_needed

#switch team if needed (in teams mode w/ certain settings)
execute if entity @s[tag=blueTeam] if score #opt_teams value matches 1 unless score #opt_gamemode value matches 7 if score #opt_aiteam value matches 0 if score #remember_team_advantage value matches ..-2 run function ttr:ai/switch_to_red
execute if entity @s[tag=redTeam] if score #opt_teams value matches 1 unless score #opt_gamemode value matches 7 if score #opt_aiteam value matches 0 if score #remember_team_advantage value matches 2.. run function ttr:ai/switch_to_blue
execute if entity @s[tag=blueTeam] if score #opt_teams value matches 1 unless score #opt_gamemode value matches 7 if score #opt_teambalance value matches 1.. if score #opt_aiteam value matches 1 if score #remember_team_advantage value matches ..-2 run function ttr:ai/switch_to_red
execute if entity @s[tag=redTeam] if score #opt_teams value matches 1 unless score #opt_gamemode value matches 7 if score #opt_teambalance value matches 1.. if score #opt_aiteam value matches 1 if score #remember_team_advantage value matches 2.. run function ttr:ai/switch_to_blue
execute if entity @s[tag=blueTeam] if score #opt_teams value matches 1 unless score #opt_gamemode value matches 7 if score #opt_teambalance value matches 0 if score #opt_aiteam value matches 1 if score #ai_team_difference value matches ..-1 run function ttr:ai/switch_to_red
execute if entity @s[tag=redTeam] if score #opt_teams value matches 1 unless score #opt_gamemode value matches 7 if score #opt_teambalance value matches 0 if score #opt_aiteam value matches 1 if score #ai_team_difference value matches 1.. run function ttr:ai/switch_to_blue
#infection mode...
execute if entity @s[tag=infection_start,tag=!infect_on_respawn] unless entity @s[tag=blueTeam] run function ttr:ai/switch_to_blue_infect
execute if entity @s[tag=infect_on_respawn] unless entity @s[tag=redTeam] run function ttr:ai/switch_to_red_infect
tag @s remove infection_start

tag @s remove infect_on_respawn

#find a nice place to spawn
function ttr:random/find_spawnpoint

#back to max hitpoints
scoreboard players add @s hitpoints 0
scoreboard players operation @s hitpoints = #opt_hitpoints value
scoreboard players set @s[scores={hitpoints=..0}] hitpoints 1

kill @e[limit=1,tag=my_model,type=armor_stand]
kill @e[limit=1,tag=my_model_2,type=armor_stand]

scoreboard players set @s aiLogic 0
scoreboard players set @s aiTargetDir 0
scoreboard players set @s aiTargetDir2 0
scoreboard players set @s aiLookID -1

scoreboard players set @s shootCooldown 20
execute if score #opt_gamemode value matches 6 run scoreboard players set @s shootCooldown 40
scoreboard players set @s invulTime 40
scoreboard players set @s afkTime 0
scoreboard players set @s aiCarryFlag 0
scoreboard players set @s deathTime 0
scoreboard players set @s burstStreak 0

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

tag @s remove ai_need_reset
tag @s add already_lived

#update stored colors
scoreboard players operation #color1 value = @s color_1
scoreboard players operation #color2 value = @s color_2