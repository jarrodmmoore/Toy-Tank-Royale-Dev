#high greed trait means more likely to keep looking
execute if entity @s[scores={aiGreed=..1}] run scoreboard players operation #look_roll value = @e[limit=1,sort=random,type=marker,tag=randomize,scores={randomize=1..20}] randomize
execute if entity @s[scores={aiGreed=2}] run scoreboard players operation #look_roll value = @e[limit=1,sort=random,type=marker,tag=randomize,scores={randomize=4..20}] randomize
execute if entity @s[scores={aiGreed=3}] run scoreboard players operation #look_roll value = @e[limit=1,sort=random,type=marker,tag=randomize,scores={randomize=8..20}] randomize
execute if entity @s[scores={aiGreed=4}] run scoreboard players operation #look_roll value = @e[limit=1,sort=random,type=marker,tag=randomize,scores={randomize=12..20}] randomize
execute if entity @s[scores={aiGreed=5..}] run scoreboard players operation #look_roll value = @e[limit=1,sort=random,type=marker,tag=randomize,scores={randomize=14..20}] randomize

#higher skill ai won't keep looking if there's danger around
scoreboard players set #danger value 0
execute as @e[distance=..11,tag=dont_spawn_here] run scoreboard players add #danger value 1
execute if score @s aiSkill matches ..1 if score #danger value matches 11.. run scoreboard players set #look_roll value 1
execute if score @s aiSkill matches 2 if score #danger value matches 9.. run scoreboard players set #look_roll value 1
execute if score @s aiSkill matches 3 if score #danger value matches 7.. run scoreboard players set #look_roll value 1
execute if score @s aiSkill matches 4 if score #danger value matches 5.. run scoreboard players set #look_roll value 1
execute if score @s aiSkill matches 5.. if score #danger value matches 3.. run scoreboard players set #look_roll value 1

#will we keep looking? we decide NOW!
execute if score #look_roll value matches 15.. unless score @s aiCarryFlag matches 1.. run scoreboard players set @s aiItemLookTime 10