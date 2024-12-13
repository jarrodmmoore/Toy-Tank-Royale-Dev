scoreboard players add #globalNode value 1
#MAX OF 64 NODES
execute if score #globalNode value matches 65.. run scoreboard players set #globalNode value 1
scoreboard players remove #global recursions 1

scoreboard players set #nodeIsValid value 1

#CANNOT SHARE A NODE-- THAT IS THE POINT MY DUDE
execute as @a[tag=inControl] if score @s playerNode = #globalNode value run scoreboard players remove #nodeIsValid value 1
execute as @e[tag=ai,type=zombie] if score @s playerNode = #globalNode value run scoreboard players remove #nodeIsValid value 1

execute if score #nodeIsValid value matches 1 run scoreboard players operation @s playerNode = #globalNode value
execute if score #nodeIsValid value matches 1 run tag @s remove need_node

#keep trying if we don't have a node
execute if entity @s[tag=need_node] if score #global recursions matches 1.. run function ttr:game/player_node/try_get_node