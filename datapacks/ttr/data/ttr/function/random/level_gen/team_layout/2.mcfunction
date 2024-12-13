scoreboard players set #area_1_active value 0
scoreboard players set #area_2_active value 0
scoreboard players set #area_3_active value 0
scoreboard players set #area_4_active value 1
scoreboard players set #area_5_active value 1
scoreboard players set #area_6_active value 1
scoreboard players set #area_7_active value 0
scoreboard players set #area_8_active value 0
scoreboard players set #area_9_active value 0

scoreboard players set #area_4_color value 1
scoreboard players set #area_6_color value 2

execute as @e[type=marker,tag=area_clone] at @s run function ttr:random/level_gen/clone_area
execute as @e[type=marker,tag=x_axis_wall] at @s run function ttr:random/level_gen/clone_x_wall
execute as @e[type=marker,tag=z_axis_wall] at @s run function ttr:random/level_gen/clone_z_wall

scoreboard players remove #level_gen_time value 1000