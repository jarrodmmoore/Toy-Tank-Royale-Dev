#kick players if NOT on teams
execute if score #opt_teams value matches 0 as @a[tag=inControl] run function ttr:game/abandon_game
execute if score #opt_teams value matches 0 if entity @e[tag=ai] run function ttr:ai/_ai_remove_all

scoreboard players set #opt_gamemode value 7
execute at @s run playsound block.note_block.hat master @s

scoreboard players set #opt_teams value 1
scoreboard players set #opt_teamlayout value 0
scoreboard players set #opt_allow_coins value 0
scoreboard players set #opt_permadeath value 0

tag @e[tag=gold_crown,type=armor_stand] remove priorityTarget

execute as @a[tag=inGame] if score @s shutUp matches ..0 run function ttr:control/inform_game_type

function ttr:gamemodes/7_setup

function ttr:admin_menu/_open_gamemode

clear @a written_book