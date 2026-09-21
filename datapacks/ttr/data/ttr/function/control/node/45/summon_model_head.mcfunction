
scoreboard players operation @s color_1 = #color1 value
scoreboard players operation @s color_2 = #color2 value
scoreboard players operation @s tankBodyModel = #bodyModel value
scoreboard players operation @s tankHeadModel = #headModel value

kill 0000002d-0000-0000-0000-000000000003

#summon model head
summon item_display ~ ~-1 ~ {interpolation_duration:1,teleport_duration:2,UUID:[I;45,0,0,3],Tags:["player_model_head"]}

execute as 0000002d-0000-0000-0000-000000000003 run function ttr:control/head_get_name
scoreboard players operation 0000002d-0000-0000-0000-000000000003 playerID = @s playerID
scoreboard players set 0000002d-0000-0000-0000-000000000003 lifespan 20
