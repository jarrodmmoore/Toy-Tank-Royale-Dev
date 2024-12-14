#character model is purely visual, "summon_character.mcfunction" creates our collision hull that actually does things

#why is our player made up of two different entities?
#well, it allows for more control over animation and the visual rotation of the character without making any sacrifices to the smoothness of its true motion
#also allows us to do stuff like offsetting the model

scoreboard players operation @s color_1 = #color1 value
scoreboard players operation @s color_2 = #color2 value
scoreboard players operation @s tankBodyModel = #bodyModel value
scoreboard players operation @s tankHeadModel = #headModel value

kill 00000039-0000-0001-0000-000000000002

#summon model
summon minecraft:armor_stand ~ ~-1 ~ {UUID:[I;57,1,0,2],Tags:["player_model"],Rotation:[0.0f,0.0f],DisabledSlots:4144959,NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Glowing:0b}
execute as 00000039-0000-0001-0000-000000000002 run function ttr:control/body_get_model

execute unless entity @s[scores={color_1=2..8}] run team join color_green 00000039-0000-0001-0000-000000000002
execute if entity @s[scores={color_1=2}] run team join color_red 00000039-0000-0001-0000-000000000002
execute if entity @s[scores={color_1=3}] run team join color_blue 00000039-0000-0001-0000-000000000002
execute if entity @s[scores={color_1=4}] run team join color_yellow 00000039-0000-0001-0000-000000000002
execute if entity @s[scores={color_1=5}] run team join color_white 00000039-0000-0001-0000-000000000002
execute if entity @s[scores={color_1=6}] run team join color_pink 00000039-0000-0001-0000-000000000002
execute if entity @s[scores={color_1=7}] run team join color_cyan 00000039-0000-0001-0000-000000000002
execute if entity @s[scores={color_1=8}] run team join color_gray 00000039-0000-0001-0000-000000000002

scoreboard players operation 00000039-0000-0001-0000-000000000002 playerID = @s playerID
scoreboard players set 00000039-0000-0001-0000-000000000002 lifespan 20

tag 00000039-0000-0001-0000-000000000002 add my_model