#if a square only has 1 connection, no level touching that square can be disabled
#(man, i really wish we had 'or' statements)

scoreboard players set #area_1_removable value 1
scoreboard players set #area_2_removable value 1
scoreboard players set #area_3_removable value 1
scoreboard players set #area_4_removable value 1
scoreboard players set #area_5_removable value 1
scoreboard players set #area_6_removable value 1
scoreboard players set #area_7_removable value 1
scoreboard players set #area_8_removable value 1
scoreboard players set #area_9_removable value 1

#count number of connections each square has
scoreboard players set #area_1_connections value 0
scoreboard players set #area_2_connections value 0
scoreboard players set #area_3_connections value 0
scoreboard players set #area_4_connections value 0
scoreboard players set #area_5_connections value 0
scoreboard players set #area_6_connections value 0
scoreboard players set #area_7_connections value 0
scoreboard players set #area_8_connections value 0
scoreboard players set #area_9_connections value 0
execute if score #area_1_active value matches 1 run scoreboard players add #area_2_connections value 1
execute if score #area_1_active value matches 1 run scoreboard players add #area_4_connections value 1
execute if score #area_2_active value matches 1 run scoreboard players add #area_1_connections value 1
execute if score #area_2_active value matches 1 run scoreboard players add #area_3_connections value 1
execute if score #area_2_active value matches 1 run scoreboard players add #area_5_connections value 1
execute if score #area_3_active value matches 1 run scoreboard players add #area_2_connections value 1
execute if score #area_3_active value matches 1 run scoreboard players add #area_6_connections value 1
execute if score #area_4_active value matches 1 run scoreboard players add #area_1_connections value 1
execute if score #area_4_active value matches 1 run scoreboard players add #area_5_connections value 1
execute if score #area_4_active value matches 1 run scoreboard players add #area_7_connections value 1
execute if score #area_5_active value matches 1 run scoreboard players add #area_2_connections value 1
execute if score #area_5_active value matches 1 run scoreboard players add #area_4_connections value 1
execute if score #area_5_active value matches 1 run scoreboard players add #area_6_connections value 1
execute if score #area_5_active value matches 1 run scoreboard players add #area_8_connections value 1
execute if score #area_6_active value matches 1 run scoreboard players add #area_3_connections value 1
execute if score #area_6_active value matches 1 run scoreboard players add #area_5_connections value 1
execute if score #area_6_active value matches 1 run scoreboard players add #area_9_connections value 1
execute if score #area_7_active value matches 1 run scoreboard players add #area_4_connections value 1
execute if score #area_7_active value matches 1 run scoreboard players add #area_8_connections value 1
execute if score #area_8_active value matches 1 run scoreboard players add #area_7_connections value 1
execute if score #area_8_active value matches 1 run scoreboard players add #area_5_connections value 1
execute if score #area_8_active value matches 1 run scoreboard players add #area_9_connections value 1
execute if score #area_9_active value matches 1 run scoreboard players add #area_6_connections value 1
execute if score #area_9_active value matches 1 run scoreboard players add #area_8_connections value 1

#mark squares that can't be removed
execute if score #active_areas value matches 3.. run function ttr:random/level_gen/mark_unremovable_squares

#pick a random square to KILL
tag @e[type=marker,tag=pick_viable_2] remove pick_viable_2
execute if score #area_1_active value matches 1 if score #area_1_removable value matches 1 if score #area_1 value matches ..0 run tag @e[type=marker,tag=randomize,scores={randomize=1}] add pick_viable_2
execute if score #area_2_active value matches 1 if score #area_2_removable value matches 1 if score #area_2 value matches ..0 run tag @e[type=marker,tag=randomize,scores={randomize=2}] add pick_viable_2
execute if score #area_3_active value matches 1 if score #area_3_removable value matches 1 if score #area_3 value matches ..0 run tag @e[type=marker,tag=randomize,scores={randomize=3}] add pick_viable_2
execute if score #area_4_active value matches 1 if score #area_4_removable value matches 1 if score #area_4 value matches ..0 run tag @e[type=marker,tag=randomize,scores={randomize=4}] add pick_viable_2
execute if score #area_5_active value matches 1 if score #area_5_removable value matches 1 if score #area_5 value matches ..0 run tag @e[type=marker,tag=randomize,scores={randomize=5}] add pick_viable_2
execute if score #area_6_active value matches 1 if score #area_6_removable value matches 1 if score #area_6 value matches ..0 run tag @e[type=marker,tag=randomize,scores={randomize=6}] add pick_viable_2
execute if score #area_7_active value matches 1 if score #area_7_removable value matches 1 if score #area_7 value matches ..0 run tag @e[type=marker,tag=randomize,scores={randomize=7}] add pick_viable_2
execute if score #area_8_active value matches 1 if score #area_8_removable value matches 1 if score #area_8 value matches ..0 run tag @e[type=marker,tag=randomize,scores={randomize=8}] add pick_viable_2
execute if score #area_9_active value matches 1 if score #area_9_removable value matches 1 if score #area_9 value matches ..0 run tag @e[type=marker,tag=randomize,scores={randomize=9}] add pick_viable_2

#pwn the libs!!
scoreboard players set #pick_option_2 value 0
scoreboard players operation #pick_option_2 value = @e[limit=1,sort=random,type=marker,tag=randomize,tag=pick_viable_2] randomize

