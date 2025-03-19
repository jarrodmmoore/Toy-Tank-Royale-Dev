scoreboard players set #item_id value 1

scoreboard players set #recursions value 15
function ttr:random/powerups/spreadplayer_aec

#spawn the item
scoreboard players set #coin_type value 0
scoreboard players set #coin_type_b value 0
scoreboard players operation #coin_type value = @e[limit=1,sort=random,type=marker,tag=randomize,tag=!itemBanC1,scores={randomize=1..10}] randomize
scoreboard players operation #coin_type_b value = @e[limit=1,sort=random,type=marker,tag=randomize,tag=!itemBanC2,scores={randomize=1..5}] randomize

#chance of being normal (5), mini (1), or mega (50)
execute unless score #force_turtles value matches 1 if score #coin_type value matches 1..7 as @e[limit=1,tag=item_spawnpoint,type=marker] at @s positioned ~ ~-1.5 ~ run summon armor_stand ~ ~ ~ {Tags:["item_chest","set_item","coin","gold_coin"],Small:1b,Invulnerable:1b,Invisible:1b,NoGravity:1b,DisabledSlots:4144959,equipment:{head:{id:"minecraft:black_dye",count:1,components:{"minecraft:item_model":"ttr/pickups/coin"}}}}
execute unless score #force_turtles value matches 1 if score #coin_type value matches 8..9 as @e[limit=1,tag=item_spawnpoint,type=marker] at @s positioned ~ ~-1.5 ~ run summon armor_stand ~ ~ ~ {Tags:["item_chest","set_item","coin","mini_coin"],Small:1b,Invulnerable:1b,Invisible:1b,NoGravity:1b,DisabledSlots:4144959,equipment:{head:{id:"minecraft:black_dye",count:1,components:{"minecraft:item_model":"ttr/pickups/coin_mini"}}}}
execute unless score #force_turtles value matches 1 if score #coin_type value matches 10 if score #coin_type_b value matches 1..3 as @e[limit=1,tag=item_spawnpoint,type=marker] at @s positioned ~ ~-1.5 ~ run summon armor_stand ~ ~ ~ {Tags:["item_chest","set_item","coin","gold_coin"],Small:1b,Invulnerable:1b,Invisible:1b,NoGravity:1b,DisabledSlots:4144959,equipment:{head:{id:"minecraft:black_dye",count:1,components:{"minecraft:item_model":"ttr/pickups/coin"}}}}
execute unless score #force_turtles value matches 1 if score #coin_type value matches 10 if score #coin_type_b value matches 4..5 as @e[limit=1,tag=item_spawnpoint,type=marker] at @s positioned ~ ~-1.5 ~ run summon armor_stand ~ ~ ~ {Tags:["item_chest","set_item","coin","mega_coin","priorityTarget"],Small:1b,Invulnerable:1b,Invisible:1b,NoGravity:1b,DisabledSlots:4144959,equipment:{head:{id:"minecraft:black_dye",count:1,components:{"minecraft:item_model":"ttr/pickups/coin_mega"}}}}
#turtle mode
execute if score #force_turtles value matches 1 if score #coin_type value matches 1..7 as @e[limit=1,tag=item_spawnpoint,type=marker] at @s positioned ~ ~-1.5 ~ run summon armor_stand ~ ~ ~ {Tags:["item_chest","set_item","coin","gold_coin"],Small:1b,Invulnerable:1b,Invisible:1b,NoGravity:1b,DisabledSlots:4144959,equipment:{head:{id:"minecraft:black_dye",count:1,components:{"minecraft:item_model":"ttr/pickups/coin_turtle"}}}}
execute if score #force_turtles value matches 1 if score #coin_type value matches 8..9 as @e[limit=1,tag=item_spawnpoint,type=marker] at @s positioned ~ ~-1.5 ~ run summon armor_stand ~ ~ ~ {Tags:["item_chest","set_item","coin","mini_coin"],Small:1b,Invulnerable:1b,Invisible:1b,NoGravity:1b,DisabledSlots:4144959,equipment:{head:{id:"minecraft:black_dye",count:1,components:{"minecraft:item_model":"ttr/pickups/coin_mini_turtle"}}}}
execute if score #force_turtles value matches 1 if score #coin_type value matches 10 if score #coin_type_b value matches 1..3 as @e[limit=1,tag=item_spawnpoint,type=marker] at @s positioned ~ ~-1.5 ~ run summon armor_stand ~ ~ ~ {Tags:["item_chest","set_item","coin","gold_coin"],Small:1b,Invulnerable:1b,Invisible:1b,NoGravity:1b,DisabledSlots:4144959,equipment:{head:{id:"minecraft:black_dye",count:1,components:{"minecraft:item_model":"ttr/pickups/coin_turtle"}}}}
execute if score #force_turtles value matches 1 if score #coin_type value matches 10 if score #coin_type_b value matches 4..5 as @e[limit=1,tag=item_spawnpoint,type=marker] at @s positioned ~ ~-1.5 ~ run summon armor_stand ~ ~ ~ {Tags:["item_chest","set_item","coin","mega_coin","priorityTarget"],Small:1b,Invulnerable:1b,Invisible:1b,NoGravity:1b,DisabledSlots:4144959,equipment:{head:{id:"minecraft:black_dye",count:1,components:{"minecraft:item_model":"ttr/pickups/coin_mega_turtle"}}}}

scoreboard players set @e[limit=1,tag=set_item,type=armor_stand] lifespan 10
scoreboard players set @e[limit=1,tag=set_item,type=armor_stand] itemLifetime 1
execute if score #coin_type value matches 1..7 run scoreboard players set @e[limit=1,tag=set_item,type=armor_stand] itemID 1
execute if score #coin_type value matches 8..9 run scoreboard players set @e[limit=1,tag=set_item,type=armor_stand] itemID 0
execute if score #coin_type value matches 10 if score #coin_type_b value matches 1..3 run scoreboard players set @e[limit=1,tag=set_item,type=armor_stand] itemID 1
execute if score #coin_type value matches 10 if score #coin_type_b value matches 4..5 run scoreboard players set @e[limit=1,tag=set_item,type=armor_stand] itemID -1
execute as @e[limit=1,tag=set_item,type=armor_stand] at @s run tp @s ~ ~1 ~
execute as @e[limit=1,tag=set_item,type=armor_stand] at @s run function ttr:random/powerups/get_area_location

tag @e[limit=1,tag=set_item] remove set_item
kill @e[tag=item_spawnpoint,type=marker]