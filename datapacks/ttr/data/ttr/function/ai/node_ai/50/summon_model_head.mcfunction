#character model is purely visual, "summon_character.mcfunction" creates our collision hull that actually does things

#why is our player made up of two different entities?
#well, it allows for more control over animation and the visual rotation of the character without making any sacrifices to the smoothness of its true motion
#also allows us to do stuff like offsetting the model

scoreboard players operation @s color_1 = #color1 value
scoreboard players operation @s color_2 = #color2 value
scoreboard players operation @s tankBodyModel = #bodyModel value
scoreboard players operation @s tankHeadModel = #headModel value

kill 00000032-0000-0001-0000-000000000003

execute unless entity @s[scores={color_2=1..8}] run summon minecraft:armor_stand ~ ~-1 ~ {UUID:[I;50,1,0,3],Tags:["player_model_head"],Rotation:[0.0f],DisabledSlots:4144959,NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Glowing:0b,ArmorItems:[{},{},{},{id:"minecraft:green_dye",count:1,components:{"minecraft:custom_model_data":1111111}}]}
execute if entity @s[scores={color_2=1}] run summon minecraft:armor_stand ~ ~-1 ~ {UUID:[I;50,1,0,3],Tags:["player_model_head"],Rotation:[0.0f],DisabledSlots:4144959,NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Glowing:0b,ArmorItems:[{},{},{},{id:"minecraft:green_dye",count:1,components:{"minecraft:custom_model_data":1111111}}]}
execute if entity @s[scores={color_2=2}] run summon minecraft:armor_stand ~ ~-1 ~ {UUID:[I;50,1,0,3],Tags:["player_model_head"],Rotation:[0.0f],DisabledSlots:4144959,NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Glowing:0b,ArmorItems:[{},{},{},{id:"minecraft:green_dye",count:1,components:{"minecraft:custom_model_data":2111111}}]}
execute if entity @s[scores={color_2=3}] run summon minecraft:armor_stand ~ ~-1 ~ {UUID:[I;50,1,0,3],Tags:["player_model_head"],Rotation:[0.0f],DisabledSlots:4144959,NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Glowing:0b,ArmorItems:[{},{},{},{id:"minecraft:green_dye",count:1,components:{"minecraft:custom_model_data":3111111}}]}
execute if entity @s[scores={color_2=4}] run summon minecraft:armor_stand ~ ~-1 ~ {UUID:[I;50,1,0,3],Tags:["player_model_head"],Rotation:[0.0f],DisabledSlots:4144959,NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Glowing:0b,ArmorItems:[{},{},{},{id:"minecraft:green_dye",count:1,components:{"minecraft:custom_model_data":4111111}}]}
execute if entity @s[scores={color_2=5}] run summon minecraft:armor_stand ~ ~-1 ~ {UUID:[I;50,1,0,3],Tags:["player_model_head"],Rotation:[0.0f],DisabledSlots:4144959,NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Glowing:0b,ArmorItems:[{},{},{},{id:"minecraft:green_dye",count:1,components:{"minecraft:custom_model_data":5111111}}]}
execute if entity @s[scores={color_2=6}] run summon minecraft:armor_stand ~ ~-1 ~ {UUID:[I;50,1,0,3],Tags:["player_model_head"],Rotation:[0.0f],DisabledSlots:4144959,NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Glowing:0b,ArmorItems:[{},{},{},{id:"minecraft:green_dye",count:1,components:{"minecraft:custom_model_data":6111111}}]}
execute if entity @s[scores={color_2=7}] run summon minecraft:armor_stand ~ ~-1 ~ {UUID:[I;50,1,0,3],Tags:["player_model_head"],Rotation:[0.0f],DisabledSlots:4144959,NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Glowing:0b,ArmorItems:[{},{},{},{id:"minecraft:green_dye",count:1,components:{"minecraft:custom_model_data":7111111}}]}
execute if entity @s[scores={color_2=8}] run summon minecraft:armor_stand ~ ~-1 ~ {UUID:[I;50,1,0,3],Tags:["player_model_head"],Rotation:[0.0f],DisabledSlots:4144959,NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Glowing:0b,ArmorItems:[{},{},{},{id:"minecraft:green_dye",count:1,components:{"minecraft:custom_model_data":8111111}}]}

execute unless entity @s[scores={color_2=2..8}] run team join color_green 00000032-0000-0001-0000-000000000003
execute if entity @s[scores={color_2=2}] run team join color_red 00000032-0000-0001-0000-000000000003
execute if entity @s[scores={color_2=3}] run team join color_blue 00000032-0000-0001-0000-000000000003
execute if entity @s[scores={color_2=4}] run team join color_yellow 00000032-0000-0001-0000-000000000003
execute if entity @s[scores={color_2=5}] run team join color_white 00000032-0000-0001-0000-000000000003
execute if entity @s[scores={color_2=6}] run team join color_pink 00000032-0000-0001-0000-000000000003
execute if entity @s[scores={color_2=7}] run team join color_cyan 00000032-0000-0001-0000-000000000003
execute if entity @s[scores={color_2=8}] run team join color_gray 00000032-0000-0001-0000-000000000003

execute as 00000032-0000-0001-0000-000000000003 run function ttr:control/head_get_name_ai
scoreboard players operation 00000032-0000-0001-0000-000000000003 playerID = @s playerID
scoreboard players set 00000032-0000-0001-0000-000000000003 lifespan 20
tag 00000032-0000-0001-0000-000000000003 add my_model_2