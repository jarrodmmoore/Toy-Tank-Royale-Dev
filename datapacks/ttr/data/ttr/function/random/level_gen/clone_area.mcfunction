#get a random value corresponding to a level (0 to 100)
scoreboard players operation @s math = @e[limit=1,sort=random,tag=randomize,scores={randomize=1..10}] randomize
scoreboard players operation @s math2 = @e[limit=1,sort=random,tag=randomize,scores={randomize=1..10}] randomize

scoreboard players set #10 value 10
scoreboard players operation @s math *= #10 value
scoreboard players operation @s math += @s math2

scoreboard players remove @s math 10

#debug
execute if entity @a[tag=force_level_value] run scoreboard players operation @s math = @a[limit=1,tag=force_level_value] forceLevelValue

#clone the empty slot if we're empty
execute if entity @s[tag=a1] if score #area_1_active value matches 0 run scoreboard players set @s math 0
execute if entity @s[tag=a2] if score #area_2_active value matches 0 run scoreboard players set @s math 0
execute if entity @s[tag=a3] if score #area_3_active value matches 0 run scoreboard players set @s math 0
execute if entity @s[tag=a4] if score #area_4_active value matches 0 run scoreboard players set @s math 0
execute if entity @s[tag=a5] if score #area_5_active value matches 0 run scoreboard players set @s math 0
execute if entity @s[tag=a6] if score #area_6_active value matches 0 run scoreboard players set @s math 0
execute if entity @s[tag=a7] if score #area_7_active value matches 0 run scoreboard players set @s math 0
execute if entity @s[tag=a8] if score #area_8_active value matches 0 run scoreboard players set @s math 0
execute if entity @s[tag=a9] if score #area_9_active value matches 0 run scoreboard players set @s math 0

#now CLONE it
execute if entity @s[scores={math=0}] run clone -86 145 -113 -66 148 -93 ~ ~ ~
execute if entity @s[scores={math=1..10}] run function ttr:random/level_gen/clone_area_1_10
execute if entity @s[scores={math=11..20}] run function ttr:random/level_gen/clone_area_11_20
execute if entity @s[scores={math=21..30}] run function ttr:random/level_gen/clone_area_21_30
execute if entity @s[scores={math=31..40}] run function ttr:random/level_gen/clone_area_31_40
execute if entity @s[scores={math=41..50}] run function ttr:random/level_gen/clone_area_41_50
execute if entity @s[scores={math=51..60}] run function ttr:random/level_gen/clone_area_51_60
execute if entity @s[scores={math=61..70}] run function ttr:random/level_gen/clone_area_61_70
execute if entity @s[scores={math=71..80}] run function ttr:random/level_gen/clone_area_71_80
execute if entity @s[scores={math=81..90}] run function ttr:random/level_gen/clone_area_81_90
execute if entity @s[scores={math=91..100}] run function ttr:random/level_gen/clone_area_91_100

#team colors
execute if entity @s[tag=a1] if score #area_1_color value matches 1.. run function ttr:random/level_gen/clone_area_colorize
execute if entity @s[tag=a2] if score #area_2_color value matches 1.. run function ttr:random/level_gen/clone_area_colorize
execute if entity @s[tag=a3] if score #area_3_color value matches 1.. run function ttr:random/level_gen/clone_area_colorize
execute if entity @s[tag=a4] if score #area_4_color value matches 1.. run function ttr:random/level_gen/clone_area_colorize
execute if entity @s[tag=a5] if score #area_5_color value matches 1.. run function ttr:random/level_gen/clone_area_colorize
execute if entity @s[tag=a6] if score #area_6_color value matches 1.. run function ttr:random/level_gen/clone_area_colorize
execute if entity @s[tag=a7] if score #area_7_color value matches 1.. run function ttr:random/level_gen/clone_area_colorize
execute if entity @s[tag=a8] if score #area_8_color value matches 1.. run function ttr:random/level_gen/clone_area_colorize
execute if entity @s[tag=a9] if score #area_9_color value matches 1.. run function ttr:random/level_gen/clone_area_colorize

#clear the area underneath for bot navigation
fill ~ ~-6 ~ ~20 ~-2 ~20 black_concrete
scoreboard players set @s botNavProgress 0
execute if entity @s[tag=a1] run function ttr:random/level_gen/clone_area_nav_a1
execute if entity @s[tag=a2] run function ttr:random/level_gen/clone_area_nav_a2
execute if entity @s[tag=a3] run function ttr:random/level_gen/clone_area_nav_a3
execute if entity @s[tag=a4] run function ttr:random/level_gen/clone_area_nav_a4
execute if entity @s[tag=a5] run function ttr:random/level_gen/clone_area_nav_a5
execute if entity @s[tag=a6] run function ttr:random/level_gen/clone_area_nav_a6
execute if entity @s[tag=a7] run function ttr:random/level_gen/clone_area_nav_a7
execute if entity @s[tag=a8] run function ttr:random/level_gen/clone_area_nav_a8
execute if entity @s[tag=a9] run function ttr:random/level_gen/clone_area_nav_a9