#DESTROY ITS ASS WITH FACTS & LOGIC
execute if score #pick_option_2 value matches 1 run scoreboard players set #area_1_active value 0
execute if score #pick_option_2 value matches 1 as @e[type=marker,tag=a1] at @s run function ttr:random/level_gen/clone_area
execute if score #pick_option_2 value matches 1 as @e[type=marker,tag=w1] at @s run function ttr:random/level_gen/clone_wall
execute if score #pick_option_2 value matches 1 as @e[type=marker,tag=w3] at @s run function ttr:random/level_gen/clone_wall

execute if score #pick_option_2 value matches 2 run scoreboard players set #area_2_active value 0
execute if score #pick_option_2 value matches 2 as @e[type=marker,tag=a2] at @s run function ttr:random/level_gen/clone_area
execute if score #pick_option_2 value matches 2 as @e[type=marker,tag=w1] at @s run function ttr:random/level_gen/clone_wall
execute if score #pick_option_2 value matches 2 as @e[type=marker,tag=w2] at @s run function ttr:random/level_gen/clone_wall
execute if score #pick_option_2 value matches 2 as @e[type=marker,tag=w4] at @s run function ttr:random/level_gen/clone_wall

execute if score #pick_option_2 value matches 3 run scoreboard players set #area_3_active value 0
execute if score #pick_option_2 value matches 3 as @e[type=marker,tag=a3] at @s run function ttr:random/level_gen/clone_area
execute if score #pick_option_2 value matches 3 as @e[type=marker,tag=w2] at @s run function ttr:random/level_gen/clone_wall
execute if score #pick_option_2 value matches 3 as @e[type=marker,tag=w5] at @s run function ttr:random/level_gen/clone_wall

execute if score #pick_option_2 value matches 4 run scoreboard players set #area_4_active value 0
execute if score #pick_option_2 value matches 4 as @e[type=marker,tag=a4] at @s run function ttr:random/level_gen/clone_area
execute if score #pick_option_2 value matches 4 as @e[type=marker,tag=w3] at @s run function ttr:random/level_gen/clone_wall
execute if score #pick_option_2 value matches 4 as @e[type=marker,tag=w6] at @s run function ttr:random/level_gen/clone_wall
execute if score #pick_option_2 value matches 4 as @e[type=marker,tag=w8] at @s run function ttr:random/level_gen/clone_wall

execute if score #pick_option_2 value matches 5 run scoreboard players set #area_5_active value 0
execute if score #pick_option_2 value matches 5 as @e[type=marker,tag=a5] at @s run function ttr:random/level_gen/clone_area
execute if score #pick_option_2 value matches 5 as @e[type=marker,tag=w4] at @s run function ttr:random/level_gen/clone_wall
execute if score #pick_option_2 value matches 5 as @e[type=marker,tag=w6] at @s run function ttr:random/level_gen/clone_wall
execute if score #pick_option_2 value matches 5 as @e[type=marker,tag=w7] at @s run function ttr:random/level_gen/clone_wall
execute if score #pick_option_2 value matches 5 as @e[type=marker,tag=w9] at @s run function ttr:random/level_gen/clone_wall

execute if score #pick_option_2 value matches 6 run scoreboard players set #area_6_active value 0
execute if score #pick_option_2 value matches 6 as @e[type=marker,tag=a6] at @s run function ttr:random/level_gen/clone_area
execute if score #pick_option_2 value matches 6 as @e[type=marker,tag=w5] at @s run function ttr:random/level_gen/clone_wall
execute if score #pick_option_2 value matches 6 as @e[type=marker,tag=w7] at @s run function ttr:random/level_gen/clone_wall
execute if score #pick_option_2 value matches 6 as @e[type=marker,tag=w10] at @s run function ttr:random/level_gen/clone_wall

execute if score #pick_option_2 value matches 7 run scoreboard players set #area_7_active value 0
execute if score #pick_option_2 value matches 7 as @e[type=marker,tag=a7] at @s run function ttr:random/level_gen/clone_area
execute if score #pick_option_2 value matches 7 as @e[type=marker,tag=w8] at @s run function ttr:random/level_gen/clone_wall
execute if score #pick_option_2 value matches 7 as @e[type=marker,tag=w11] at @s run function ttr:random/level_gen/clone_wall

execute if score #pick_option_2 value matches 8 run scoreboard players set #area_8_active value 0
execute if score #pick_option_2 value matches 8 as @e[type=marker,tag=a8] at @s run function ttr:random/level_gen/clone_area
execute if score #pick_option_2 value matches 8 as @e[type=marker,tag=w9] at @s run function ttr:random/level_gen/clone_wall
execute if score #pick_option_2 value matches 8 as @e[type=marker,tag=w11] at @s run function ttr:random/level_gen/clone_wall
execute if score #pick_option_2 value matches 8 as @e[type=marker,tag=w12] at @s run function ttr:random/level_gen/clone_wall

execute if score #pick_option_2 value matches 9 run scoreboard players set #area_9_active value 0
execute if score #pick_option_2 value matches 9 as @e[type=marker,tag=a9] at @s run function ttr:random/level_gen/clone_area
execute if score #pick_option_2 value matches 9 as @e[type=marker,tag=w10] at @s run function ttr:random/level_gen/clone_wall
execute if score #pick_option_2 value matches 9 as @e[type=marker,tag=w12] at @s run function ttr:random/level_gen/clone_wall

#trans rights
execute if score #pick_option_2 value matches 1..9 run scoreboard players set #arena_change_success value 1