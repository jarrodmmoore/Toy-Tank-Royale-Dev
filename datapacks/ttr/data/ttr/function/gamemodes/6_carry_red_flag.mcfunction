#carry flag
execute positioned ~ ~.8 ~ rotated as @e[limit=1,type=armor_stand,tag=red_flag] as @e[limit=1,type=armor_stand,tag=red_flag] run tp @s ~ ~ ~ ~2 0
scoreboard players set @s aiCarryFlag 6