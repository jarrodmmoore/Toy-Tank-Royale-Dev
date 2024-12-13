execute at @s run playsound block.note_block.hat master @s

execute if entity @s[scores={optSelect=2401}] run scoreboard players add #opt_keeplimit value 1
execute if entity @s[scores={optSelect=2402}] run scoreboard players add #opt_keeplimit value 10

#update display n stuff..
execute if score #opt_gamemode value matches 2 run function ttr:gamemodes/2_setup

#wait 3 seconds before we can declare a winner
scoreboard players set #objective_check_delay value 60

function ttr:admin_menu/_open