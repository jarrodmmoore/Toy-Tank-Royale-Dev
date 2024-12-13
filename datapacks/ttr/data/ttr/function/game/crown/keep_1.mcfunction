scoreboard players set #royal_ID value 0
scoreboard players set #last_royal value 0
#tag @e[tag=keepCrownHolder] remove keepCrownHolder

#COME GET MEE
effect give @s minecraft:glowing 1 0 true
team join color_yellow @s

#crown becomes tangible after a second of doing animations n stuff
scoreboard players remove #crown_pickup_cooldown value 1

execute if score #crown_pickup_cooldown value matches 15 run particle cloud ~ ~1.2 ~ 0.2 0.2 0.2 0.03 4 normal
execute if score #crown_pickup_cooldown value matches 15 run tp @s ~ ~1 ~
execute if score #crown_pickup_cooldown value matches ..5 run tp @s ~ ~ ~ ~3.35 0

#particles! come pick me up, you fools
execute if score #crown_pickup_cooldown value matches ..0 run particle totem_of_undying ~ ~1 ~ 0 0 0 .4 1 force @a


#PICK-UP DETECTION
tag @s[tag=!priorityTarget] add priorityTarget
execute if score #crown_pickup_cooldown value matches ..0 positioned ~ 30 ~ if entity @e[limit=1,type=zombie,tag=player_char,tag=!player_ded,distance=..1] run function ttr:game/crown/tank_pick_up_crown


#must be a clear spot, otherwise move the crown again
execute if score #crown_pickup_cooldown value matches ..0 if score #crown_keep_state value matches ..1 unless block ~ 30 ~ air run scoreboard players set #crown_keep_state value 0
execute if score #crown_pickup_cooldown value matches ..0 if score #crown_keep_state value matches ..1 unless block ~ ~1 ~ air run scoreboard players set #crown_keep_state value 0
execute if score #crown_pickup_cooldown value matches ..0 if score #crown_keep_state value matches ..1 if block ~ ~ ~ air run scoreboard players set #crown_keep_state value 0