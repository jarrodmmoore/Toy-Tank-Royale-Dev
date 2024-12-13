#kick players if on teams
execute if score #opt_teams value matches 1 as @a[tag=inControl] run function ttr:game/abandon_game
execute if score #opt_teams value matches 1 if entity @e[tag=ai] run function ttr:ai/_ai_remove_all

scoreboard players set #opt_gamemode value 1
execute at @s run playsound block.note_block.hat master @s

scoreboard players set #opt_teams value 0
scoreboard players set #opt_teamlayout value 0
scoreboard players set #opt_allow_coins value 1
scoreboard players set #opt_permadeath value 0

tag @e[tag=gold_crown,type=armor_stand] remove priorityTarget

scoreboard players reset * coins
scoreboard players reset * aiCoins
scoreboard players set @a[tag=inControl] coins 0
scoreboard players set @e[tag=ai] aiCoins 0
function ttr:game/reset_coin_objective

function ttr:gamemodes/1_setup

bossbar set tank_bbar players

#scoreboard objectives setdisplay sidebar coins
scoreboard players set #show_sidebar value 1
scoreboard players set #sidebar_update value 99

execute as @a[tag=inGame] if score @s shutUp matches ..0 run function ttr:control/inform_game_type

function ttr:admin_menu/_open_gamemode

clear @a written_book