execute if score #opt_coinlimit value matches ..10 at @s run playsound block.note_block.bass master @s ~ ~ ~ 1 1.8
execute if score #opt_coinlimit value matches 11.. at @s run playsound block.note_block.hat master @s

execute if entity @s[scores={optSelect=2303}] run scoreboard players remove #opt_coinlimit value 1
execute if entity @s[scores={optSelect=2304}] run scoreboard players remove #opt_coinlimit value 10

execute if score #opt_coinlimit value matches ..9 run scoreboard players set #opt_coinlimit value 10

#update display n stuff..
execute if score #opt_gamemode value matches 1 run function ttr:gamemodes/1_setup

#update display n stuff..
execute if score #opt_gamemode value matches 5 run function ttr:gamemodes/5_setup

#wait 3 seconds before we can declare a winner
scoreboard players set #objective_check_delay value 60

function ttr:admin_menu/_open