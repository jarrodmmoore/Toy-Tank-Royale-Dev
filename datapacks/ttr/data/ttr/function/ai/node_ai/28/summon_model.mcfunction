
scoreboard players operation @s color_1 = #color1 value
scoreboard players operation @s color_2 = #color2 value
scoreboard players operation @s tankBodyModel = #bodyModel value
scoreboard players operation @s tankHeadModel = #headModel value

kill 0000001c-0000-0001-0000-000000000002

#summon model
summon item_display ~ ~-1 ~ {interpolation_duration:1,teleport_duration:2,UUID:[I;28,1,0,2],Tags:["player_model"]}
execute as 0000001c-0000-0001-0000-000000000002 run function ttr:control/body_get_model

scoreboard players operation 0000001c-0000-0001-0000-000000000002 playerID = @s playerID
scoreboard players set 0000001c-0000-0001-0000-000000000002 lifespan 20

tag 0000001c-0000-0001-0000-000000000002 add my_model