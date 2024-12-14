#character model is purely visual, "summon_character.mcfunction" creates our collision hull that actually does things

#why is our player made up of two different entities?
#well, it allows for more control over animation and the visual rotation of the character without making any sacrifices to the smoothness of its true motion
#also allows us to do stuff like offsetting the model

scoreboard players operation @s color_1 = #color1 value
scoreboard players operation @s color_2 = #color2 value
scoreboard players operation @s tankBodyModel = #bodyModel value
scoreboard players operation @s tankHeadModel = #headModel value

kill 0000001c-0000-0000-0000-000000000003

summon minecraft:armor_stand ~ ~-1 ~ {UUID:[I;28,0,0,3],Tags:["player_model_head"],Rotation:[0.0f,0.0f],DisabledSlots:4144959,NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Glowing:0b}

execute unless entity @s[scores={color_2=2..8}] run team join color_green 0000001c-0000-0000-0000-000000000003
execute if entity @s[scores={color_2=2}] run team join color_red 0000001c-0000-0000-0000-000000000003
execute if entity @s[scores={color_2=3}] run team join color_blue 0000001c-0000-0000-0000-000000000003
execute if entity @s[scores={color_2=4}] run team join color_yellow 0000001c-0000-0000-0000-000000000003
execute if entity @s[scores={color_2=5}] run team join color_white 0000001c-0000-0000-0000-000000000003
execute if entity @s[scores={color_2=6}] run team join color_pink 0000001c-0000-0000-0000-000000000003
execute if entity @s[scores={color_2=7}] run team join color_cyan 0000001c-0000-0000-0000-000000000003
execute if entity @s[scores={color_2=8}] run team join color_gray 0000001c-0000-0000-0000-000000000003

execute as 0000001c-0000-0000-0000-000000000003 run function ttr:control/head_get_name
scoreboard players operation 0000001c-0000-0000-0000-000000000003 playerID = @s playerID
scoreboard players set 0000001c-0000-0000-0000-000000000003 lifespan 20
#tag @e[tag=setme] add my_model_2
#tag @e[tag=setme] remove setme