execute if score #color2 value matches 1 run data merge block 0 150 0 {front_text:{messages:['[{"text":"CPU_","color":"dark_green"},{"score":{"name":"#temp_id","objective":"value"},"color":"dark_green"}]','{"text":""}','{"text":""}','{"text":""}']},is_waxed:1b}
execute if score #color2 value matches 2 run data merge block 0 150 0 {front_text:{messages:['[{"text":"CPU_","color":"red"},{"score":{"name":"#temp_id","objective":"value"},"color":"red"}]','{"text":""}','{"text":""}','{"text":""}']},is_waxed:1b}
execute if score #color2 value matches 3 run data merge block 0 150 0 {front_text:{messages:['[{"text":"CPU_","color":"blue"},{"score":{"name":"#temp_id","objective":"value"},"color":"blue"}]','{"text":""}','{"text":""}','{"text":""}']},is_waxed:1b}
execute if score #color2 value matches 4 run data merge block 0 150 0 {front_text:{messages:['[{"text":"CPU_","color":"yellow"},{"score":{"name":"#temp_id","objective":"value"},"color":"yellow"}]','{"text":""}','{"text":""}','{"text":""}']},is_waxed:1b}
execute if score #color2 value matches 5 run data merge block 0 150 0 {front_text:{messages:['[{"text":"CPU_","color":"white"},{"score":{"name":"#temp_id","objective":"value"},"color":"white"}]','{"text":""}','{"text":""}','{"text":""}']},is_waxed:1b}
execute if score #color2 value matches 6 run data merge block 0 150 0 {front_text:{messages:['[{"text":"CPU_","color":"light_purple"},{"score":{"name":"#temp_id","objective":"value"},"color":"light_purple"}]','{"text":""}','{"text":""}','{"text":""}']},is_waxed:1b}
execute if score #color2 value matches 7 run data merge block 0 150 0 {front_text:{messages:['[{"text":"CPU_","color":"aqua"},{"score":{"name":"#temp_id","objective":"value"},"color":"aqua"}]','{"text":""}','{"text":""}','{"text":""}']},is_waxed:1b}
execute if score #color2 value matches 8 run data merge block 0 150 0 {front_text:{messages:['[{"text":"CPU_","color":"gray"},{"score":{"name":"#temp_id","objective":"value"},"color":"gray"}]','{"text":""}','{"text":""}','{"text":""}']},is_waxed:1b}

data modify entity @s CustomName set from block 0 150 0 front_text.messages[0]
data merge entity @s {CustomNameVisible:1b}

#while we're here: replace head model with turtle head model if we're supposed to be using it
execute if score #headModel value matches 1 if score #color2 value matches 1 run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:green_dye",count:1,components:{"minecraft:custom_model_data":1111112}}]}
execute if score #headModel value matches 1 if score #color2 value matches 2 run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:green_dye",count:1,components:{"minecraft:custom_model_data":2111112}}]}
execute if score #headModel value matches 1 if score #color2 value matches 3 run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:green_dye",count:1,components:{"minecraft:custom_model_data":3111112}}]}
execute if score #headModel value matches 1 if score #color2 value matches 4 run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:green_dye",count:1,components:{"minecraft:custom_model_data":4111112}}]}
execute if score #headModel value matches 1 if score #color2 value matches 5 run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:green_dye",count:1,components:{"minecraft:custom_model_data":5111112}}]}
execute if score #headModel value matches 1 if score #color2 value matches 6 run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:green_dye",count:1,components:{"minecraft:custom_model_data":6111112}}]}
execute if score #headModel value matches 1 if score #color2 value matches 7 run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:green_dye",count:1,components:{"minecraft:custom_model_data":7111112}}]}
execute if score #headModel value matches 1 if score #color2 value matches 8 run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:green_dye",count:1,components:{"minecraft:custom_model_data":8111112}}]}