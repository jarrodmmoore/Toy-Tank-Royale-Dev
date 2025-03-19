scoreboard players set #item_id value 3

scoreboard players set #recursions value 15
function ttr:random/powerups/spreadplayer_aec

#spawn the item
execute as @e[limit=1,tag=item_spawnpoint,type=marker] at @s positioned ~ ~-1.5 ~ run summon armor_stand ~ ~ ~ {Tags:["item_chest","set_item","weapon"],Small:1b,Invulnerable:1b,Invisible:1b,NoGravity:1b,DisabledSlots:4144959,equipment:{head:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{id:[I;-2047472913,1229277072,-1972468419,-693946857],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjM3Y2FlNWM1MWViMTU1OGVhODI4ZjU4ZTBkZmY4ZTZiN2IwYjFhMTgzZDczN2VlY2Y3MTQ2NjE3NjEifX19"}]}}}}}

scoreboard players set @e[limit=1,tag=set_item,type=armor_stand] lifespan 10
scoreboard players set @e[limit=1,tag=set_item,type=armor_stand] itemLifetime 1
scoreboard players set @e[limit=1,tag=set_item,type=armor_stand] itemID 3
execute as @e[limit=1,tag=set_item,type=armor_stand] at @s run tp @s ~ ~1 ~
execute as @e[limit=1,tag=set_item,type=armor_stand] at @s run function ttr:random/powerups/get_area_location

tag @e[limit=1,tag=set_item] remove set_item