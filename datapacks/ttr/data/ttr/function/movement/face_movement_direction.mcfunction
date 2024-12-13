#don't do anything unless our coordinates changed significantly since the last tick
execute store result score #test_x value run data get entity @s Pos[0] 100
execute store result score #test_z value run data get entity @s Pos[2] 100
scoreboard players operation #mem_x value = #test_x value
scoreboard players operation #mem_z value = #test_z value
scoreboard players operation #test_x value -= @s coord_xx
scoreboard players operation #test_z value -= @s coord_zz
scoreboard players operation @s coord_xx = #mem_x value
scoreboard players operation @s coord_zz = #mem_z value
execute if score #test_x value matches -1..1 if score #test_z value matches -1..1 run return 0

#run by an entity at the position you want it to look at
summon marker ~ ~ ~ {UUID:[I;55,44,33,0]}
execute at @s facing entity 00000037-0000-002c-0000-002100000000 feet run tp @s ~ ~ ~ ~ ~
kill 00000037-0000-002c-0000-002100000000

#this is dumb.
#you would hope to do this in a single /execute command, but the "facing" part is always applied at an inconvenient time :/