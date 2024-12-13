scoreboard players set #recursions value 25
function ttr:random/powerups/spreadplayer_aec

#spawn the item
execute as @e[limit=1,tag=item_spawnpoint,type=marker] at @s positioned ~ ~-1.7 ~ run tp @e[limit=1,tag=gold_crown,type=armor_stand] ~ ~ ~ 0 0
kill @e[tag=item_spawnpoint,type=marker]

#we proceed to phase 2
scoreboard players set #crown_pickup_cooldown value 20
scoreboard players set #crown_keep_state value 1