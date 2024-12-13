#each wall type has 4 variations, including solid

#get a random value corresponding to a wall
scoreboard players operation @s math = @e[limit=1,sort=random,tag=randomize,scores={randomize=1..6}] randomize
scoreboard players operation @s math2 = @e[limit=1,sort=random,tag=randomize,scores={randomize=1..4}] randomize

scoreboard players set #10 value 10
scoreboard players operation @s math *= #10 value

#must be solid wall if either of our neighboring areas is empty
scoreboard players set #solid_wall value 0
execute if entity @s[tag=w1] if score #area_1_active value matches 0 run scoreboard players set #solid_wall value 1
execute if entity @s[tag=w1] if score #area_2_active value matches 0 run scoreboard players set #solid_wall value 1
execute if entity @s[tag=w2] if score #area_2_active value matches 0 run scoreboard players set #solid_wall value 1
execute if entity @s[tag=w2] if score #area_3_active value matches 0 run scoreboard players set #solid_wall value 1
execute if entity @s[tag=w6] if score #area_4_active value matches 0 run scoreboard players set #solid_wall value 1
execute if entity @s[tag=w6] if score #area_5_active value matches 0 run scoreboard players set #solid_wall value 1
execute if entity @s[tag=w7] if score #area_5_active value matches 0 run scoreboard players set #solid_wall value 1
execute if entity @s[tag=w7] if score #area_6_active value matches 0 run scoreboard players set #solid_wall value 1
execute if entity @s[tag=w11] if score #area_7_active value matches 0 run scoreboard players set #solid_wall value 1
execute if entity @s[tag=w11] if score #area_8_active value matches 0 run scoreboard players set #solid_wall value 1
execute if entity @s[tag=w12] if score #area_8_active value matches 0 run scoreboard players set #solid_wall value 1
execute if entity @s[tag=w12] if score #area_9_active value matches 0 run scoreboard players set #solid_wall value 1

execute if score #solid_wall value matches 1.. run scoreboard players set @s math 0
scoreboard players operation @s math += @s math2

#50% chance to do a basic wall instead of a random one (looks better)
scoreboard players operation @s math2 = @e[limit=1,sort=random,tag=randomize,scores={randomize=1..2}] randomize
execute if score @s math2 matches 2 run scoreboard players add @s[scores={math=10..49}] math 10
execute if score @s math2 matches 2 run scoreboard players add @s[scores={math=10..49}] math 10
execute if score @s math2 matches 2 run scoreboard players add @s[scores={math=10..49}] math 10
execute if score @s math2 matches 2 run scoreboard players add @s[scores={math=10..49}] math 10
execute if score @s math2 matches 2 run scoreboard players remove @s[scores={math=60..}] math 10

#now CLONE it

#empty
execute if entity @s[scores={math=1}] run clone -11 143 15 -10 145 -3 ~ ~ ~
execute if entity @s[scores={math=2}] run clone -11 143 -7 -10 145 -25 ~ ~ ~
execute if entity @s[scores={math=3}] run clone -11 143 -29 -10 145 -47 ~ ~ ~
execute if entity @s[scores={math=4}] run clone -11 143 -51 -10 145 -69 ~ ~ ~

#other walls
execute if entity @s[scores={math=11}] run clone -6 143 15 -5 145 -3 ~ ~ ~
execute if entity @s[scores={math=12}] run clone -6 143 -7 -5 145 -25 ~ ~ ~
execute if entity @s[scores={math=13}] run clone -6 143 -29 -5 145 -47 ~ ~ ~
execute if entity @s[scores={math=14}] run clone -6 143 -51 -5 145 -69 ~ ~ ~

execute if entity @s[scores={math=21}] run clone -1 143 15 0 145 -3 ~ ~ ~
execute if entity @s[scores={math=22}] run clone -1 143 -7 0 145 -25 ~ ~ ~
execute if entity @s[scores={math=23}] run clone -1 143 -29 0 145 -47 ~ ~ ~
execute if entity @s[scores={math=24}] run clone -1 143 -51 0 145 -69 ~ ~ ~

execute if entity @s[scores={math=31}] run clone 4 143 15 5 145 -3 ~ ~ ~
execute if entity @s[scores={math=32}] run clone 4 143 -7 5 145 -25 ~ ~ ~
execute if entity @s[scores={math=33}] run clone 4 143 -29 5 145 -47 ~ ~ ~
execute if entity @s[scores={math=34}] run clone 4 143 -51 5 145 -69 ~ ~ ~

execute if entity @s[scores={math=41}] run clone 9 143 15 10 145 -3 ~ ~ ~
execute if entity @s[scores={math=42}] run clone 9 143 -7 10 145 -25 ~ ~ ~
execute if entity @s[scores={math=43}] run clone 9 143 -29 10 145 -47 ~ ~ ~
execute if entity @s[scores={math=44}] run clone 9 143 -51 10 145 -69 ~ ~ ~

execute if entity @s[scores={math=51}] run clone 14 143 15 15 145 -3 ~ ~ ~
execute if entity @s[scores={math=52}] run clone 14 143 -7 15 145 -25 ~ ~ ~
execute if entity @s[scores={math=53}] run clone 14 143 -29 15 145 -47 ~ ~ ~
execute if entity @s[scores={math=54}] run clone 14 143 -51 15 145 -69 ~ ~ ~

execute if entity @s[scores={math=61}] run clone 19 143 15 20 145 -3 ~ ~ ~
execute if entity @s[scores={math=62}] run clone 19 143 -7 20 145 -25 ~ ~ ~
execute if entity @s[scores={math=63}] run clone 19 143 -29 20 145 -47 ~ ~ ~
execute if entity @s[scores={math=64}] run clone 19 143 -51 20 145 -69 ~ ~ ~