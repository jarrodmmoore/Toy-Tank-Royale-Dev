scoreboard players add #pelletSpawn value 1
execute if score #pelletSpawn value matches 2.. run scoreboard players set #pelletSpawn value 0

execute if score #pelletSpawn value matches 0 run tag @s add pellet_a
execute if score #pelletSpawn value matches 1 run tag @s add pellet_b

#get location while we're here
function ttr:pellet/get_area_location