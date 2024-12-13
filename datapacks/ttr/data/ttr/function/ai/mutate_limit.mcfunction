execute if score #opt_aidifficulty value matches 1 run scoreboard players set @s[scores={aiSkill=2..}] aiSkill 1
execute if score #opt_aidifficulty value matches 2 run scoreboard players set @s[scores={aiSkill=3..}] aiSkill 2
execute if score #opt_aidifficulty value matches 3 run scoreboard players set @s[scores={aiSkill=..1}] aiSkill 2
execute if score #opt_aidifficulty value matches 3 run scoreboard players set @s[scores={aiSkill=4..}] aiSkill 3
execute if score #opt_aidifficulty value matches 4 run scoreboard players set @s[scores={aiSkill=..2}] aiSkill 4
execute if score #opt_aidifficulty value matches 5 run scoreboard players set @s[scores={aiSkill=..3}] aiSkill 5

execute if score #opt_aidifficulty value matches 1 run scoreboard players set @s[scores={aiAggression=4..}] aiAggression 3
execute if score #opt_aidifficulty value matches 1 run scoreboard players set @s[scores={aiChaotic=4..}] aiChaotic 3

execute if score #opt_aidifficulty value matches 2 run scoreboard players set @s[scores={aiAggression=5..}] aiAggression 3
execute if score #opt_aidifficulty value matches 2 run scoreboard players set @s[scores={aiChaotic=5..}] aiChaotic 3



execute if score #opt_aidifficulty value matches 5 run scoreboard players set @s[scores={aiAggression=..2}] aiAggression 4
execute if score #opt_aidifficulty value matches 5 run scoreboard players set @s[scores={aiChaotic=..2}] aiChaotic 4

execute if score #opt_aidifficulty value matches 4 run scoreboard players set @s[scores={aiAggression=..1}] aiAggression 3
execute if score #opt_aidifficulty value matches 4 run scoreboard players set @s[scores={aiChaotic=..1}] aiChaotic 3