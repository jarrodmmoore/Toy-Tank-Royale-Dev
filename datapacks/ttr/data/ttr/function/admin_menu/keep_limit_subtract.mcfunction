execute if score #opt_keeplimit value matches ..0 at @s run playsound block.note_block.bass master @s ~ ~ ~ 1 1.8
execute if score #opt_keeplimit value matches 1.. at @s run playsound block.note_block.hat master @s

execute if entity @s[scores={optSelect=2403}] run scoreboard players remove #opt_keeplimit value 1
execute if entity @s[scores={optSelect=2404}] run scoreboard players remove #opt_keeplimit value 10

execute if score #opt_keeplimit value matches ..-1 run scoreboard players set #opt_keeplimit value 0

#update display n stuff..
execute if score #opt_gamemode value matches 2 run function ttr:gamemodes/2_setup

#wait 3 seconds before we can declare a winner
scoreboard players set #objective_check_delay value 60

function ttr:admin_menu/_open