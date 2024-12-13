scoreboard players operation #mutate value = @e[limit=1,sort=random,type=marker,tag=randomize,scores={randomize=1..4}] randomize

execute if score #mutate value matches 1 run scoreboard players add @s aiSkill 1
execute if score #mutate value matches 2 run scoreboard players add @s aiAggression 1
execute if score #mutate value matches 3 run scoreboard players add @s aiGreed 1
execute if score #mutate value matches 4 run scoreboard players add @s aiChaotic 1

scoreboard players set @s[scores={aiSkill=5..}] aiSkill 5
scoreboard players set @s[scores={aiAggression=5..}] aiAggression 5
scoreboard players set @s[scores={aiGreed=5..}] aiGreed 5
scoreboard players set @s[scores={aiChaotic=5..}] aiChaotic 5

execute if score #opt_aidifficulty value matches 1.. run function ttr:ai/mutate_limit