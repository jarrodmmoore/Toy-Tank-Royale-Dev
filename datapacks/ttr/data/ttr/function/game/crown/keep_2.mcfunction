#make sure values exist
scoreboard players add #royal_ID value 0

scoreboard players set #crown_check value 0

effect clear @s minecraft:glowing

#check if there's a player who has the royal_ID
execute as @e[tag=player_char,type=zombie,tag=!player_ded] if score @s playerID = #royal_ID value run scoreboard players set #crown_check value 1

#crown goes to the leading tank
tag @s[tag=!priorityTarget] add priorityTarget
execute if score #crown_check value matches 1 as @e[tag=player_char,type=zombie,tag=!player_ded] if score @s playerID = #royal_ID value at @s run function ttr:game/crown/tank_get_crown_keep


#no living crown holder? drop the crown on the ground
execute if score #crown_check value matches 0 run function ttr:game/crown/drop_crown_onto_ground