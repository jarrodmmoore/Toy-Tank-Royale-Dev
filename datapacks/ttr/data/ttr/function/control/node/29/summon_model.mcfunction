#character model is purely visual, "summon_character.mcfunction" creates our collision hull that actually does things

#why is our player made up of two different entities?
#well, it allows for more control over animation and the visual rotation of the character without making any sacrifices to the smoothness of its true motion
#also allows us to do stuff like offsetting the model

scoreboard players operation @s color_1 = #color1 value
scoreboard players operation @s color_2 = #color2 value
scoreboard players operation @s tankBodyModel = #bodyModel value
scoreboard players operation @s tankHeadModel = #headModel value

kill 0000001d-0000-0000-0000-000000000002

#summon model
summon minecraft:armor_stand ~ ~-1 ~ {UUID:[I;29,0,0,2],Tags:["player_model"],Rotation:[0.0f,0.0f],DisabledSlots:4144959,NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Glowing:0b}
execute as 0000001d-0000-0000-0000-000000000002 run function ttr:control/body_get_model

execute unless entity @s[scores={color_1=2..8}] run team join color_green 0000001d-0000-0000-0000-000000000002
execute if entity @s[scores={color_1=2}] run team join color_red 0000001d-0000-0000-0000-000000000002
execute if entity @s[scores={color_1=3}] run team join color_blue 0000001d-0000-0000-0000-000000000002
execute if entity @s[scores={color_1=4}] run team join color_yellow 0000001d-0000-0000-0000-000000000002
execute if entity @s[scores={color_1=5}] run team join color_white 0000001d-0000-0000-0000-000000000002
execute if entity @s[scores={color_1=6}] run team join color_pink 0000001d-0000-0000-0000-000000000002
execute if entity @s[scores={color_1=7}] run team join color_cyan 0000001d-0000-0000-0000-000000000002
execute if entity @s[scores={color_1=8}] run team join color_gray 0000001d-0000-0000-0000-000000000002

scoreboard players operation 0000001d-0000-0000-0000-000000000002 playerID = @s playerID
scoreboard players set 0000001d-0000-0000-0000-000000000002 lifespan 20

#tag @e[tag=setme] add my_model
#tag @e[tag=setme] remove setme