scoreboard players remove #recursions value 1

execute if block ~ ~1 ~ #ttr:pellet_okay run scoreboard players set #recursions value 0
execute if block ~ ~1 ~ #ttr:pellet_okay run tp @s ~ ~ ~

execute if score #recursions value matches ..0 run tp @s ~ ~ ~
execute if score #recursions value matches 1.. positioned ~.1 ~ ~ run function ttr:pellet/reflect/x_escape_negative