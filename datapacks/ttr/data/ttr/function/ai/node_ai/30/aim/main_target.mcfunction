#i've got you in my sights
scoreboard players operation #look_ID value = @s aiLookID
execute if entity @s[tag=!looking_at_mine,tag=!looking_at_invisnode] as @e[tag=player_char,tag=!player_ded,type=zombie] if score @s playerID = #look_ID value run tag @s add ai_target
execute if entity @s[tag=looking_at_mine] as @e[tag=mine,tag=!remote_mine,type=armor_stand] if score @s playerID = #look_ID value run tag @s add ai_target
execute if entity @s[tag=looking_at_invisnode] as @e[tag=ai_random_shoot,type=area_effect_cloud] if score @s playerID = #look_ID value run tag @s add ai_target

#random aim offset
scoreboard players remove @s aiRandomOffsetT 1
execute if entity @s[scores={aiRandomOffsetT=..0}] run function ttr:ai/aim/get_random_offset

#aim??
#execute if entity @s[tag=!first_person] at @s rotated as @s positioned ~ ~1 ~ positioned ^ ^ ^5 run function ttr:movement/aim/raycast/check
execute at @e[limit=1,sort=nearest,tag=ai_target] run function ttr:ai/aim/aim_offset_x

execute if entity @s[scores={aiDelayAim=..0}] run tp 0000001e-0000-0001-0000-000000000003 ~ ~-1.2 ~ facing entity 000001a4-0000-0000-0000-000000000045 eyes
execute if entity @s[scores={aiDelayAim=1..}] run tp 0000001e-0000-0001-0000-000000000003 ~ ~-1.2 ~

#scoreboard players set #recursions value 8
#execute rotated as 0000001e-0000-0001-0000-000000000003 rotated ~ 0 positioned ~ ~.5 ~ run function ttr:movement/aim/show_aim


execute unless entity @e[limit=1,tag=ai_target] run scoreboard players set @s aiLookID -1
execute if entity @s[tag=!looking_at_mine] if score @s playerID = @s aiLookID run scoreboard players set @s aiLookID -1
execute if score @s aiLookID matches -1 run tag @s remove looking_at_mine
execute if score @s aiLookID matches -1 run tag @s remove looking_at_invisnode

kill 000001a4-0000-0000-0000-000000000045
tag @e[tag=ai_target] remove ai_target


#once in a while, make sure we still have line of sight
scoreboard players add @s checkLOStime 1
execute if entity @s[scores={checkLOStime=10..}] run function ttr:ai/aim/re_check_los