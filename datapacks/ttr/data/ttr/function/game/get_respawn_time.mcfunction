#default
scoreboard players set #respawn_time value 60

#more respawn time if more players are knocking about
execute if score #player_count value matches ..3 run scoreboard players set #respawn_time value 60
execute if score #player_count value matches 4 run scoreboard players set #respawn_time value 60
execute if score #player_count value matches 5 run scoreboard players set #respawn_time value 70
execute if score #player_count value matches 6 run scoreboard players set #respawn_time value 80
execute if score #player_count value matches 7 run scoreboard players set #respawn_time value 100
execute if score #player_count value matches 8 run scoreboard players set #respawn_time value 120
execute if score #player_count value matches 9 run scoreboard players set #respawn_time value 140
execute if score #player_count value matches 10.. run scoreboard players set #respawn_time value 160

#more respawn time in ctf mode
execute if score #opt_gamemode value matches 6 if score #player_count value matches 11 run scoreboard players set #respawn_time value 175
execute if score #opt_gamemode value matches 6 if score #player_count value matches 12 run scoreboard players set #respawn_time value 190
execute if score #opt_gamemode value matches 6 if score #player_count value matches 13 run scoreboard players set #respawn_time value 205
execute if score #opt_gamemode value matches 6 if score #player_count value matches 14 run scoreboard players set #respawn_time value 220
execute if score #opt_gamemode value matches 6 if score #player_count value matches 15 run scoreboard players set #respawn_time value 235
execute if score #opt_gamemode value matches 6 if score #player_count value matches 16 run scoreboard players set #respawn_time value 250
execute if score #opt_gamemode value matches 6 if score #player_count value matches 17 run scoreboard players set #respawn_time value 265
execute if score #opt_gamemode value matches 6 if score #player_count value matches 18 run scoreboard players set #respawn_time value 280
execute if score #opt_gamemode value matches 6 if score #player_count value matches 19 run scoreboard players set #respawn_time value 295
execute if score #opt_gamemode value matches 6 if score #player_count value matches 20.. run scoreboard players set #respawn_time value 310

#add a flat 2 seconds onto the respawn time when in ctf mode
execute if score #opt_gamemode value matches 6 run scoreboard players add #respawn_time value 40

#special options that override everything
execute if score #opt_respawntime value matches 1 run scoreboard players set #respawn_time value 80
execute if score #opt_respawntime value matches 2 run scoreboard players set #respawn_time value 0
execute if score #opt_respawntime value matches 3 run scoreboard players set #respawn_time value 200