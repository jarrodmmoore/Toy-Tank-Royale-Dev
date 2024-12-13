scoreboard players set #recursions value 36
execute at @s positioned ~ ~.5 ~ rotated ~ 0 run function ttr:shoot/sonic_blast_animation_recursion

scoreboard players add @s sonicBlastRing 1
execute if entity @s[scores={sonicBlastRing=6..}] run scoreboard players reset @s sonicBlastRing