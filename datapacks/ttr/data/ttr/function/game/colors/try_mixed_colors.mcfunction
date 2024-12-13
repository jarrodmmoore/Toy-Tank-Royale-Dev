scoreboard players set #global value 1
scoreboard players add #global recursions 1

#cycle through all color combos
scoreboard players add #global color_1 7
execute if score #global color_1 matches 9.. run scoreboard players add #global color_2 1
execute if score #global color_2 matches 9.. run scoreboard players set #global color_2 1
execute if score #global color_1 matches 9.. run scoreboard players remove #global color_1 8
execute if score #global color_1 matches 9.. run scoreboard players remove #global color_1 8
execute if score #global color_1 matches 9.. run scoreboard players remove #global color_1 8

#can't match any other player's paint job!
execute as @a[tag=inControl,tag=!need_color] if score @s color_1 = #global color_1 if score @s color_2 = #global color_2 run scoreboard players set #global value 0
execute if score #ai_count value matches 1.. as @e[tag=ai,type=zombie,tag=!need_color] if score @s color_1 = #global color_1 if score @s color_2 = #global color_2 run scoreboard players set #global value 0

#can't have two of the same color on accident
execute if score #global color_1 = #global color_2 run scoreboard players set #global value 0

#nab a mixed color
execute if score #global value matches 1 run function ttr:game/colors/adopt_mixed_color

#up to 63 attempts
execute if entity @s[tag=need_color] if score #global recursions matches 63 run function ttr:game/colors/adopt_mixed_color
execute if entity @s[tag=need_color] if score #global recursions matches ..62 run function ttr:game/colors/try_mixed_colors