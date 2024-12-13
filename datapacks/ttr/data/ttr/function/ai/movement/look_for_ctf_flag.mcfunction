#try to pick up enemy flag
#also try to return our own flag home
#and don't target the flag we're currently carrying

execute if entity @s[tag=redTeam,scores={aiCarryFlag=..0}] as @e[tag=ctf_flag,distance=..15,type=armor_stand] unless entity @s[tag=red_flag,tag=!not_home] run tag @s add possibleLOS
execute if entity @s[tag=redTeam,scores={aiCarryFlag=1..}] as @e[tag=ctf_flag,distance=..15,type=armor_stand] unless entity @s[tag=blue_flag] run tag @s add possibleLOS

execute if entity @s[tag=blueTeam,scores={aiCarryFlag=..0}] as @e[tag=ctf_flag,distance=..15,type=armor_stand] unless entity @s[tag=blue_flag,tag=!not_home] run tag @s add possibleLOS
execute if entity @s[tag=blueTeam,scores={aiCarryFlag=1..}] as @e[tag=ctf_flag,distance=..15,type=armor_stand] unless entity @s[tag=red_flag] run tag @s add possibleLOS

execute if entity @s[tag=!redTeam,tag=!blueTeam,scores={aiCarryFlag=..0}] as @e[tag=ctf_flag,distance=..15,type=armor_stand] run tag @s add possibleLOS

#go for one of the (valid) flags
tag @e[tag=possibleLOS,type=armor_stand,limit=1,sort=random,distance=..15] add checkLOS

#check for line of sight to the target
scoreboard players set #checkLOS value 0
execute as @e[limit=1,tag=checkLOS,type=armor_stand,distance=..15] facing entity @s eyes rotated ~ 0 run function ttr:ai/movement/check_los/_go_3

#line of sight! go get that item!
execute if score #checkLOS value matches 1 as @e[limit=1,tag=checkLOS,type=armor_stand,distance=..15] at @s store result score #go_to_x value run data get entity @s Pos[0] 1
execute if score #checkLOS value matches 1 as @e[limit=1,tag=checkLOS,type=armor_stand,distance=..15] at @s store result score #go_to_z value run data get entity @s Pos[2] 1
execute if score #checkLOS value matches 1 run scoreboard players set @s aiLogic 1
execute if score #checkLOS value matches 1 run scoreboard players operation @s aiTarget_x = #go_to_x value
execute if score #checkLOS value matches 1 run scoreboard players operation @s aiTarget_z = #go_to_z value

tag @e[tag=possibleLOS,type=armor_stand,distance=..15] remove possibleLOS
tag @e[limit=1,tag=checkLOS,type=armor_stand,distance=..15] remove checkLOS