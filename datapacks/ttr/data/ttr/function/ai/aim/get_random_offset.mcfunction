scoreboard players set @s aiRandomOffsetX 0
scoreboard players set @s aiRandomOffsetZ 0

#check again in a random amount of time
execute if entity @s[scores={aiChaotic=..1}] run scoreboard players operation #time_roll value = @e[limit=1,sort=random,type=marker,tag=randomize,scores={randomize=5..10}] randomize
execute if entity @s[scores={aiChaotic=2}] run scoreboard players operation #time_roll value = @e[limit=1,sort=random,type=marker,tag=randomize,scores={randomize=4..9}] randomize
execute if entity @s[scores={aiChaotic=3}] run scoreboard players operation #time_roll value = @e[limit=1,sort=random,type=marker,tag=randomize,scores={randomize=3..8}] randomize
execute if entity @s[scores={aiChaotic=4}] run scoreboard players operation #time_roll value = @e[limit=1,sort=random,type=marker,tag=randomize,scores={randomize=2..7}] randomize
execute if entity @s[scores={aiChaotic=5..}] run scoreboard players operation #time_roll value = @e[limit=1,sort=random,type=marker,tag=randomize,scores={randomize=1..6}] randomize

scoreboard players set #number value 4
scoreboard players operation #time_roll value *= #number value
scoreboard players operation @s aiRandomOffsetT = #time_roll value

#get random offset
execute if entity @s[scores={aiSkill=..3}] run scoreboard players operation #offset_roll_x value = @e[limit=1,sort=random,type=marker,tag=randomize,scores={randomize=1..7}] randomize
execute if entity @s[scores={aiSkill=..3}] run scoreboard players operation #offset_roll_z value = @e[limit=1,sort=random,type=marker,tag=randomize,scores={randomize=1..7}] randomize
execute if entity @s[scores={aiSkill=4}] run scoreboard players operation #offset_roll_x value = @e[limit=1,sort=random,type=marker,tag=randomize,scores={randomize=2..6}] randomize
execute if entity @s[scores={aiSkill=4}] run scoreboard players operation #offset_roll_z value = @e[limit=1,sort=random,type=marker,tag=randomize,scores={randomize=2..6}] randomize
execute if entity @s[scores={aiSkill=5..}] run scoreboard players operation #offset_roll_x value = @e[limit=1,sort=random,type=marker,tag=randomize,scores={randomize=3..5}] randomize
execute if entity @s[scores={aiSkill=5..}] run scoreboard players operation #offset_roll_z value = @e[limit=1,sort=random,type=marker,tag=randomize,scores={randomize=3..5}] randomize

#low skill ai have bad aim? (re-roll for worse aim)
execute if entity @s[scores={aiSkill=..2}] if score #offset_roll_x value matches 4 run scoreboard players operation #offset_roll_x value = @e[limit=1,sort=random,type=marker,tag=randomize,scores={randomize=1..7}] randomize
execute if entity @s[scores={aiSkill=..2}] if score #offset_roll_z value matches 4 run scoreboard players operation #offset_roll_z value = @e[limit=1,sort=random,type=marker,tag=randomize,scores={randomize=1..7}] randomize
execute if entity @s[scores={aiSkill=..1}] if score #offset_roll_x value matches 3..5 run scoreboard players operation #offset_roll_x value = @e[limit=1,sort=random,type=marker,tag=randomize,scores={randomize=1..7}] randomize
execute if entity @s[scores={aiSkill=..1}] if score #offset_roll_z value matches 3..5 run scoreboard players operation #offset_roll_z value = @e[limit=1,sort=random,type=marker,tag=randomize,scores={randomize=1..7}] randomize

scoreboard players operation @s aiRandomOffsetX = #offset_roll_x value
scoreboard players operation @s aiRandomOffsetZ = #offset_roll_z value
scoreboard players set #number value 3
scoreboard players operation @s aiRandomOffsetX -= #number value
scoreboard players operation @s aiRandomOffsetZ -= #number value
