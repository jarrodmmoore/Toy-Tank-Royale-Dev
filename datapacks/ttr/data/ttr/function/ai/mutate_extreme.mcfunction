#small chance of getting a really skilled or really bad AI with uniform stats
scoreboard players operation #mutate_roll value = @e[limit=1,sort=random,type=marker,tag=randomize,scores={randomize=1..20}] randomize

execute if score #mutate_roll value matches 1 run scoreboard players set @s aiSkill 5
execute if score #mutate_roll value matches 1 run scoreboard players set @s aiGreed 5
execute if score #mutate_roll value matches 1 run scoreboard players set @s aiChaotic 5
execute if score #mutate_roll value matches 1 run scoreboard players set @s aiAggression 5

execute if score #mutate_roll value matches 2 run scoreboard players set @s aiSkill 4
execute if score #mutate_roll value matches 2 run scoreboard players set @s aiGreed 4
execute if score #mutate_roll value matches 2 run scoreboard players set @s aiChaotic 4
execute if score #mutate_roll value matches 2 run scoreboard players set @s aiAggression 4

execute if score #mutate_roll value matches 19 run scoreboard players set @s aiSkill 2
execute if score #mutate_roll value matches 19 run scoreboard players set @s aiGreed 2
execute if score #mutate_roll value matches 19 run scoreboard players set @s aiChaotic 2
execute if score #mutate_roll value matches 19 run scoreboard players set @s aiAggression 2

execute if score #mutate_roll value matches 20 run scoreboard players set @s aiSkill 1
execute if score #mutate_roll value matches 20 run scoreboard players set @s aiGreed 1
execute if score #mutate_roll value matches 20 run scoreboard players set @s aiChaotic 1
execute if score #mutate_roll value matches 20 run scoreboard players set @s aiAggression 1