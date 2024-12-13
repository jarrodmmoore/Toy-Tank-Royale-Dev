#check again in a random amount of time
execute if entity @s[scores={aiSkill=..1}] run scoreboard players operation #react_roll value = @e[limit=1,sort=random,type=marker,tag=randomize,scores={randomize=5..11}] randomize
execute if entity @s[scores={aiSkill=2}] run scoreboard players operation #react_roll value = @e[limit=1,sort=random,type=marker,tag=randomize,scores={randomize=4..10}] randomize
execute if entity @s[scores={aiSkill=3}] run scoreboard players operation #react_roll value = @e[limit=1,sort=random,type=marker,tag=randomize,scores={randomize=3..9}] randomize
execute if entity @s[scores={aiSkill=4}] run scoreboard players operation #react_roll value = @e[limit=1,sort=random,type=marker,tag=randomize,scores={randomize=2..8}] randomize
execute if entity @s[scores={aiSkill=5..}] run scoreboard players operation #react_roll value = @e[limit=1,sort=random,type=marker,tag=randomize,scores={randomize=1..7}] randomize

scoreboard players set #number value 2
scoreboard players operation #react_roll value *= #number value
scoreboard players operation @s aiReactTime = #react_roll value

execute if entity @s[scores={shootCooldown=..0,aiSkill=..2}] positioned ^ ^ ^2 if entity @e[distance=..2,tag=!self101,tag=p_can_hit,tag=!player_ded,tag=!mine] run tag @s add panic
execute if entity @s[scores={shootCooldown=..0,aiSkill=3}] positioned ^ ^ ^1 if entity @e[distance=..2,tag=!self101,tag=p_can_hit,tag=!player_ded,tag=!mine] run tag @s add panic
execute if entity @s[scores={shootCooldown=..0,aiSkill=4}] positioned ^ ^ ^ if entity @e[distance=..3,tag=!self101,tag=p_can_hit,tag=!player_ded,tag=!mine] run tag @s add panic
execute if entity @s[scores={shootCooldown=..0,aiSkill=5..}] positioned ^ ^ ^ if entity @e[distance=..4,tag=!self101,tag=p_can_hit,tag=!player_ded,tag=!mine] run tag @s add panic

#found something close by? panic and shoot at it!
execute if entity @s[tag=panic] run function ttr:ai/node_ai/32/react_panic