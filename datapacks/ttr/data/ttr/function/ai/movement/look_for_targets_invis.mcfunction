#either check the nearest invis node or a random one nearby
execute if score @s aiChaotic matches ..1 store result score #look_roll value run random value 1..16
execute if score @s aiChaotic matches 2 store result score #look_roll value run random value 1..14
execute if score @s aiChaotic matches 3 store result score #look_roll value run random value 1..12
execute if score @s aiChaotic matches 4 store result score #look_roll value run random value 1..10
execute if score @s aiChaotic matches 5.. store result score #look_roll value run random value 1..8
execute if entity @s[scores={aiChaotic=3..,infinite_bounce=5..}] store result score #look_roll value run random value 1..6
execute if score #look_roll value matches 1..3 run tag @e[limit=1,sort=nearest,tag=ai_random_shoot,type=area_effect_cloud,distance=..30] add checkLOS
execute if score #look_roll value matches 4..5 run tag @e[limit=1,sort=random,tag=ai_random_shoot,type=area_effect_cloud,distance=..30] add checkLOS

#check for line of sight to the target (if it exists)
scoreboard players set #checkLOS value 0
execute as @e[limit=1,tag=checkLOS,type=area_effect_cloud,distance=..30] facing entity @s eyes rotated ~ 0 run function ttr:ai/movement/check_los/_go_5

#must be a reasonable distance away
execute if score #checkLOS value matches 1.. if score #recursions value matches 27.. run scoreboard players set #checkLOS value 0

#line of sight! shoot at it!
execute if score #checkLOS value matches 1.. run tag @s add looking_at_invisnode
execute if score #checkLOS value matches 1.. run scoreboard players operation @s aiLookID = @e[limit=1,tag=checkLOS,type=area_effect_cloud,distance=..30] playerID
execute if score #checkLOS value matches 1.. run scoreboard players set @s aiLookTimeout 0
execute if score #checkLOS value matches 1.. run scoreboard players set @s checkLOStime 8

tag @e[limit=1,tag=checkLOS,type=area_effect_cloud,distance=..30] remove checkLOS