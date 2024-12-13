#need to regenerate everything!
scoreboard players set #area_1_nav value 0
scoreboard players set #area_2_nav value 0
scoreboard players set #area_3_nav value 0
scoreboard players set #area_4_nav value 0
scoreboard players set #area_5_nav value 0
scoreboard players set #area_6_nav value 0
scoreboard players set #area_7_nav value 0
scoreboard players set #area_8_nav value 0
scoreboard players set #area_9_nav value 0

scoreboard players set #area_1_sp_nav value 0
scoreboard players set #area_2_sp_nav value 0
scoreboard players set #area_3_sp_nav value 0
scoreboard players set #area_4_sp_nav value 0
scoreboard players set #area_5_sp_nav value 0
scoreboard players set #area_6_sp_nav value 0
scoreboard players set #area_7_sp_nav value 0
scoreboard players set #area_8_sp_nav value 0
scoreboard players set #area_9_sp_nav value 0

#reset progress score
scoreboard players set @e[type=marker,tag=area_clone] botNavProgress 0
#this is needed if we have an arena that never transforms
#I forgot to put this in at first... gave me a panic attack because AI nav suddenly stopped working

kill @e[type=area_effect_cloud,tag=navFill]

#clear all garbage
execute as @e[type=marker,tag=area_clone] at @s run fill ~ ~-6 ~ ~20 ~-2 ~20 black_concrete