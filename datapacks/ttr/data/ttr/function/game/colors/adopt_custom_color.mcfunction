scoreboard players operation @s color_1 = #want_color_1 value
scoreboard players operation @s color_2 = #want_color_2 value

tag @s remove need_color
tag @s add no_set

#anyone matching us is forced to change color immediately
execute as @a[tag=inControl,tag=!no_set] if score @s color_1 = #want_color_1 value if score @s color_2 = #want_color_2 value run function ttr:game/colors/get_colors
execute if score #ai_count value matches 1.. as @e[tag=ai,type=zombie,tag=!no_set] if score @s color_1 = #want_color_1 value if score @s color_2 = #want_color_2 value run function ttr:game/colors/get_colors

tag @s remove no_set