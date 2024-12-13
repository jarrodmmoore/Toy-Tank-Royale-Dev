execute if entity @s[scores={optSelect=2801}] run scoreboard players set #opt_suddendeath value 1
execute if entity @s[scores={optSelect=2802}] run scoreboard players set #opt_suddendeath value 0
execute at @s run playsound block.note_block.hat master @s

function ttr:admin_menu/_open