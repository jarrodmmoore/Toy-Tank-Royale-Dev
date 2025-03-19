#no crown
execute as @e[limit=1,tag=gold_crown,type=armor_stand] at @s run tp @s 8 20 8 0 0

#no coins
kill @e[type=armor_stand,tag=coin]

#no arena transforming
scoreboard players set #level_gen_time value 300

#force players to respawn when we're ready
execute if score #red_player_count value matches 1.. if score #blue_player_count value matches 1.. if score #ready_to_play_ctf value matches ..0 run function ttr:gamemodes/6_soft_restart

#ready to play?
scoreboard players set #ready_to_play_ctf value 0
execute if score #red_player_count value matches 1.. if score #blue_player_count value matches 1.. run scoreboard players set #ready_to_play_ctf value 1
execute if score #ready_to_play_ctf value matches 0 run bossbar set tank_bbar players @a
execute if score #ready_to_play_ctf value matches 0 run bossbar set tank_bbar name ["",{translate:"ttr.game_starting_soon",bold:true}]
execute if score #ready_to_play_ctf value matches 0 store result bossbar tank_bbar value run scoreboard players get #opt_capturelimit value

#flags
execute if score #ready_to_play_ctf value matches 1.. unless entity @e[type=armor_stand,tag=red_flag] run function ttr:gamemodes/6_spawn_red_flag
execute if score #ready_to_play_ctf value matches 1.. unless entity @e[type=armor_stand,tag=blue_flag] run function ttr:gamemodes/6_spawn_blue_flag
execute if score #ready_to_play_ctf value matches 1.. as @e[limit=1,type=armor_stand,tag=red_flag] at @s run function ttr:gamemodes/6_red_flag
execute if score #ready_to_play_ctf value matches 1.. as @e[limit=1,type=armor_stand,tag=blue_flag] at @s run function ttr:gamemodes/6_blue_flag
execute if score #ai_count value matches 1.. run scoreboard players remove @e[tag=ai,type=zombie] aiCarryFlag 1

#no players in-game and points exist? reset
execute if score #ready_to_play_ctf value matches ..0 if score #red_captures value matches 1.. run function ttr:gamemodes/6_setup
execute if score #ready_to_play_ctf value matches ..0 if score #blue_captures value matches 1.. run function ttr:gamemodes/6_setup

#keep sidebar updated
scoreboard players operation § teamDisplay = #red_captures value
scoreboard players operation §§ teamDisplay = #blue_captures value

#capture limit
execute if score #ready_to_play_ctf value matches 1 if score #opt_capturelimit value matches 1.. run function ttr:gamemodes/6_capturelimit
execute if score #ready_to_play_ctf value matches 1 if score #opt_capturelimit value matches ..0 run bossbar set tank_bbar players