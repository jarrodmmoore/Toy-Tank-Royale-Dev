#random chance of chasing down the target
execute store result score #chase_roll value run random value 1..20

#focus on objective? chance of chasing enemy gets cut in half
execute if entity @s[tag=ai_want_objective] store result score #focus_roll value run random value 1..2
execute if entity @s[tag=ai_want_objective] if score #focus_roll value matches 1 run scoreboard players set #chase_roll value 0

execute if entity @s[scores={aiAggression=..1}] if score #chase_roll value matches 16.. run tag @s add chase
execute if entity @s[scores={aiAggression=2}] if score #chase_roll value matches 15.. run tag @s add chase
execute if entity @s[scores={aiAggression=3}] if score #chase_roll value matches 14.. run tag @s add chase
execute if entity @s[scores={aiAggression=4}] if score #chase_roll value matches 13.. run tag @s add chase
execute if entity @s[scores={aiAggression=5..}] if score #chase_roll value matches 12.. run tag @s add chase

execute if entity @s[tag=chase] as @e[limit=1,sort=nearest,tag=checkLOS] at @s store result score #go_to_x value run data get entity @s Pos[0] 1
execute if entity @s[tag=chase] as @e[limit=1,sort=nearest,tag=checkLOS] at @s store result score #go_to_z value run data get entity @s Pos[2] 1
execute if entity @s[tag=chase] run scoreboard players set @s aiLogic 1
execute if entity @s[tag=chase] run scoreboard players operation @s aiTarget_x = #go_to_x value
execute if entity @s[tag=chase] run scoreboard players operation @s aiTarget_z = #go_to_z value