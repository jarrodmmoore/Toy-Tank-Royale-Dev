#chance of continuing to use vector fields
scoreboard players operation #nav_roll value = @e[limit=1,sort=random,type=marker,tag=randomize,scores={randomize=1..20}] randomize
scoreboard players operation #nav_roll value += @s aiAggression
scoreboard players operation #nav_roll value += @s aiSkill
execute if entity @s[tag=ai_want_objective] run scoreboard players add #nav_roll value 5

execute if score #nav_roll value matches ..18 run scoreboard players set @s aiSquareTime2 0

#always reset these values
scoreboard players set @s aiTargetDir 0
scoreboard players set @s aiTargetDir2 0
scoreboard players operation @s aiPrevSquare = #currentSquare value