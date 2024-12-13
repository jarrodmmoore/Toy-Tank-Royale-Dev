#invisible
execute if score #model_flash value matches ..1 run data merge entity @s {CustomNameVisible:0b,ArmorItems:[{},{},{},{}]}

#tank model
execute if score #model_flash value matches 2.. unless score #headModel value matches 1 unless score #color_2 value matches 2.. run data merge entity @s {CustomNameVisible:1b,ArmorItems:[{},{},{},{id:"minecraft:green_dye",count:1,components:{"minecraft:custom_model_data":1111111}}]}
execute if score #model_flash value matches 2.. unless score #headModel value matches 1 if score #color_2 value matches 2 run data merge entity @s {CustomNameVisible:1b,ArmorItems:[{},{},{},{id:"minecraft:green_dye",count:1,components:{"minecraft:custom_model_data":2111111}}]}
execute if score #model_flash value matches 2.. unless score #headModel value matches 1 if score #color_2 value matches 3 run data merge entity @s {CustomNameVisible:1b,ArmorItems:[{},{},{},{id:"minecraft:green_dye",count:1,components:{"minecraft:custom_model_data":3111111}}]}
execute if score #model_flash value matches 2.. unless score #headModel value matches 1 if score #color_2 value matches 4 run data merge entity @s {CustomNameVisible:1b,ArmorItems:[{},{},{},{id:"minecraft:green_dye",count:1,components:{"minecraft:custom_model_data":4111111}}]}
execute if score #model_flash value matches 2.. unless score #headModel value matches 1 if score #color_2 value matches 5 run data merge entity @s {CustomNameVisible:1b,ArmorItems:[{},{},{},{id:"minecraft:green_dye",count:1,components:{"minecraft:custom_model_data":5111111}}]}
execute if score #model_flash value matches 2.. unless score #headModel value matches 1 if score #color_2 value matches 6 run data merge entity @s {CustomNameVisible:1b,ArmorItems:[{},{},{},{id:"minecraft:green_dye",count:1,components:{"minecraft:custom_model_data":6111111}}]}
execute if score #model_flash value matches 2.. unless score #headModel value matches 1 if score #color_2 value matches 7 run data merge entity @s {CustomNameVisible:1b,ArmorItems:[{},{},{},{id:"minecraft:green_dye",count:1,components:{"minecraft:custom_model_data":7111111}}]}
execute if score #model_flash value matches 2.. unless score #headModel value matches 1 if score #color_2 value matches 8 run data merge entity @s {CustomNameVisible:1b,ArmorItems:[{},{},{},{id:"minecraft:green_dye",count:1,components:{"minecraft:custom_model_data":8111111}}]}

#turtle model
execute if score #model_flash value matches 2.. if score #headModel value matches 1 unless score #color_2 value matches 2.. run data merge entity @s {CustomNameVisible:1b,ArmorItems:[{},{},{},{id:"minecraft:green_dye",count:1,components:{"minecraft:custom_model_data":1111112}}]}
execute if score #model_flash value matches 2.. if score #headModel value matches 1 if score #color_2 value matches 2 run data merge entity @s {CustomNameVisible:1b,ArmorItems:[{},{},{},{id:"minecraft:green_dye",count:1,components:{"minecraft:custom_model_data":2111112}}]}
execute if score #model_flash value matches 2.. if score #headModel value matches 1 if score #color_2 value matches 3 run data merge entity @s {CustomNameVisible:1b,ArmorItems:[{},{},{},{id:"minecraft:green_dye",count:1,components:{"minecraft:custom_model_data":3111112}}]}
execute if score #model_flash value matches 2.. if score #headModel value matches 1 if score #color_2 value matches 4 run data merge entity @s {CustomNameVisible:1b,ArmorItems:[{},{},{},{id:"minecraft:green_dye",count:1,components:{"minecraft:custom_model_data":4111112}}]}
execute if score #model_flash value matches 2.. if score #headModel value matches 1 if score #color_2 value matches 5 run data merge entity @s {CustomNameVisible:1b,ArmorItems:[{},{},{},{id:"minecraft:green_dye",count:1,components:{"minecraft:custom_model_data":5111112}}]}
execute if score #model_flash value matches 2.. if score #headModel value matches 1 if score #color_2 value matches 6 run data merge entity @s {CustomNameVisible:1b,ArmorItems:[{},{},{},{id:"minecraft:green_dye",count:1,components:{"minecraft:custom_model_data":6111112}}]}
execute if score #model_flash value matches 2.. if score #headModel value matches 1 if score #color_2 value matches 7 run data merge entity @s {CustomNameVisible:1b,ArmorItems:[{},{},{},{id:"minecraft:green_dye",count:1,components:{"minecraft:custom_model_data":7111112}}]}
execute if score #model_flash value matches 2.. if score #headModel value matches 1 if score #color_2 value matches 8 run data merge entity @s {CustomNameVisible:1b,ArmorItems:[{},{},{},{id:"minecraft:green_dye",count:1,components:{"minecraft:custom_model_data":8111112}}]}

