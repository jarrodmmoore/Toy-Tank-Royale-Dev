#shoot again in a random amount of time
execute if entity @s[scores={aiAggression=..1}] run scoreboard players operation #halt_roll value = @e[limit=1,sort=random,type=marker,tag=randomize,scores={randomize=1..20}] randomize
execute if entity @s[scores={aiAggression=2}] run scoreboard players operation #halt_roll value = @e[limit=1,sort=random,type=marker,tag=randomize,scores={randomize=2..20}] randomize
execute if entity @s[scores={aiAggression=3}] run scoreboard players operation #halt_roll value = @e[limit=1,sort=random,type=marker,tag=randomize,scores={randomize=3..20}] randomize
execute if entity @s[scores={aiAggression=4}] run scoreboard players operation #halt_roll value = @e[limit=1,sort=random,type=marker,tag=randomize,scores={randomize=4..20}] randomize
execute if entity @s[scores={aiAggression=5..}] run scoreboard players operation #halt_roll value = @e[limit=1,sort=random,type=marker,tag=randomize,scores={randomize=5..20}] randomize

scoreboard players set #number value 3
execute if entity @s[scores={aiSkill=..1}] run scoreboard players set #number value 12
execute if entity @s[scores={aiSkill=2}] run scoreboard players set #number value 8

execute if score #halt_roll value matches ..5 run scoreboard players operation @s shootCooldown += #number value
