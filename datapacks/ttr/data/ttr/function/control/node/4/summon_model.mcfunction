
scoreboard players operation @s color_1 = #color1 value
scoreboard players operation @s color_2 = #color2 value
scoreboard players operation @s tankBodyModel = #bodyModel value
scoreboard players operation @s tankHeadModel = #headModel value

kill 00000004-0000-0000-0000-000000000002

#summon model
summon item_display ~ ~-1 ~ {interpolation_duration:1,teleport_duration:2,UUID:[I;4,0,0,2],Tags:["player_model"]}
execute as 00000004-0000-0000-0000-000000000002 run function ttr:control/body_get_model

scoreboard players operation 00000004-0000-0000-0000-000000000002 playerID = @s playerID
scoreboard players set 00000004-0000-0000-0000-000000000002 lifespan 20
