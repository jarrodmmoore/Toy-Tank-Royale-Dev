execute at @s run playsound block.note_block.hat master @s

execute if entity @s[scores={optSelect=3201}] run scoreboard players add #opt_capturelimit value 1
execute if entity @s[scores={optSelect=3202}] run scoreboard players add #opt_capturelimit value 10

#update display n stuff..
execute if score #opt_gamemode value matches 6 run function ttr:gamemodes/6_setup

#wait 3 seconds before we can declare a winner
scoreboard players set #objective_check_delay value 60

function ttr:admin_menu/_open