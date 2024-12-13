execute if score #opt_playerlimit value matches 64.. at @s run playsound block.note_block.bass master @s ~ ~ ~ 1 1.8
execute if score #opt_playerlimit value matches ..63 at @s run playsound block.note_block.hat master @s

scoreboard players add #opt_playerlimit value 1
execute if score #opt_playerlimit value matches 65.. run scoreboard players set #opt_playerlimit value 64

function ttr:admin_menu/_open