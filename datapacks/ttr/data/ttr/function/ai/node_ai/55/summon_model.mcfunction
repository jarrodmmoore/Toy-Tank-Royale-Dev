
scoreboard players operation @s color_1 = #color1 value
scoreboard players operation @s color_2 = #color2 value
scoreboard players operation @s tankBodyModel = #bodyModel value
scoreboard players operation @s tankHeadModel = #headModel value

kill 00000037-0000-0001-0000-000000000002

#summon model
summon minecraft:armor_stand ~ ~-1 ~ {UUID:[I;55,1,0,2],Tags:["player_model"],Rotation:[0.0f,0.0f],DisabledSlots:4144959,NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Glowing:0b}
execute as 00000037-0000-0001-0000-000000000002 run function ttr:control/body_get_model

scoreboard players operation 00000037-0000-0001-0000-000000000002 playerID = @s playerID
scoreboard players set 00000037-0000-0001-0000-000000000002 lifespan 20

tag 00000037-0000-0001-0000-000000000002 add my_model