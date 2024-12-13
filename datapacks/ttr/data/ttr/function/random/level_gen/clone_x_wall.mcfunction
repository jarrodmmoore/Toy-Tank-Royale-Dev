#each wall type has 4 variations, including solid

#get a random value corresponding to a wall
scoreboard players operation @s math = @e[limit=1,sort=random,tag=randomize,scores={randomize=1..6}] randomize
scoreboard players operation @s math2 = @e[limit=1,sort=random,tag=randomize,scores={randomize=1..4}] randomize

scoreboard players set #10 value 10
scoreboard players operation @s math *= #10 value

#must be solid wall if either of our neighboring areas is empty
scoreboard players set #solid_wall value 0
execute if entity @s[tag=w3] if score #area_1_active value matches 0 run scoreboard players set #solid_wall value 1
execute if entity @s[tag=w3] if score #area_4_active value matches 0 run scoreboard players set #solid_wall value 1
execute if entity @s[tag=w4] if score #area_2_active value matches 0 run scoreboard players set #solid_wall value 1
execute if entity @s[tag=w4] if score #area_5_active value matches 0 run scoreboard players set #solid_wall value 1
execute if entity @s[tag=w5] if score #area_3_active value matches 0 run scoreboard players set #solid_wall value 1
execute if entity @s[tag=w5] if score #area_6_active value matches 0 run scoreboard players set #solid_wall value 1
execute if entity @s[tag=w8] if score #area_4_active value matches 0 run scoreboard players set #solid_wall value 1
execute if entity @s[tag=w8] if score #area_7_active value matches 0 run scoreboard players set #solid_wall value 1
execute if entity @s[tag=w9] if score #area_5_active value matches 0 run scoreboard players set #solid_wall value 1
execute if entity @s[tag=w9] if score #area_8_active value matches 0 run scoreboard players set #solid_wall value 1
execute if entity @s[tag=w10] if score #area_6_active value matches 0 run scoreboard players set #solid_wall value 1
execute if entity @s[tag=w10] if score #area_9_active value matches 0 run scoreboard players set #solid_wall value 1

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
execute if entity @s[scores={math=1}] run clone -11 150 -69 7 152 -68 ~ ~ ~
execute if entity @s[scores={math=2}] run clone 11 150 -69 29 152 -68 ~ ~ ~
execute if entity @s[scores={math=3}] run clone 33 150 -69 51 152 -68 ~ ~ ~
execute if entity @s[scores={math=4}] run clone 55 150 -69 73 152 -68 ~ ~ ~

#other walls
execute if entity @s[scores={math=11}] run clone -11 150 -64 7 152 -63 ~ ~ ~
execute if entity @s[scores={math=12}] run clone 11 150 -64 29 152 -63 ~ ~ ~
execute if entity @s[scores={math=13}] run clone 33 150 -64 51 152 -63 ~ ~ ~
execute if entity @s[scores={math=14}] run clone 55 150 -64 73 152 -63 ~ ~ ~

execute if entity @s[scores={math=21}] run clone -11 150 -59 7 152 -58 ~ ~ ~
execute if entity @s[scores={math=22}] run clone 11 150 -59 29 152 -58 ~ ~ ~
execute if entity @s[scores={math=23}] run clone 33 150 -59 51 152 -58 ~ ~ ~
execute if entity @s[scores={math=24}] run clone 55 150 -59 73 152 -58 ~ ~ ~

execute if entity @s[scores={math=31}] run clone -11 150 -54 7 152 -53 ~ ~ ~
execute if entity @s[scores={math=32}] run clone 11 150 -54 29 152 -53 ~ ~ ~
execute if entity @s[scores={math=33}] run clone 33 150 -54 51 152 -53 ~ ~ ~
execute if entity @s[scores={math=34}] run clone 55 150 -54 73 152 -53 ~ ~ ~

execute if entity @s[scores={math=41}] run clone -11 150 -49 7 152 -48 ~ ~ ~
execute if entity @s[scores={math=42}] run clone 11 150 -49 29 152 -48 ~ ~ ~
execute if entity @s[scores={math=43}] run clone 33 150 -49 51 152 -48 ~ ~ ~
execute if entity @s[scores={math=44}] run clone 55 150 -49 73 152 -48 ~ ~ ~

execute if entity @s[scores={math=51}] run clone -11 150 -44 7 152 -43 ~ ~ ~
execute if entity @s[scores={math=52}] run clone 11 150 -44 29 152 -43 ~ ~ ~
execute if entity @s[scores={math=53}] run clone 33 150 -44 51 152 -43 ~ ~ ~
execute if entity @s[scores={math=54}] run clone 55 150 -44 73 152 -43 ~ ~ ~

execute if entity @s[scores={math=61}] run clone -11 150 -39 7 152 -38 ~ ~ ~
execute if entity @s[scores={math=62}] run clone 11 150 -39 29 152 -38 ~ ~ ~
execute if entity @s[scores={math=63}] run clone 33 150 -39 51 152 -38 ~ ~ ~
execute if entity @s[scores={math=64}] run clone 55 150 -39 73 152 -38 ~ ~ ~