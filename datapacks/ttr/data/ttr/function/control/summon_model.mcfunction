#character model is purely visual, "summon_character.mcfunction" creates our collision hull that actually does things

#why is our player made up of two different entities?
#well, it allows for more control over animation and the visual rotation of the character without making any sacrifices to the smoothness of its true motion
#also allows us to do stuff like offsetting the model

scoreboard players operation @s color_1 = #color1 value
scoreboard players operation @s color_2 = #color2 value
scoreboard players operation @s tankBodyModel = #bodyModel value
scoreboard players operation @s tankHeadModel = #headModel value

execute unless entity @s[scores={color_1=1..8}] run summon minecraft:armor_stand ~ ~-1 ~ {Tags:["player_model","setme"],Rotation:[0.0f],DisabledSlots:4144959,NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Glowing:0b,ArmorItems:[{},{},{},{id:"minecraft:yellow_dye",count:1,components:{"minecraft:item_model":"ttr/tanks/green_body"}}]}
execute if entity @s[scores={color_1=1}] run summon minecraft:armor_stand ~ ~-1 ~ {Tags:["player_model","setme"],Rotation:[0.0f],DisabledSlots:4144959,NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Glowing:0b,ArmorItems:[{},{},{},{id:"minecraft:yellow_dye",count:1,components:{"minecraft:item_model":"ttr/tanks/green_body"}}]}
execute if entity @s[scores={color_1=2}] run summon minecraft:armor_stand ~ ~-1 ~ {Tags:["player_model","setme"],Rotation:[0.0f],DisabledSlots:4144959,NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Glowing:0b,ArmorItems:[{},{},{},{id:"minecraft:yellow_dye",count:1,components:{"minecraft:item_model":"ttr/tanks/red_body"}}]}
execute if entity @s[scores={color_1=3}] run summon minecraft:armor_stand ~ ~-1 ~ {Tags:["player_model","setme"],Rotation:[0.0f],DisabledSlots:4144959,NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Glowing:0b,ArmorItems:[{},{},{},{id:"minecraft:yellow_dye",count:1,components:{"minecraft:item_model":"ttr/tanks/blue_body"}}]}
execute if entity @s[scores={color_1=4}] run summon minecraft:armor_stand ~ ~-1 ~ {Tags:["player_model","setme"],Rotation:[0.0f],DisabledSlots:4144959,NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Glowing:0b,ArmorItems:[{},{},{},{id:"minecraft:yellow_dye",count:1,components:{"minecraft:item_model":"ttr/tanks/yellow_body"}}]}
execute if entity @s[scores={color_1=5}] run summon minecraft:armor_stand ~ ~-1 ~ {Tags:["player_model","setme"],Rotation:[0.0f],DisabledSlots:4144959,NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Glowing:0b,ArmorItems:[{},{},{},{id:"minecraft:yellow_dye",count:1,components:{"minecraft:item_model":"ttr/tanks/white_body"}}]}
execute if entity @s[scores={color_1=6}] run summon minecraft:armor_stand ~ ~-1 ~ {Tags:["player_model","setme"],Rotation:[0.0f],DisabledSlots:4144959,NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Glowing:0b,ArmorItems:[{},{},{},{id:"minecraft:yellow_dye",count:1,components:{"minecraft:item_model":"ttr/tanks/pink_body"}}]}
execute if entity @s[scores={color_1=7}] run summon minecraft:armor_stand ~ ~-1 ~ {Tags:["player_model","setme"],Rotation:[0.0f],DisabledSlots:4144959,NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Glowing:0b,ArmorItems:[{},{},{},{id:"minecraft:yellow_dye",count:1,components:{"minecraft:item_model":"ttr/tanks/cyan_body"}}]}
execute if entity @s[scores={color_1=8}] run summon minecraft:armor_stand ~ ~-1 ~ {Tags:["player_model","setme"],Rotation:[0.0f],DisabledSlots:4144959,NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Glowing:0b,ArmorItems:[{},{},{},{id:"minecraft:yellow_dye",count:1,components:{"minecraft:item_model":"ttr/tanks/gray_body"}}]}

execute unless entity @s[scores={color_1=2..8}] run team join color_green @e[tag=setme,limit=1]
execute if entity @s[scores={color_1=2}] run team join color_red @e[tag=setme,limit=1]
execute if entity @s[scores={color_1=3}] run team join color_blue @e[tag=setme,limit=1]
execute if entity @s[scores={color_1=4}] run team join color_yellow @e[tag=setme,limit=1]
execute if entity @s[scores={color_1=5}] run team join color_white @e[tag=setme,limit=1]
execute if entity @s[scores={color_1=6}] run team join color_pink @e[tag=setme,limit=1]
execute if entity @s[scores={color_1=7}] run team join color_cyan @e[tag=setme,limit=1]
execute if entity @s[scores={color_1=8}] run team join color_gray @e[tag=setme,limit=1]

scoreboard players operation @e[tag=setme,limit=1] playerID = @s playerID
scoreboard players set @e[tag=setme,limit=1] lifespan 20

tag @e[tag=setme] add my_model
tag @e[tag=setme] remove setme