execute store result score #random1 value run random value 1..9
execute store result score #random2 value run random value 1..2

#1..7 = full tank
execute if score #random1 value matches 1..7 run scoreboard players set @s tankBodyModel 0
execute if score #random1 value matches 1..7 run scoreboard players set @s tankHeadModel 0

#8..9 = full turtle
execute if score #random1 value matches 8..9 run scoreboard players set @s tankBodyModel 1
execute if score #random1 value matches 8..9 run scoreboard players set @s tankHeadModel 1

#10 = mix (cut because it looks too silly)
#tank body, turtle head
execute if score #random1 value matches 10 if score #random2 value matches 1 run scoreboard players set @s tankBodyModel 0
execute if score #random1 value matches 10 if score #random2 value matches 1 run scoreboard players set @s tankHeadModel 1
#turtle body, tank head
execute if score #random1 value matches 10 if score #random2 value matches 2 run scoreboard players set @s tankBodyModel 1
execute if score #random1 value matches 10 if score #random2 value matches 2 run scoreboard players set @s tankHeadModel 0