#check again in a random amount of time
execute if entity @s[scores={aiChaotic=..1}] run scoreboard players operation #pellet_roll value = @e[limit=1,sort=random,type=marker,tag=randomize,scores={randomize=5..10}] randomize
execute if entity @s[scores={aiChaotic=2}] run scoreboard players operation #pellet_roll value = @e[limit=1,sort=random,type=marker,tag=randomize,scores={randomize=4..9}] randomize
execute if entity @s[scores={aiChaotic=3}] run scoreboard players operation #pellet_roll value = @e[limit=1,sort=random,type=marker,tag=randomize,scores={randomize=3..8}] randomize
execute if entity @s[scores={aiChaotic=4}] run scoreboard players operation #pellet_roll value = @e[limit=1,sort=random,type=marker,tag=randomize,scores={randomize=2..7}] randomize
execute if entity @s[scores={aiChaotic=5..}] run scoreboard players operation #pellet_roll value = @e[limit=1,sort=random,type=marker,tag=randomize,scores={randomize=1..6}] randomize

scoreboard players set #number value 7
execute if entity @s[scores={aiSkill=1}] run scoreboard players set #number value 10
execute if entity @s[scores={aiSkill=2}] run scoreboard players set #number value 9
execute if entity @s[scores={aiSkill=3}] run scoreboard players set #number value 8
scoreboard players operation #pellet_roll value *= #number value
scoreboard players operation @s aiThinkCooldown = #pellet_roll value

#pick a random pellet to maybe use, assuming we've got it
tag @e[type=marker,tag=randomize] remove specialViable
tag @e[limit=1,sort=random,type=marker,tag=randomize,scores={randomize=1}] add specialViable
execute if entity @s[scores={hasItem2=1..}] run tag @e[limit=1,sort=random,type=marker,tag=randomize,scores={randomize=2}] add specialViable
execute if entity @s[scores={hasItem3=1..}] run tag @e[limit=1,sort=random,type=marker,tag=randomize,scores={randomize=3}] add specialViable
execute if entity @s[scores={hasItem4=1..}] run tag @e[limit=1,sort=random,type=marker,tag=randomize,scores={randomize=4}] add specialViable
execute if entity @s[scores={hasItem5=1..}] run tag @e[limit=1,sort=random,type=marker,tag=randomize,scores={randomize=5}] add specialViable
execute if entity @s[scores={hasItem6=1..}] run tag @e[limit=1,sort=random,type=marker,tag=randomize,scores={randomize=6}] add specialViable
execute if entity @s[scores={hasItem7=1..}] run tag @e[limit=1,sort=random,type=marker,tag=randomize,scores={randomize=7}] add specialViable
execute if entity @s[scores={hasItem8=1..}] run tag @e[limit=1,sort=random,type=marker,tag=randomize,scores={randomize=8}] add specialViable
execute if entity @s[scores={hasItem9=1..}] run tag @e[limit=1,sort=random,type=marker,tag=randomize,scores={randomize=9}] add specialViable
scoreboard players operation #pellet_roll value = @e[limit=1,sort=random,type=marker,tag=randomize,tag=specialViable,scores={randomize=1..9}] randomize

#tag our remote mine
execute if score #pellet_roll value matches 7 run function ttr:ai/shoot/check_remote_mine

#use special
execute if score #pellet_roll value matches 2 run scoreboard players set @s[tag=shoot_LOS,scores={aiLookID=1..}] aiShootImpulse 2
execute if score #pellet_roll value matches 3 run scoreboard players set @s[tag=shoot_LOS,scores={aiLookID=1..}] aiShootImpulse 3
execute if score #pellet_roll value matches 4 run scoreboard players set @s[tag=shoot_LOS,scores={aiLookID=1..999998}] aiShootImpulse 4
execute if score #pellet_roll value matches 5 run scoreboard players set @s[tag=shoot_LOS,scores={aiLookID=1..999998}] aiShootImpulse 5
execute if score #pellet_roll value matches 6 unless entity @e[tag=mine,type=armor_stand,distance=..5] run scoreboard players set @s[scores={aiLookID=..-1}] aiShootImpulse 6
execute if score #pellet_roll value matches 7 if score #findTarget value matches 1.. run scoreboard players set @s aiShootImpulse 7
execute if score #pellet_roll value matches 8 if entity @e[tag=pellet,type=armor_stand,tag=!mine,distance=..6] run scoreboard players set @s aiShootImpulse 8
execute if score #pellet_roll value matches 9 run scoreboard players set @s[tag=shoot_LOS,scores={aiLookID=1..}] aiShootImpulse 9