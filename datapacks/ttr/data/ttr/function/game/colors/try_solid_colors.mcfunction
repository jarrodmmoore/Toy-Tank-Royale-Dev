scoreboard players set #global value 1
scoreboard players add #global recursions 1

#cycle through all colors
scoreboard players add #global color_solid 1
execute if score #global color_solid matches 9.. run scoreboard players set #global color_solid 1

#can't match any other player's paint job!
execute as @a[tag=inControl,tag=!need_color] if score @s color_1 = #global color_solid if score @s color_2 = #global color_solid run scoreboard players set #global value 0
execute if score #ai_count value matches 1.. as @e[tag=ai,type=zombie,tag=!need_color] if score @s color_1 = #global color_solid if score @s color_2 = #global color_solid run scoreboard players set #global value 0

#nab a global color
execute if score #global value matches 1 run function ttr:game/colors/adopt_global_color

#up to 8 attempts
execute if entity @s[tag=need_color] if score #global recursions matches ..7 run function ttr:game/colors/try_solid_colors