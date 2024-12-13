scoreboard players set @s math 0

execute if block ~ ~ ~ yellow_concrete run scoreboard players set @s math 1
execute if block ~ ~ ~ lime_concrete run scoreboard players set @s math 2
execute if block ~ ~ ~ pink_concrete run scoreboard players set @s math 3
execute if block ~ ~ ~ gray_concrete run scoreboard players set @s math 4
execute if block ~ ~ ~ white_concrete run scoreboard players set @s math 5
execute if block ~ ~ ~ orange_concrete run scoreboard players set @s math 6
execute if block ~ ~ ~ magenta_concrete run scoreboard players set @s math 7
execute if block ~ ~ ~ light_blue_concrete run scoreboard players set @s math 8

execute if score @s math matches 1 at @s run tp @s ~ ~ ~-1
execute if score @s math matches 2 at @s run tp @s ~1 ~ ~-1
execute if score @s math matches 3 at @s run tp @s ~1 ~ ~
execute if score @s math matches 4 at @s run tp @s ~1 ~ ~1
execute if score @s math matches 5 at @s run tp @s ~ ~ ~1
execute if score @s math matches 6 at @s run tp @s ~-1 ~ ~1
execute if score @s math matches 7 at @s run tp @s ~-1 ~ ~
execute if score @s math matches 8 at @s run tp @s ~-1 ~ ~-1