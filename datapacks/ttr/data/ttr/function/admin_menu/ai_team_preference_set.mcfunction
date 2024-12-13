execute at @s run playsound block.note_block.hat master @s

execute if entity @s[scores={optSelect=3302}] run scoreboard players add #opt_aiteam value 1
execute if entity @s[scores={optSelect=3302}] if score #opt_aiteam value matches 5.. run scoreboard players set #opt_aiteam value 0

execute if entity @s[scores={optSelect=3301}] run scoreboard players remove #opt_aiteam value 1
execute if entity @s[scores={optSelect=3301}] if score #opt_aiteam value matches ..-1 run scoreboard players set #opt_aiteam value 4

function ttr:admin_menu/_open_advanced