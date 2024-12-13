#make sure crown exists
kill @e[tag=gold_crown,type=armor_stand]
summon armor_stand 16 20 16 {Tags:["gold_crown"],Small:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:carved_pumpkin",count:1}]}

#scoreboard players set #area_1_active value 0
#scoreboard players set #area_2_active value 0
#scoreboard players set #area_3_active value 0
#scoreboard players set #area_4_active value 0
#scoreboard players set #area_5_active value 1
#scoreboard players set #area_6_active value 0
#scoreboard players set #area_7_active value 0
#scoreboard players set #area_8_active value 0
#scoreboard players set #area_9_active value 0

#execute if score #opt_arenasize value matches 0 if score #opt_arenasize_mod value matches 1.. run scoreboard players set #area_2_active value 1
#execute if score #opt_arenasize value matches 0 if score #opt_arenasize_mod value matches 2.. run scoreboard players set #area_4_active value 1
#execute if score #opt_arenasize value matches 0 if score #opt_arenasize_mod value matches 3.. run scoreboard players set #area_6_active value 1
#execute if score #opt_arenasize value matches 0 if score #opt_arenasize_mod value matches 4.. run scoreboard players set #area_8_active value 1
#execute if score #opt_arenasize value matches 0 if score #opt_arenasize_mod value matches 5.. run scoreboard players set #area_1_active value 1
#execute if score #opt_arenasize value matches 0 if score #opt_arenasize_mod value matches 6.. run scoreboard players set #area_3_active value 1
#execute if score #opt_arenasize value matches 0 if score #opt_arenasize_mod value matches 7.. run scoreboard players set #area_7_active value 1
#execute if score #opt_arenasize value matches 0 if score #opt_arenasize_mod value matches 8.. run scoreboard players set #area_9_active value 1

#execute if score #opt_arenasize value matches 1 if score #opt_arenasize_mod value matches 2.. run scoreboard players set #area_2_active value 1
#execute if score #opt_arenasize value matches 1 if score #opt_arenasize_mod value matches 3.. run scoreboard players set #area_4_active value 1
#execute if score #opt_arenasize value matches 1 if score #opt_arenasize_mod value matches 4.. run scoreboard players set #area_6_active value 1
#execute if score #opt_arenasize value matches 1 if score #opt_arenasize_mod value matches 5.. run scoreboard players set #area_8_active value 1
#execute if score #opt_arenasize value matches 1 if score #opt_arenasize_mod value matches 6.. run scoreboard players set #area_1_active value 1
#execute if score #opt_arenasize value matches 1 if score #opt_arenasize_mod value matches 7.. run scoreboard players set #area_3_active value 1
#execute if score #opt_arenasize value matches 1 if score #opt_arenasize_mod value matches 8.. run scoreboard players set #area_7_active value 1
#execute if score #opt_arenasize value matches 1 if score #opt_arenasize_mod value matches 9.. run scoreboard players set #area_9_active value 1

execute as @e[type=marker,tag=area_clone] at @s run function ttr:random/level_gen/clone_area
execute as @e[type=marker,tag=x_axis_wall] at @s run function ttr:random/level_gen/clone_x_wall
execute as @e[type=marker,tag=z_axis_wall] at @s run function ttr:random/level_gen/clone_z_wall

scoreboard players set #level_gen_time value 600

#modified tranform rate?
execute unless score #opt_transformrate value matches 2 run function ttr:random/level_gen/modified_transform_rate

#prevent bug with arena size modifier being -2 or lower
scoreboard players set #no_ds_shrink value 1