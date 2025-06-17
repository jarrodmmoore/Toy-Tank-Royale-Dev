#scoreboard players set #item_id value 1

scoreboard players set #recursions value 15
function ttr:random/powerups/spreadplayer_aec

#spawn the item
execute as @e[limit=1,tag=item_spawnpoint,type=marker] at @s positioned ~ ~-1.5 ~ run summon area_effect_cloud ~ ~ ~ {Tags:["ai_random_shoot","set_r_id"],custom_particle:{type:"block",block_state:{Name:"air"}},WaitTime:0,Duration:100}
scoreboard players operation @e[limit=1,type=area_effect_cloud,tag=set_r_id] playerID = #invis_node_id value
scoreboard players add #invis_node_id value 1

kill @e[tag=item_spawnpoint,type=marker]