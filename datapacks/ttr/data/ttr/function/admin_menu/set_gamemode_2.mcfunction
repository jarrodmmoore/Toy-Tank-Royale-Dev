#kick players if on teams
execute if score #opt_teams value matches 1 as @a[tag=inControl] run function ttr:game/abandon_game
execute if score #opt_teams value matches 1 if entity @e[tag=ai] run function ttr:ai/_ai_remove_all

scoreboard players set #opt_gamemode value 2
execute at @s run playsound block.note_block.hat master @s

scoreboard players set #opt_teams value 0
scoreboard players set #opt_teamlayout value 0
scoreboard players set #opt_allow_coins value 0
scoreboard players set #opt_permadeath value 0

scoreboard players set #crown_keep_state value 0
tag @e[tag=gold_crown,type=armor_stand] remove priorityTarget
team join color_yellow @e[tag=gold_crown,type=armor_stand]

bossbar set tank_bbar players

function ttr:gamemodes/2_setup

scoreboard players reset * points
scoreboard players reset * aiPoints
scoreboard players set @a[tag=inControl] points 0
scoreboard players set @e[tag=ai] aiPoints 0
function ttr:game/reset_coin_objective

#scoreboard objectives setdisplay sidebar points
scoreboard players set #show_sidebar value 2
scoreboard players set #sidebar_update value 99

execute as @a[tag=inGame] if score @s shutUp matches ..0 run function ttr:control/inform_game_type

function ttr:admin_menu/_open_gamemode

clear @a written_book