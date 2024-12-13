#remember previous inputDir
scoreboard players operation #lastDir value = @s inputDir

#i wish i still had my notes for this...
execute if block ~ ~ ~ yellow_concrete run scoreboard players set @s inputDir 1
execute if block ~ ~ ~ lime_concrete run scoreboard players set @s inputDir 2
execute if block ~ ~ ~ pink_concrete run scoreboard players set @s inputDir 3
execute if block ~ ~ ~ gray_concrete run scoreboard players set @s inputDir 4
execute if block ~ ~ ~ white_concrete run scoreboard players set @s inputDir 5
execute if block ~ ~ ~ orange_concrete run scoreboard players set @s inputDir 6
execute if block ~ ~ ~ magenta_concrete run scoreboard players set @s inputDir 7
execute if block ~ ~ ~ light_blue_concrete run scoreboard players set @s inputDir 8

#brown means we found what we were looking for, so we can stop
execute if block ~ ~ ~ brown_concrete at @s run function ttr:ai/nav_generate/special_consumed
execute if block ~ ~ ~ brown_concrete run scoreboard players set @s aiNavTimeout 25

#invalid vector? stop
execute unless block ~ ~ ~ #ttr:nav_colors run scoreboard players set @s aiTargetDir 0

#caught in a loop doing 180s? stop it. get some help.
execute if score #lastDir value matches 1 if score @s inputDir matches 5 run scoreboard players add @s aiNavTimeout 4
execute if score #lastDir value matches 5 if score @s inputDir matches 1 run scoreboard players add @s aiNavTimeout 4
execute if score #lastDir value matches 3 if score @s inputDir matches 7 run scoreboard players add @s aiNavTimeout 4
execute if score #lastDir value matches 7 if score @s inputDir matches 3 run scoreboard players add @s aiNavTimeout 4
#yeah this is a patchwork solution... but building those vector fields for ai navigation is hard!!
#honestly a miracle they work as well as they do

#don't get stuck on the rim, please
execute if block ~ 8 ~ iron_block run function ttr:ai/movement/get_nav_input_edge