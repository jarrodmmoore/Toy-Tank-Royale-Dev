scoreboard players remove #recursions value 1

#canary in the coal mine
summon area_effect_cloud 8 31 8 {Duration:1,Tags:["aec_spawnpoint"]}
execute as @e[tag=aec_spawnpoint] at @s run spreadplayers 8 8 34 34 under 30 false @s

#store coordinates we landed at
execute as @e[type=area_effect_cloud,tag=aec_spawnpoint] at @s run execute store result score #char_set_x value run data get entity @s Pos[0] 1
execute as @e[type=area_effect_cloud,tag=aec_spawnpoint] at @s run execute store result score #char_set_z value run data get entity @s Pos[2] 1

#try to find a spawnpoint that doesn't have a lot happening (recursion up to 20 times in attempt to find it)
scoreboard players set #good_spawn value 1
execute if score #recursions value matches 15.. as @e[type=area_effect_cloud,tag=aec_spawnpoint] at @s if entity @e[tag=dont_spawn_here,distance=..9] run scoreboard players set #good_spawn value 0
execute if score #recursions value matches 9..14 as @e[type=area_effect_cloud,tag=aec_spawnpoint] at @s if entity @e[tag=dont_spawn_here,distance=..7] run scoreboard players set #good_spawn value 0
execute if score #recursions value matches 5..8 as @e[type=area_effect_cloud,tag=aec_spawnpoint] at @s if entity @e[tag=dont_spawn_here,distance=..5] run scoreboard players set #good_spawn value 0
execute if score #recursions value matches 1..4 as @e[type=area_effect_cloud,tag=aec_spawnpoint] at @s if entity @e[tag=dont_spawn_here,distance=..3] run scoreboard players set #good_spawn value 0

#are we a player_char instead of a player? just warp right to the location, then
execute if score #good_spawn value matches 1 if entity @s[type=!player] run tp @s @e[type=area_effect_cloud,tag=aec_spawnpoint,limit=1]

#kill butt
kill @e[type=area_effect_cloud,tag=aec_spawnpoint,limit=1]

#recursion if this spawnpoint was garbage
execute if score #good_spawn value matches 0 if score #recursions value matches 1.. run function ttr:random/spreadplayer_aec