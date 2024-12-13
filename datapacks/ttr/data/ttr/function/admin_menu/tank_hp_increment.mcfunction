execute at @s run playsound block.note_block.hat master @s

scoreboard players add #opt_hitpoints value 1
scoreboard players add #medkit_cooldown value 0

function ttr:admin_menu/_open