
scoreboard players operation @s color_1 = #color1 value
scoreboard players operation @s color_2 = #color2 value
scoreboard players operation @s tankBodyModel = #bodyModel value
scoreboard players operation @s tankHeadModel = #headModel value

execute unless entity @s[scores={color_2=1..8}] run summon minecraft:armor_stand ~ ~-1 ~ {Tags:["player_model_head","setme"],Rotation:[0.0f],DisabledSlots:4144959,NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Glowing:0b,ArmorItems:[{},{},{},{id:"minecraft:green_dye",count:1,components:{"minecraft:item_model":"ttr/tanks/green_head"}}]}
execute if entity @s[scores={color_2=1}] run summon minecraft:armor_stand ~ ~-1 ~ {Tags:["player_model_head","setme"],Rotation:[0.0f],DisabledSlots:4144959,NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Glowing:0b,ArmorItems:[{},{},{},{id:"minecraft:green_dye",count:1,components:{"minecraft:item_model":"ttr/tanks/green_head"}}]}
execute if entity @s[scores={color_2=2}] run summon minecraft:armor_stand ~ ~-1 ~ {Tags:["player_model_head","setme"],Rotation:[0.0f],DisabledSlots:4144959,NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Glowing:0b,ArmorItems:[{},{},{},{id:"minecraft:green_dye",count:1,components:{"minecraft:item_model":"ttr/tanks/red_head"}}]}
execute if entity @s[scores={color_2=3}] run summon minecraft:armor_stand ~ ~-1 ~ {Tags:["player_model_head","setme"],Rotation:[0.0f],DisabledSlots:4144959,NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Glowing:0b,ArmorItems:[{},{},{},{id:"minecraft:green_dye",count:1,components:{"minecraft:item_model":"ttr/tanks/blue_head"}}]}
execute if entity @s[scores={color_2=4}] run summon minecraft:armor_stand ~ ~-1 ~ {Tags:["player_model_head","setme"],Rotation:[0.0f],DisabledSlots:4144959,NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Glowing:0b,ArmorItems:[{},{},{},{id:"minecraft:green_dye",count:1,components:{"minecraft:item_model":"ttr/tanks/yellow_head"}}]}
execute if entity @s[scores={color_2=5}] run summon minecraft:armor_stand ~ ~-1 ~ {Tags:["player_model_head","setme"],Rotation:[0.0f],DisabledSlots:4144959,NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Glowing:0b,ArmorItems:[{},{},{},{id:"minecraft:green_dye",count:1,components:{"minecraft:item_model":"ttr/tanks/white_head"}}]}
execute if entity @s[scores={color_2=6}] run summon minecraft:armor_stand ~ ~-1 ~ {Tags:["player_model_head","setme"],Rotation:[0.0f],DisabledSlots:4144959,NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Glowing:0b,ArmorItems:[{},{},{},{id:"minecraft:green_dye",count:1,components:{"minecraft:item_model":"ttr/tanks/pink_head"}}]}
execute if entity @s[scores={color_2=7}] run summon minecraft:armor_stand ~ ~-1 ~ {Tags:["player_model_head","setme"],Rotation:[0.0f],DisabledSlots:4144959,NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Glowing:0b,ArmorItems:[{},{},{},{id:"minecraft:green_dye",count:1,components:{"minecraft:item_model":"ttr/tanks/cyan_head"}}]}
execute if entity @s[scores={color_2=8}] run summon minecraft:armor_stand ~ ~-1 ~ {Tags:["player_model_head","setme"],Rotation:[0.0f],DisabledSlots:4144959,NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Glowing:0b,ArmorItems:[{},{},{},{id:"minecraft:green_dye",count:1,components:{"minecraft:item_model":"ttr/tanks/gray_head"}}]}

execute unless entity @s[scores={color_2=2..8}] run team join color_green @e[tag=setme,limit=1]
execute if entity @s[scores={color_2=2}] run team join color_red @e[tag=setme,limit=1]
execute if entity @s[scores={color_2=3}] run team join color_blue @e[tag=setme,limit=1]
execute if entity @s[scores={color_2=4}] run team join color_yellow @e[tag=setme,limit=1]
execute if entity @s[scores={color_2=5}] run team join color_white @e[tag=setme,limit=1]
execute if entity @s[scores={color_2=6}] run team join color_pink @e[tag=setme,limit=1]
execute if entity @s[scores={color_2=7}] run team join color_cyan @e[tag=setme,limit=1]
execute if entity @s[scores={color_2=8}] run team join color_gray @e[tag=setme,limit=1]

execute as @e[tag=setme,limit=1] run function ttr:control/head_get_name_ai
scoreboard players operation @e[tag=setme,limit=1] playerID = @s playerID
scoreboard players set @e[tag=setme,limit=1] lifespan 20
tag @e[tag=setme] add my_model_2
tag @e[tag=setme] remove setme