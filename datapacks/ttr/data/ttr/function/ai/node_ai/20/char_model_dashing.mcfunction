scoreboard players operation #attackerID value = @s playerID

#kill players we run into
scoreboard players set #damage_source value 9
execute as @e[distance=..1,tag=player_char,type=zombie,tag=!player_ded,scores={invulTime=..0}] at @s unless score @s playerID = #attackerID value run function ttr:shoot/tank_player_die

#break blocks
execute positioned ~.5 ~.5 ~.5 if block ~ ~ ~ #ttr:breakable run setblock ~ ~ ~ air destroy
execute positioned ~.5 ~.5 ~-.5 if block ~ ~ ~ #ttr:breakable run setblock ~ ~ ~ air destroy
execute positioned ~-.5 ~.5 ~-.5 if block ~ ~ ~ #ttr:breakable run setblock ~ ~ ~ air destroy
execute positioned ~-.5 ~.5 ~.5 if block ~ ~ ~ #ttr:breakable run setblock ~ ~ ~ air destroy

#remove invulTime, too OP
#scoreboard players set @s[scores={invulTime=..5}] invulTime 5
#particle flame ~ ~.5 ~ 0.2 0.2 0.2 0.02 2 force @a
#playsound minecraft:entity.generic.burn master @a[distance=..60] ~ ~10 ~ .5 .1 .2

#flashy after images! sweet
execute unless score #force_turtles value matches 1 run summon minecraft:armor_stand ~ ~-2 ~ {Tags:["after_image_body","set_image"],Rotation:[0.0f],DisabledSlots:4144959,NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Glowing:0b,ArmorItems:[{},{},{},{id:"minecraft:yellow_dye",count:1,components:{"minecraft:item_model":"ttr/tanks/ghost_body"}}]}
execute unless score #force_turtles value matches 1 run summon minecraft:armor_stand ~ ~-2 ~ {Tags:["after_image_head","set_image"],Rotation:[0.0f],DisabledSlots:4144959,NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Glowing:0b,ArmorItems:[{},{},{},{id:"minecraft:green_dye",count:1,components:{"minecraft:item_model":"ttr/tanks/ghost_head"}}]}
execute if score #force_turtles value matches 1 run summon minecraft:armor_stand ~ ~-2 ~ {Tags:["after_image_body","set_image"],Rotation:[0.0f],DisabledSlots:4144959,NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Glowing:0b,ArmorItems:[{},{},{},{id:"minecraft:yellow_dye",count:1,components:{"minecraft:item_model":"ttr/turtles/ghost_body"}}]}
execute if score #force_turtles value matches 1 run summon minecraft:armor_stand ~ ~-2 ~ {Tags:["after_image_head","set_image"],Rotation:[0.0f],DisabledSlots:4144959,NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Glowing:0b,ArmorItems:[{},{},{},{id:"minecraft:green_dye",count:1,components:{"minecraft:item_model":"ttr/turtles/ghost_head"}}]}

execute as @e[limit=1,sort=nearest,tag=set_image,tag=after_image_body,type=armor_stand] at 00000014-0000-0001-0000-000000000002 run tp @s ~ ~-.1 ~ ~ ~
execute as @e[limit=1,sort=nearest,tag=set_image,tag=after_image_head,type=armor_stand] at 00000014-0000-0001-0000-000000000003 run tp @s ~ ~-.1 ~ ~ ~
scoreboard players set @e[limit=2,sort=nearest,tag=set_image] lifespan 11
tag @e[limit=2,sort=nearest,tag=set_image] remove set_image