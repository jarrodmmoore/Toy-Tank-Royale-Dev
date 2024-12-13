execute at @s run playsound block.note_block.hat master @s

execute if entity @s[scores={optSelect=2601}] run scoreboard players add #opt_scorelimit value 1
execute if entity @s[scores={optSelect=2602}] run scoreboard players add #opt_scorelimit value 10

#update display n stuff..
execute if score #opt_gamemode value matches 3 run function ttr:gamemodes/3_setup

#wait 3 seconds before we can declare a winner
scoreboard players set #objective_check_delay value 60

function ttr:admin_menu/_open