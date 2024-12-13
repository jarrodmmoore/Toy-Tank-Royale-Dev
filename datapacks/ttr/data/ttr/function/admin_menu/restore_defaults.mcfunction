#randomization
scoreboard objectives add randomize dummy
scoreboard players set #random_set value 0
execute as @e[type=marker,tag=randomize,sort=arbitrary] run function ttr:random/generate_scores

#kick players if on teams
execute if score #opt_teams value matches 1 as @a[tag=inControl] run function ttr:game/abandon_game
execute if score #opt_teams value matches 1 if entity @e[tag=ai,type=zombie] run function ttr:ai/_ai_remove_all

#default io gamemode
scoreboard players set #opt_gamemode value 1
scoreboard players set #opt_teams value 0
scoreboard players set #opt_teambalance value 1
scoreboard players set #opt_allowneutral value 0
scoreboard players set #opt_friendlyfire value 0
scoreboard players set #opt_hitpoints value 1
scoreboard players set #opt_selfdamage value 2
scoreboard players set #opt_scorelimit value 20
scoreboard players set #opt_coinlimit value 10
scoreboard players set #opt_coinmode value 1
scoreboard players set #opt_keeplimit value 0
scoreboard players set #opt_pointdecay value 4
scoreboard players set #opt_starttime value 20
scoreboard players set #opt_elim_time value 240
scoreboard players set #opt_suddendeath value 1
scoreboard players set #opt_permadeath value 0
scoreboard players set #opt_teamlayout value 0
scoreboard players set #opt_capturelimit value 3
scoreboard players set #opt_allow_coins value 1
tag @e[tag=gold_crown,type=armor_stand] remove priorityTarget
bossbar set tank_bbar players

#make sure scores exist
scoreboard players set #opt_playerlimit value 64
scoreboard players set #opt_arenasize value 0
scoreboard players set #opt_arenasize_mod value 0
scoreboard players set #opt_transformrate value 2
scoreboard players set #opt_itemspawn value 2
scoreboard players set #opt_startitems value 0
scoreboard players set #opt_respawntime value 0
scoreboard players set #opt_aicontext value 3
scoreboard players set #opt_aicount value 0
scoreboard players set #opt_aicount_mod value 4
scoreboard players set #opt_aidifficulty value 0
scoreboard players set #opt_aiteam value 1

scoreboard players set #level_gen_time value 400
scoreboard players add #medkit_cooldown value 0

execute at @s run playsound minecraft:entity.generic.burn master @s ~ ~ ~ 1 2

clear @a written_book
clear @a[tag=!inControl] yellow_dye

#scoreboard objectives setdisplay sidebar coins
scoreboard players set #show_sidebar value 1
scoreboard players set #sidebar_update value 99

execute if entity @s[type=player] run function ttr:admin_menu/_open