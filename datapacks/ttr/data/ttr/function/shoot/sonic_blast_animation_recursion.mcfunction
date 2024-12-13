scoreboard players remove #recursions value 1

execute if entity @s[scores={sonicBlastRing=1}] run particle dust{color:[0.0,0.0,1.0],scale:2} ^ ^ ^1 0 0 0 0 1
execute if entity @s[scores={sonicBlastRing=2}] run particle dust{color:[0.2,0.2,1.0],scale:1.7} ^ ^ ^2 0 0 0 0 1
execute if entity @s[scores={sonicBlastRing=3}] run particle dust{color:[0.4,0.4,1.0],scale:1.4} ^ ^ ^3 0 0 0 0 1
execute if entity @s[scores={sonicBlastRing=4}] run particle dust{color:[0.6,0.6,1.0],scale:1.1} ^ ^ ^4 0 0 0 0 1
execute if entity @s[scores={sonicBlastRing=5}] run particle dust{color:[0.8,0.8,1.0],scale:0.8} ^ ^ ^5 0 0 0 0 1

execute if score #recursions value matches 1.. rotated ~10 ~ run function ttr:shoot/sonic_blast_animation_recursion