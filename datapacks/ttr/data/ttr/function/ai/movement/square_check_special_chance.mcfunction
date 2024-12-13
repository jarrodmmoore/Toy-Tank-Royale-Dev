#higher priority on the special navigation vector field means we're more likely to pathfind toward the target (chance is reduced with lower skill level)
#(wtf did i even just say there? this techno babble is getting out of hand)

scoreboard players operation #math value = @e[limit=1,sort=random,type=marker,tag=randomize,scores={randomize=1..13}] randomize
execute if score @s aiSkill matches ..1 run scoreboard players remove #math value 7
execute if score @s aiSkill matches 2 run scoreboard players remove #math value 6
execute if score @s aiSkill matches 3 run scoreboard players remove #math value 5
execute if score @s aiSkill matches 4 run scoreboard players remove #math value 4
execute if score @s aiSkill matches 5.. run scoreboard players remove #math value 3

execute if score #math value > #sp_nav_chance value run scoreboard players set @s aiTargetDir 5
execute if score #math value > #sp_nav_chance value run scoreboard players add @s aiSquareTime3 1