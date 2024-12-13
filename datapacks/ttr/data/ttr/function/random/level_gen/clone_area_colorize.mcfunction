execute if entity @s[tag=a1] run scoreboard players operation #get_color value = #area_1_color value
execute if entity @s[tag=a2] run scoreboard players operation #get_color value = #area_2_color value
execute if entity @s[tag=a3] run scoreboard players operation #get_color value = #area_3_color value
execute if entity @s[tag=a4] run scoreboard players operation #get_color value = #area_4_color value
execute if entity @s[tag=a5] run scoreboard players operation #get_color value = #area_5_color value
execute if entity @s[tag=a6] run scoreboard players operation #get_color value = #area_6_color value
execute if entity @s[tag=a7] run scoreboard players operation #get_color value = #area_7_color value
execute if entity @s[tag=a8] run scoreboard players operation #get_color value = #area_8_color value
execute if entity @s[tag=a9] run scoreboard players operation #get_color value = #area_9_color value

#apply color
execute if score #get_color value matches 1 run fill ~ ~ ~ ~20 ~3 ~20 dead_bubble_coral_block replace dead_tube_coral_block
execute if score #get_color value matches 1 run fill ~ ~ ~ ~20 ~3 ~20 dead_fire_coral_block replace dead_brain_coral_block
execute if score #get_color value matches 1 run fill ~ ~ ~ ~20 ~3 ~20 dead_horn_coral_block replace gold_block
execute if score #get_color value matches 2 run fill ~ ~ ~ ~20 ~3 ~20 raw_copper_block replace dead_tube_coral_block
execute if score #get_color value matches 2 run fill ~ ~ ~ ~20 ~3 ~20 raw_iron_block replace dead_brain_coral_block
execute if score #get_color value matches 2 run fill ~ ~ ~ ~20 ~3 ~20 raw_gold_block replace gold_block

#clear value
execute if entity @s[tag=a1] run scoreboard players set #area_1_color value 0
execute if entity @s[tag=a2] run scoreboard players set #area_2_color value 0
execute if entity @s[tag=a3] run scoreboard players set #area_3_color value 0
execute if entity @s[tag=a4] run scoreboard players set #area_4_color value 0
execute if entity @s[tag=a5] run scoreboard players set #area_5_color value 0
execute if entity @s[tag=a6] run scoreboard players set #area_6_color value 0
execute if entity @s[tag=a7] run scoreboard players set #area_7_color value 0
execute if entity @s[tag=a8] run scoreboard players set #area_8_color value 0
execute if entity @s[tag=a9] run scoreboard players set #area_9_color value 0

#set spawnpoint value
execute if score #get_color value matches 1 if entity @s[tag=a1] run scoreboard players set #red_spawn_square value 1
execute if score #get_color value matches 1 if entity @s[tag=a2] run scoreboard players set #red_spawn_square value 2
execute if score #get_color value matches 1 if entity @s[tag=a3] run scoreboard players set #red_spawn_square value 3
execute if score #get_color value matches 1 if entity @s[tag=a4] run scoreboard players set #red_spawn_square value 4
execute if score #get_color value matches 1 if entity @s[tag=a5] run scoreboard players set #red_spawn_square value 5
execute if score #get_color value matches 1 if entity @s[tag=a6] run scoreboard players set #red_spawn_square value 6
execute if score #get_color value matches 1 if entity @s[tag=a7] run scoreboard players set #red_spawn_square value 7
execute if score #get_color value matches 1 if entity @s[tag=a8] run scoreboard players set #red_spawn_square value 8
execute if score #get_color value matches 1 if entity @s[tag=a9] run scoreboard players set #red_spawn_square value 9

execute if score #get_color value matches 2 if entity @s[tag=a1] run scoreboard players set #blue_spawn_square value 1
execute if score #get_color value matches 2 if entity @s[tag=a2] run scoreboard players set #blue_spawn_square value 2
execute if score #get_color value matches 2 if entity @s[tag=a3] run scoreboard players set #blue_spawn_square value 3
execute if score #get_color value matches 2 if entity @s[tag=a4] run scoreboard players set #blue_spawn_square value 4
execute if score #get_color value matches 2 if entity @s[tag=a5] run scoreboard players set #blue_spawn_square value 5
execute if score #get_color value matches 2 if entity @s[tag=a6] run scoreboard players set #blue_spawn_square value 6
execute if score #get_color value matches 2 if entity @s[tag=a7] run scoreboard players set #blue_spawn_square value 7
execute if score #get_color value matches 2 if entity @s[tag=a8] run scoreboard players set #blue_spawn_square value 8
execute if score #get_color value matches 2 if entity @s[tag=a9] run scoreboard players set #blue_spawn_square value 9