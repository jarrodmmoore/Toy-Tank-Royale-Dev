scoreboard players operation #mutate value = @e[limit=1,sort=random,type=marker,tag=randomize,scores={randomize=1..4}] randomize

execute if score #mutate value matches 1 run scoreboard players remove @s aiSkill 1
execute if score #mutate value matches 2 run scoreboard players remove @s aiAggression 1
execute if score #mutate value matches 3 run scoreboard players remove @s aiGreed 1
execute if score #mutate value matches 4 run scoreboard players remove @s aiChaotic 1

scoreboard players set @s[scores={aiSkill=..1}] aiSkill 1
scoreboard players set @s[scores={aiAggression=..1}] aiAggression 1
scoreboard players set @s[scores={aiGreed=..1}] aiGreed 1
scoreboard players set @s[scores={aiChaotic=..1}] aiChaotic 1

execute if score #opt_aidifficulty value matches 1.. run function ttr:ai/mutate_limit