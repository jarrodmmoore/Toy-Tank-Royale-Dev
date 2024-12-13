execute at @s run playsound block.note_block.hat master @s

execute if entity @s[scores={optSelect=2701}] run scoreboard players add #opt_elim_time value 10
execute if entity @s[scores={optSelect=2702}] run scoreboard players add #opt_elim_time value 60

#update display n stuff..
execute if score #opt_gamemode value matches 4 run function ttr:gamemodes/4_setup

function ttr:admin_menu/_open