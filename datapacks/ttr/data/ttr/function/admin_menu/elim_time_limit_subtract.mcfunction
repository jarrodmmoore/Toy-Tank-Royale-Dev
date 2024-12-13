execute if score #opt_elim_time value matches ..0 at @s run playsound block.note_block.bass master @s ~ ~ ~ 1 1.8
execute if score #opt_elim_time value matches 1.. at @s run playsound block.note_block.hat master @s

execute if entity @s[scores={optSelect=2703}] run scoreboard players remove #opt_elim_time value 10
execute if entity @s[scores={optSelect=2704}] run scoreboard players remove #opt_elim_time value 60

execute if score #opt_elim_time value matches ..-1 run scoreboard players set #opt_elim_time value 0

#update display n stuff..
execute if score #opt_gamemode value matches 4 run function ttr:gamemodes/4_setup

function ttr:admin_menu/_open