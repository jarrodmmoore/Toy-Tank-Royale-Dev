#check again in a random amount of time
execute if entity @s[scores={aiGreed=..1}] run scoreboard players operation #look_roll value = @e[limit=1,sort=random,type=marker,tag=randomize,scores={randomize=5..10}] randomize
execute if entity @s[scores={aiGreed=2}] run scoreboard players operation #look_roll value = @e[limit=1,sort=random,type=marker,tag=randomize,scores={randomize=4..9}] randomize
execute if entity @s[scores={aiGreed=3}] run scoreboard players operation #look_roll value = @e[limit=1,sort=random,type=marker,tag=randomize,scores={randomize=3..8}] randomize
execute if entity @s[scores={aiGreed=4}] run scoreboard players operation #look_roll value = @e[limit=1,sort=random,type=marker,tag=randomize,scores={randomize=2..7}] randomize
execute if entity @s[scores={aiGreed=5..}] run scoreboard players operation #look_roll value = @e[limit=1,sort=random,type=marker,tag=randomize,scores={randomize=1..6}] randomize

scoreboard players set #number value 5
scoreboard players operation #look_roll value *= #number value
scoreboard players operation @s aiItemLookTime = #look_roll value

#either check the nearest pickup or a random one nearby
execute store result score #look_roll value run random value 1..2
execute if score #look_roll value matches 1 run tag @e[limit=1,sort=nearest,distance=..20,tag=item_chest,type=armor_stand] add checkLOS
execute if score #look_roll value matches 2 run tag @e[limit=1,sort=random,distance=..20,tag=item_chest,type=armor_stand] add checkLOS

#check for line of sight to the pickup (if it exists)
scoreboard players set #checkLOS value 0
execute as @e[limit=1,tag=checkLOS,type=armor_stand,distance=..20] facing entity @s eyes rotated ~ 0 run function ttr:ai/movement/check_los/_go_1


#higher skill AI don't get baited by low priority items while carrying a flag in ctf
execute if score #opt_gamemode value matches 6 if entity @s[scores={aiCarryFlag=1..,aiSkill=3..,aiChaotic=..4}] run scoreboard players set #checkLOS value 0
execute if score #opt_gamemode value matches 6 if entity @s[scores={aiCarryFlag=1..,aiSkill=5..}] run scoreboard players set #checkLOS value 0

#focus on objective? half the chance of chasing the item
execute if entity @s[tag=ai_want_objective] run scoreboard players operation #focus_roll value = @e[limit=1,sort=random,type=marker,tag=randomize,scores={randomize=1..2}] randomize
execute if entity @s[tag=ai_want_objective] if score #focus_roll value matches 1 run scoreboard players set #checkLOS value 0

#line of sight! go get that item!
execute if score #checkLOS value matches 1 as @e[limit=1,tag=checkLOS,type=armor_stand,distance=..20] at @s store result score #go_to_x value run data get entity @s Pos[0] 1
execute if score #checkLOS value matches 1 as @e[limit=1,tag=checkLOS,type=armor_stand,distance=..20] at @s store result score #go_to_z value run data get entity @s Pos[2] 1
execute if score #checkLOS value matches 1 run scoreboard players set @s aiLogic 1
execute if score #checkLOS value matches 1 run scoreboard players operation @s aiTarget_x = #go_to_x value
execute if score #checkLOS value matches 1 run scoreboard players operation @s aiTarget_z = #go_to_z value

tag @e[limit=1,tag=checkLOS,type=armor_stand,distance=..20] remove checkLOS


#is there a priority target nearby? chase it. if LOS is found, this overrides anything else we tried to do in this function
execute if entity @e[tag=priorityTarget,tag=!self101,distance=..10,type=armor_stand] run function ttr:ai/movement/look_for_priority_target

#ctf mode: try to grab the flag
execute if score #opt_gamemode value matches 6 at @s if entity @e[tag=ctf_flag,distance=..15,type=armor_stand] run function ttr:ai/movement/look_for_ctf_flag