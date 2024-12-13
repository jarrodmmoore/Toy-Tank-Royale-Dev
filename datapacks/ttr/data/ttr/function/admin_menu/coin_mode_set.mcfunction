execute if entity @s[scores={optSelect=2901}] run scoreboard players set #opt_coinmode value 1
execute if entity @s[scores={optSelect=2902}] run scoreboard players set #opt_coinmode value 2
execute if entity @s[scores={optSelect=2903}] run scoreboard players set #opt_coinmode value 3
execute at @s run playsound block.note_block.hat master @s

#update display n stuff..
execute if score #opt_gamemode value matches 5 run function ttr:gamemodes/5_setup

#wait 3 seconds before we can declare a winner
scoreboard players set #objective_check_delay value 60

function ttr:admin_menu/_open