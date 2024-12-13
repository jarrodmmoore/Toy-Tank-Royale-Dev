execute if entity @s[scores={optSelect=2501}] run scoreboard players set #opt_pointdecay value 1
execute if entity @s[scores={optSelect=2502}] run scoreboard players set #opt_pointdecay value 2
execute if entity @s[scores={optSelect=2503}] run scoreboard players set #opt_pointdecay value 3
execute if entity @s[scores={optSelect=2504}] run scoreboard players set #opt_pointdecay value 4
execute at @s run playsound block.note_block.hat master @s

function ttr:admin_menu/_open