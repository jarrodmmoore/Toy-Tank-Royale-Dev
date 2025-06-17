scoreboard players remove #recursions value 1

#canary in the coal mine
summon area_effect_cloud ~ 31 ~ {custom_particle:{type:"block",block_state:{Name:"air"}},WaitTime:0,Duration:1,Tags:["aec_spawnpoint"]}
execute as @e[tag=aec_spawnpoint] at @s run spreadplayers ~ ~ 10 10 under 30 false @s


#try to find a spawnpoint that doesn't have a lot happening (recursion up to 20 times in attempt to find it)
scoreboard players set #good_spawn value 1
execute if score #recursions value matches 10.. as @e[type=area_effect_cloud,tag=aec_spawnpoint] at @s if entity @e[tag=player_char,tag=!player_ded,distance=..7] run scoreboard players set #good_spawn value 0
execute if score #recursions value matches 5..9 as @e[type=area_effect_cloud,tag=aec_spawnpoint] at @s if entity @e[tag=player_char,tag=!player_ded,distance=..4] run scoreboard players set #good_spawn value 0
execute if score #recursions value matches 1..4 as @e[type=area_effect_cloud,tag=aec_spawnpoint] at @s if entity @e[tag=player_char,tag=!player_ded,distance=..2] run scoreboard players set #good_spawn value 0

#are we a player_char instead of a player? just warp right to the location, then
execute if score #good_spawn value matches 1 at @e[type=area_effect_cloud,tag=aec_spawnpoint,limit=1] run summon marker ~ ~ ~ {Tags:["item_spawnpoint"]}

#kill butt
kill @e[type=area_effect_cloud,tag=aec_spawnpoint]

#recursion if this spawnpoint was garbage
execute if score #good_spawn value matches 0 if score #recursions value matches 1.. run function ttr:random/powerups/spreadplayer_aec_flag