#ok
tag @s add boomer

scoreboard players set #damage_source value 6
execute if entity @s[tag=remote_mine] run scoreboard players set #damage_source value 7
scoreboard players operation #attackerID value = @s playerID

#consume remote mine from inventory of its owner
execute if entity @s[tag=remote_mine] as @a[tag=inControl] if score @s playerID = #attackerID value run scoreboard players remove @s[scores={hasItem7=1..}] hasItem7 1
execute if entity @s[tag=remote_mine] as @a[tag=inControl] if score @s playerID = #attackerID value run clear @s[scores={hasItem7=1..}] gray_dye 1

scoreboard players set #recursions value 10
execute rotated 0 0 run function ttr:pellet/mine/recursion_1
scoreboard players set #recursions value 10
execute rotated 90 0 run function ttr:pellet/mine/recursion_1
scoreboard players set #recursions value 10
execute rotated 180 0 run function ttr:pellet/mine/recursion_1
scoreboard players set #recursions value 10
execute rotated 270 0 run function ttr:pellet/mine/recursion_1

particle explosion ~ ~1 ~ 0 0 0 0 1 force
playsound minecraft:entity.generic.explode master @a ~ ~4 ~ 5 .5
playsound minecraft:entity.generic.extinguish_fire master @a ~ ~4 ~ 5 .65

#kill @s
scoreboard players set @s lifespan 0
tag @s remove p_can_hit