execute if entity @s[scores={optSelect=3801}] run scoreboard players set #opt_selfdamage value 1
execute if entity @s[scores={optSelect=3802}] run scoreboard players set #opt_selfdamage value 2
execute if entity @s[scores={optSelect=3803}] run scoreboard players set #opt_selfdamage value 3
execute at @s run playsound block.note_block.hat master @s

function ttr:admin_menu/_open