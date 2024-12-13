#check for line of sight again
scoreboard players operation #lookID value = @s aiLookID
execute if entity @s[tag=!looking_at_mine,tag=!looking_at_invisnode] as @e[tag=player_char,type=zombie,distance=..24] if score @s playerID = #lookID value run tag @s add checkLOS
execute if entity @s[tag=looking_at_mine] as @e[tag=mine,tag=!remote_mine,type=armor_stand,distance=..21] if score @s playerID = #lookID value run tag @s add checkLOS
execute if entity @s[tag=looking_at_invisnode] as @e[tag=ai_random_shoot,type=area_effect_cloud] if score @s playerID = #lookID value run tag @s add checkLOS

scoreboard players set #checkLOS value 0
execute if entity @s[tag=!looking_at_mine,tag=!looking_at_invisnode] as @e[limit=1,tag=checkLOS,type=zombie,distance=..24] facing entity @s eyes rotated ~ 0 run function ttr:ai/movement/check_los/_go_2
execute if entity @s[tag=looking_at_mine] as @e[limit=1,tag=checkLOS,type=armor_stand,distance=..21] facing entity @s eyes rotated ~ 0 run function ttr:ai/movement/check_los/_go_4
execute if entity @s[tag=looking_at_invisnode] if entity @e[limit=1,tag=checkLOS,type=area_effect_cloud,distance=..34] facing entity @s eyes rotated ~ 0 run function ttr:ai/movement/check_los/_go_5
tag @e[limit=1,tag=checkLOS,distance=..34] remove checkLOS

tag @s[tag=shoot_LOS] remove shoot_LOS
execute if score #checkLOS value matches 1 run tag @s[tag=!shoot_LOS] add shoot_LOS
execute if score #checkLOS value matches 1 run scoreboard players set @s aiLookTimeout 0
execute if score #checkLOS value matches 0 run scoreboard players add @s aiLookTimeout 1

#don't stare at mines for too long. shoot your shot or go away
execute if entity @s[tag=looking_at_mine,scores={aiLookTimeout=3..}] run scoreboard players set @s aiLookID -1
execute if entity @s[tag=looking_at_invisnode,scores={aiLookTimeout=3..}] run scoreboard players set @s aiLookID -1

#some ais are more persistent than others
execute if entity @s[scores={aiAggression=..1,aiLookTimeout=5..}] run scoreboard players set @s aiLookID -1
execute if entity @s[scores={aiAggression=2,aiLookTimeout=6..}] run scoreboard players set @s aiLookID -1
execute if entity @s[scores={aiAggression=3,aiLookTimeout=7..}] run scoreboard players set @s aiLookID -1
execute if entity @s[scores={aiAggression=4,aiLookTimeout=8..}] run scoreboard players set @s aiLookID -1
execute if entity @s[scores={aiAggression=5..,aiLookTimeout=10..}] run scoreboard players set @s aiLookID -1

scoreboard players set @s checkLOStime 0

execute if score @s aiLookID matches -1 run tag @s remove looking_at_mine