scoreboard players set #-1 value -1
scoreboard players set #9000 value 9000
execute store result score @s rot_yaw run data get entity @s Rotation[0] 100

scoreboard players operation @s rot_yaw -= #9000 value
scoreboard players operation @s rot_yaw *= #-1 value

scoreboard players operation @s rot_yaw += #9000 value

execute store result entity @s Rotation[0] float 0.01 run scoreboard players get @s rot_yaw

scoreboard players set #recursions value 12
execute if entity @s[scores={mvmt_dz=..-1}] at @s run function ttr:pellet/reflect/z_escape_negative
execute if entity @s[scores={mvmt_dz=1..}] at @s run function ttr:pellet/reflect/z_escape_positive
#execute if entity @s[scores={mvmt_dz=..-1}] at @s run tp @s ~ ~ ~1
#execute if entity @s[scores={mvmt_dz=1..}] at @s run tp @s ~ ~ ~-1

tag @s[tag=check_it] remove check_it

playsound minecraft:block.bamboo.break master @a ~ ~10 ~ 2 2