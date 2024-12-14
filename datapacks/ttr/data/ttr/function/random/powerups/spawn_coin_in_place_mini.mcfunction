scoreboard players set #item_id value 0

#spawn the item
execute unless score #force_turtles value matches 1 positioned ~ ~-1.5 ~ run summon armor_stand ~ ~ ~ {Tags:["item_chest","set_item","coin","mini_coin","no_poof"],Small:1b,Invulnerable:1b,Invisible:1b,NoGravity:1b,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:black_dye",count:1,components:{"minecraft:item_model":"ttr/pickups/coin_mini"}}]}
execute if score #force_turtles value matches 1 positioned ~ ~-1.5 ~ run summon armor_stand ~ ~ ~ {Tags:["item_chest","set_item","coin","mini_coin","no_poof"],Small:1b,Invulnerable:1b,Invisible:1b,NoGravity:1b,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:black_dye",count:1,components:{"minecraft:item_model":"ttr/pickups/coin_mini_turtle"}}]}

scoreboard players set @e[limit=1,tag=set_item,type=armor_stand] lifespan 10
scoreboard players set @e[limit=1,tag=set_item,type=armor_stand] itemLifetime 1
scoreboard players set @e[limit=1,tag=set_item,type=armor_stand] itemID 0
execute as @e[limit=1,tag=set_item,type=armor_stand] at @s run tp @s ~ ~1 ~
execute as @e[limit=1,tag=set_item,type=armor_stand] at @s run function ttr:random/powerups/get_area_location

tag @e[limit=1,tag=set_item] remove set_item