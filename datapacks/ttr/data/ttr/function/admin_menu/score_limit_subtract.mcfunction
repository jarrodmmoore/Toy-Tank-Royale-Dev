execute if score #opt_scorelimit value matches ..0 at @s run playsound block.note_block.bass master @s ~ ~ ~ 1 1.8
execute if score #opt_scorelimit value matches 1.. at @s run playsound block.note_block.hat master @s

execute if entity @s[scores={optSelect=2603}] run scoreboard players remove #opt_scorelimit value 1
execute if entity @s[scores={optSelect=2604}] run scoreboard players remove #opt_scorelimit value 10

execute if score #opt_scorelimit value matches ..-1 run scoreboard players set #opt_scorelimit value 0

#update display n stuff..
execute if score #opt_gamemode value matches 3 run function ttr:gamemodes/3_setup

#wait 3 seconds before we can declare a winner
scoreboard players set #objective_check_delay value 60

function ttr:admin_menu/_open