#character model is purely visual, "summon_character.mcfunction" creates our collision hull that actually does things

#why is our player made up of two different entities?
#well, it allows for more control over animation and the visual rotation of the character without making any sacrifices to the smoothness of its true motion
#also allows us to do stuff like offsetting the model

scoreboard players operation @s color_1 = #color1 value
scoreboard players operation @s color_2 = #color2 value
scoreboard players operation @s tankBodyModel = #bodyModel value
scoreboard players operation @s tankHeadModel = #headModel value

kill 0000002f-0000-0001-0000-000000000002

execute unless entity @s[scores={color_1=1..8}] run summon minecraft:armor_stand ~ ~-1 ~ {UUID:[I;47,1,0,2],Tags:["player_model"],Rotation:[0.0f],DisabledSlots:4144959,NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Glowing:0b,ArmorItems:[{},{},{},{id:"minecraft:yellow_dye",count:1,components:{"minecraft:custom_model_data":1111111}}]}
execute if entity @s[scores={color_1=1}] run summon minecraft:armor_stand ~ ~-1 ~ {UUID:[I;47,1,0,2],Tags:["player_model"],Rotation:[0.0f],DisabledSlots:4144959,NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Glowing:0b,ArmorItems:[{},{},{},{id:"minecraft:yellow_dye",count:1,components:{"minecraft:custom_model_data":1111111}}]}
execute if entity @s[scores={color_1=2}] run summon minecraft:armor_stand ~ ~-1 ~ {UUID:[I;47,1,0,2],Tags:["player_model"],Rotation:[0.0f],DisabledSlots:4144959,NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Glowing:0b,ArmorItems:[{},{},{},{id:"minecraft:yellow_dye",count:1,components:{"minecraft:custom_model_data":2111111}}]}
execute if entity @s[scores={color_1=3}] run summon minecraft:armor_stand ~ ~-1 ~ {UUID:[I;47,1,0,2],Tags:["player_model"],Rotation:[0.0f],DisabledSlots:4144959,NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Glowing:0b,ArmorItems:[{},{},{},{id:"minecraft:yellow_dye",count:1,components:{"minecraft:custom_model_data":3111111}}]}
execute if entity @s[scores={color_1=4}] run summon minecraft:armor_stand ~ ~-1 ~ {UUID:[I;47,1,0,2],Tags:["player_model"],Rotation:[0.0f],DisabledSlots:4144959,NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Glowing:0b,ArmorItems:[{},{},{},{id:"minecraft:yellow_dye",count:1,components:{"minecraft:custom_model_data":4111111}}]}
execute if entity @s[scores={color_1=5}] run summon minecraft:armor_stand ~ ~-1 ~ {UUID:[I;47,1,0,2],Tags:["player_model"],Rotation:[0.0f],DisabledSlots:4144959,NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Glowing:0b,ArmorItems:[{},{},{},{id:"minecraft:yellow_dye",count:1,components:{"minecraft:custom_model_data":5111111}}]}
execute if entity @s[scores={color_1=6}] run summon minecraft:armor_stand ~ ~-1 ~ {UUID:[I;47,1,0,2],Tags:["player_model"],Rotation:[0.0f],DisabledSlots:4144959,NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Glowing:0b,ArmorItems:[{},{},{},{id:"minecraft:yellow_dye",count:1,components:{"minecraft:custom_model_data":6111111}}]}
execute if entity @s[scores={color_1=7}] run summon minecraft:armor_stand ~ ~-1 ~ {UUID:[I;47,1,0,2],Tags:["player_model"],Rotation:[0.0f],DisabledSlots:4144959,NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Glowing:0b,ArmorItems:[{},{},{},{id:"minecraft:yellow_dye",count:1,components:{"minecraft:custom_model_data":7111111}}]}
execute if entity @s[scores={color_1=8}] run summon minecraft:armor_stand ~ ~-1 ~ {UUID:[I;47,1,0,2],Tags:["player_model"],Rotation:[0.0f],DisabledSlots:4144959,NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Glowing:0b,ArmorItems:[{},{},{},{id:"minecraft:yellow_dye",count:1,components:{"minecraft:custom_model_data":8111111}}]}

#override model if we're supposed to be a turtle
execute if entity @s[scores={color_1=1,tankBodyModel=1}] as 0000002f-0000-0001-0000-000000000002 run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:yellow_dye",count:1,components:{"minecraft:custom_model_data":1111112}}]}
execute if entity @s[scores={color_1=2,tankBodyModel=1}] as 0000002f-0000-0001-0000-000000000002 run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:yellow_dye",count:1,components:{"minecraft:custom_model_data":2111112}}]}
execute if entity @s[scores={color_1=3,tankBodyModel=1}] as 0000002f-0000-0001-0000-000000000002 run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:yellow_dye",count:1,components:{"minecraft:custom_model_data":3111112}}]}
execute if entity @s[scores={color_1=4,tankBodyModel=1}] as 0000002f-0000-0001-0000-000000000002 run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:yellow_dye",count:1,components:{"minecraft:custom_model_data":4111112}}]}
execute if entity @s[scores={color_1=5,tankBodyModel=1}] as 0000002f-0000-0001-0000-000000000002 run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:yellow_dye",count:1,components:{"minecraft:custom_model_data":5111112}}]}
execute if entity @s[scores={color_1=6,tankBodyModel=1}] as 0000002f-0000-0001-0000-000000000002 run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:yellow_dye",count:1,components:{"minecraft:custom_model_data":6111112}}]}
execute if entity @s[scores={color_1=7,tankBodyModel=1}] as 0000002f-0000-0001-0000-000000000002 run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:yellow_dye",count:1,components:{"minecraft:custom_model_data":7111112}}]}
execute if entity @s[scores={color_1=8,tankBodyModel=1}] as 0000002f-0000-0001-0000-000000000002 run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:yellow_dye",count:1,components:{"minecraft:custom_model_data":8111112}}]}

execute unless entity @s[scores={color_1=2..8}] run team join color_green 0000002f-0000-0001-0000-000000000002
execute if entity @s[scores={color_1=2}] run team join color_red 0000002f-0000-0001-0000-000000000002
execute if entity @s[scores={color_1=3}] run team join color_blue 0000002f-0000-0001-0000-000000000002
execute if entity @s[scores={color_1=4}] run team join color_yellow 0000002f-0000-0001-0000-000000000002
execute if entity @s[scores={color_1=5}] run team join color_white 0000002f-0000-0001-0000-000000000002
execute if entity @s[scores={color_1=6}] run team join color_pink 0000002f-0000-0001-0000-000000000002
execute if entity @s[scores={color_1=7}] run team join color_cyan 0000002f-0000-0001-0000-000000000002
execute if entity @s[scores={color_1=8}] run team join color_gray 0000002f-0000-0001-0000-000000000002

scoreboard players operation 0000002f-0000-0001-0000-000000000002 playerID = @s playerID
scoreboard players set 0000002f-0000-0001-0000-000000000002 lifespan 20

tag 0000002f-0000-0001-0000-000000000002 add my_model