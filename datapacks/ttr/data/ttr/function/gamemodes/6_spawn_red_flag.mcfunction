scoreboard players set #recursions value 20
execute if score #red_spawn_square value matches 1 positioned -15 30 -15 run function ttr:random/powerups/spreadplayer_aec_flag
execute if score #red_spawn_square value matches 2 positioned 8 30 -15 run function ttr:random/powerups/spreadplayer_aec_flag
execute if score #red_spawn_square value matches 3 positioned 31 30 -15 run function ttr:random/powerups/spreadplayer_aec_flag
execute if score #red_spawn_square value matches 4 positioned -15 30 8 run function ttr:random/powerups/spreadplayer_aec_flag
execute if score #red_spawn_square value matches 5 positioned 8 30 8 run function ttr:random/powerups/spreadplayer_aec_flag
execute if score #red_spawn_square value matches 6 positioned 31 30 8 run function ttr:random/powerups/spreadplayer_aec_flag
execute if score #red_spawn_square value matches 7 positioned -15 30 31 run function ttr:random/powerups/spreadplayer_aec_flag
execute if score #red_spawn_square value matches 8 positioned 8 30 31 run function ttr:random/powerups/spreadplayer_aec_flag
execute if score #red_spawn_square value matches 9 positioned 31 30 31 run function ttr:random/powerups/spreadplayer_aec_flag

#spawn the item
execute as @e[limit=1,tag=item_spawnpoint,type=marker] at @s positioned ~ ~-2 ~ run summon armor_stand ~ ~ ~ {Tags:["ctf_flag","red_flag","set_item"],Glowing:1b,Small:1b,Invulnerable:1b,Invisible:1b,NoGravity:1b,DisabledSlots:4144959,equipment:{head:{id:"minecraft:black_dye",count:1,components:{"minecraft:item_model":"ttr/pickups/ctf_flag_red"}}}}

team join color_red @e[limit=1,tag=set_item,type=armor_stand]
scoreboard players set @e[limit=1,tag=set_item,type=armor_stand] lifespan 10
scoreboard players set @e[limit=1,tag=set_item,type=armor_stand] itemLifetime 1
execute as @e[limit=1,tag=set_item,type=armor_stand] at @s run tp @s ~ ~2 ~

tag @e[limit=1,tag=set_item] remove set_item

kill @e[type=marker,tag=item_spawnpoint]