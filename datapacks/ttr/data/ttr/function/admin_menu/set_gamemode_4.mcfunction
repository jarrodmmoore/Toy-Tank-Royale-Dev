#kick players if on teams
execute if score #opt_teams value matches 1 as @a[tag=inControl] run function ttr:game/abandon_game
execute if score #opt_teams value matches 1 if entity @e[tag=ai] run function ttr:ai/_ai_remove_all

scoreboard players set #opt_gamemode value 4
execute at @s run playsound block.note_block.hat master @s

scoreboard players set #opt_teams value 0
scoreboard players set #opt_teamlayout value 0
scoreboard players set #opt_allow_coins value 0
scoreboard players set #opt_permadeath value 0

tag @e[tag=gold_crown,type=armor_stand] remove priorityTarget

#scoreboard objectives setdisplay sidebar
scoreboard players set #show_sidebar value 0
scoreboard players set #sidebar_update value 99

function ttr:gamemodes/4_setup

execute as @a[tag=inGame] if score @s shutUp matches ..0 run function ttr:control/inform_game_type

function ttr:admin_menu/_open_gamemode

clear @a written_book