execute if score #opt_playerlimit value matches 1 at @s run playsound block.note_block.bass master @s ~ ~ ~ 1 1.8
execute if score #opt_playerlimit value matches 2.. at @s run playsound block.note_block.hat master @s

scoreboard players remove #opt_playerlimit value 1
execute if score #opt_playerlimit value matches ..0 run scoreboard players set #opt_playerlimit value 1

function ttr:admin_menu/_open