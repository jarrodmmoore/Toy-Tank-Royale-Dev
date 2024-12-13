#random amount of time moved in this direction
execute if entity @s[scores={aiSkill=1}] run scoreboard players operation #move_roll value = @e[limit=1,sort=random,type=marker,tag=randomize,scores={randomize=1..10}] randomize
execute if entity @s[scores={aiSkill=2}] run scoreboard players operation #move_roll value = @e[limit=1,sort=random,type=marker,tag=randomize,scores={randomize=1..9}] randomize
execute if entity @s[scores={aiSkill=3}] run scoreboard players operation #move_roll value = @e[limit=1,sort=random,type=marker,tag=randomize,scores={randomize=1..8}] randomize
execute if entity @s[scores={aiSkill=4}] run scoreboard players operation #move_roll value = @e[limit=1,sort=random,type=marker,tag=randomize,scores={randomize=1..7}] randomize
execute if entity @s[scores={aiSkill=5}] run scoreboard players operation #move_roll value = @e[limit=1,sort=random,type=marker,tag=randomize,scores={randomize=1..6}] randomize

execute if score @s aiChaotic matches ..3 run scoreboard players set #number value 10
execute if score @s aiChaotic matches 4 run scoreboard players set #number value 9
execute if score @s aiChaotic matches 5.. run scoreboard players set #number value 8
scoreboard players operation #move_roll value *= #number value
scoreboard players operation @s aiMoveTime = #move_roll value

#random direction
tag @e[type=marker,tag=randomize] remove move_not_viable
execute unless block ~ ~ ~-1 #ttr:ai_move_okay run tag @e[limit=1,type=marker,tag=randomize,scores={randomize=1}] add move_not_viable
execute unless block ~1 ~ ~-1 #ttr:ai_move_okay run tag @e[limit=1,type=marker,tag=randomize,scores={randomize=2}] add move_not_viable
execute unless block ~1 ~ ~ #ttr:ai_move_okay run tag @e[limit=1,type=marker,tag=randomize,scores={randomize=3}] add move_not_viable
execute unless block ~1 ~ ~1 #ttr:ai_move_okay run tag @e[limit=1,type=marker,tag=randomize,scores={randomize=4}] add move_not_viable
execute unless block ~ ~ ~1 #ttr:ai_move_okay run tag @e[limit=1,type=marker,tag=randomize,scores={randomize=5}] add move_not_viable
execute unless block ~-1 ~ ~1 #ttr:ai_move_okay run tag @e[limit=1,type=marker,tag=randomize,scores={randomize=6}] add move_not_viable
execute unless block ~-1 ~ ~ #ttr:ai_move_okay run tag @e[limit=1,type=marker,tag=randomize,scores={randomize=7}] add move_not_viable
execute unless block ~-1 ~ ~-1 #ttr:ai_move_okay run tag @e[limit=1,type=marker,tag=randomize,scores={randomize=8}] add move_not_viable

#random chance to allow reverse movement
scoreboard players set #non_viable_moves value 0
execute as @e[type=marker,tag=move_not_viable] run scoreboard players add #non_viable_moves value 1
scoreboard players set #move_roll_c value 0
scoreboard players operation #move_roll_c value = @e[limit=1,sort=random,type=marker,tag=randomize,scores={randomize=1..3}] randomize
execute if score #non_viable_moves value matches 6.. run scoreboard players set #move_roll_c value 1

#don't move backwards.. unless there's danger nearby
execute if entity @s[scores={inputDir=1}] unless score #move_roll_c value matches 1 unless entity @e[distance=..5,sort=nearest,limit=1,tag=!self101,tag=p_can_hit] run tag @e[limit=3,type=marker,tag=randomize,scores={randomize=4..6}] add move_not_viable
execute if entity @s[scores={inputDir=2}] unless score #move_roll_c value matches 1 unless entity @e[distance=..5,sort=nearest,limit=1,tag=!self101,tag=p_can_hit] run tag @e[limit=3,type=marker,tag=randomize,scores={randomize=5..7}] add move_not_viable
execute if entity @s[scores={inputDir=3}] unless score #move_roll_c value matches 1 unless entity @e[distance=..5,sort=nearest,limit=1,tag=!self101,tag=p_can_hit] run tag @e[limit=3,type=marker,tag=randomize,scores={randomize=6..8}] add move_not_viable
execute if entity @s[scores={inputDir=4}] unless score #move_roll_c value matches 1 unless entity @e[distance=..5,sort=nearest,limit=1,tag=!self101,tag=p_can_hit] run tag @e[limit=2,type=marker,tag=randomize,scores={randomize=7..8}] add move_not_viable
execute if entity @s[scores={inputDir=4}] unless score #move_roll_c value matches 1 unless entity @e[distance=..5,sort=nearest,limit=1,tag=!self101,tag=p_can_hit] run tag @e[limit=1,type=marker,tag=randomize,scores={randomize=1}] add move_not_viable
execute if entity @s[scores={inputDir=5}] unless score #move_roll_c value matches 1 unless entity @e[distance=..5,sort=nearest,limit=1,tag=!self101,tag=p_can_hit] run tag @e[limit=1,type=marker,tag=randomize,scores={randomize=8}] add move_not_viable
execute if entity @s[scores={inputDir=5}] unless score #move_roll_c value matches 1 unless entity @e[distance=..5,sort=nearest,limit=1,tag=!self101,tag=p_can_hit] run tag @e[limit=2,type=marker,tag=randomize,scores={randomize=1..2}] add move_not_viable
execute if entity @s[scores={inputDir=6}] unless score #move_roll_c value matches 1 unless entity @e[distance=..5,sort=nearest,limit=1,tag=!self101,tag=p_can_hit] run tag @e[limit=3,type=marker,tag=randomize,scores={randomize=1..3}] add move_not_viable
execute if entity @s[scores={inputDir=7}] unless score #move_roll_c value matches 1 unless entity @e[distance=..5,sort=nearest,limit=1,tag=!self101,tag=p_can_hit] run tag @e[limit=3,type=marker,tag=randomize,scores={randomize=2..4}] add move_not_viable
execute if entity @s[scores={inputDir=8}] unless score #move_roll_c value matches 1 unless entity @e[distance=..5,sort=nearest,limit=1,tag=!self101,tag=p_can_hit] run tag @e[limit=3,type=marker,tag=randomize,scores={randomize=3..5}] add move_not_viable

scoreboard players set #move_roll_b value 0
scoreboard players operation #move_roll_b value = @e[limit=1,sort=random,type=marker,tag=randomize,tag=!move_not_viable,scores={randomize=1..8}] randomize

scoreboard players operation @s inputDir = #move_roll_b value