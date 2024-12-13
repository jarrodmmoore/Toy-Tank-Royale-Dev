scoreboard players add @s color_cycle 1
scoreboard players set @s[scores={color_cycle=5..}] color_cycle 1

execute if score @s color_cycle matches 1 run function ttr:pellet/particles_1
execute if score @s color_cycle matches 3 run function ttr:pellet/particles_2