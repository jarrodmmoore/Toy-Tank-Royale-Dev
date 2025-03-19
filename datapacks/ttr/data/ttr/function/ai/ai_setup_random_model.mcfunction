execute store result score #random1 value run random value 1..20
execute store result score #random2 value run random value 1..2

#1..14 = full tank
execute if score #random1 value matches 1..14 run scoreboard players set @s tankBodyModel 0
execute if score #random1 value matches 1..14 run scoreboard players set @s tankHeadModel 0

#15..19 = full turtle
execute if score #random1 value matches 15..19 run scoreboard players set @s tankBodyModel 1
execute if score #random1 value matches 15..19 run scoreboard players set @s tankHeadModel 1

#20 = mix (lmao this looks funny)
#tank body, turtle head
execute if score #random1 value matches 20 if score #random2 value matches 1 run scoreboard players set @s tankBodyModel 0
execute if score #random1 value matches 20 if score #random2 value matches 1 run scoreboard players set @s tankHeadModel 1
#turtle body, tank head
execute if score #random1 value matches 20 if score #random2 value matches 2 run scoreboard players set @s tankBodyModel 1
execute if score #random1 value matches 20 if score #random2 value matches 2 run scoreboard players set @s tankHeadModel 0