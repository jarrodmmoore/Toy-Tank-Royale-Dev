scoreboard players set #area_1_sp_nav value 0
scoreboard players set #area_2_sp_nav value 0
scoreboard players set #area_3_sp_nav value 0
scoreboard players set #area_4_sp_nav value 0
scoreboard players set #area_5_sp_nav value 0
scoreboard players set #area_6_sp_nav value 0
scoreboard players set #area_7_sp_nav value 0
scoreboard players set #area_8_sp_nav value 0
scoreboard players set #area_9_sp_nav value 0

tag @e[type=zombie,tag=sp_nav_source] remove sp_nav_source

#sp_nav_mode=1 -- go for coins or the crowned player
#sp_nav_mode=2 -- go for crowned player only
#sp_nav_mode=3 -- go for players
#sp_nav_mode=4 -- go for the flag
scoreboard players set #sp_nav_mode value 3
execute if score #opt_gamemode value matches 1 run scoreboard players set #sp_nav_mode value 1
execute if score #opt_gamemode value matches 2 run scoreboard players set #sp_nav_mode value 2
execute if score #opt_gamemode value matches 3 run scoreboard players set #sp_nav_mode value 3
execute if score #opt_gamemode value matches 4 run scoreboard players set #sp_nav_mode value 3
execute if score #opt_gamemode value matches 5 run scoreboard players set #sp_nav_mode value 1
execute if score #opt_gamemode value matches 6 run scoreboard players set #sp_nav_mode value 4
execute if score #opt_gamemode value matches 7 run scoreboard players set #sp_nav_mode value 3
execute if score #opt_gamemode value matches 8 run scoreboard players set #sp_nav_mode value 3

execute if score #sp_nav_mode value matches 1 run function ttr:ai/nav_generate/special_start_1
execute if score #sp_nav_mode value matches 2 run function ttr:ai/nav_generate/special_start_2
execute if score #sp_nav_mode value matches 3 run function ttr:ai/nav_generate/special_start_3
execute if score #sp_nav_mode value matches 4 run function ttr:ai/nav_generate/special_start_4

scoreboard players set #special_nav_generate value 200