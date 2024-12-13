execute store result score #go_to_x value run data get entity @s Pos[0] 1
execute store result score #go_to_z value run data get entity @s Pos[2] 1

scoreboard players set #go_direction value 0
execute if entity @s[tag=nav_north] run scoreboard players set #go_direction value 1
execute if entity @s[tag=nav_east] run scoreboard players set #go_direction value 2
execute if entity @s[tag=nav_south] run scoreboard players set #go_direction value 3
execute if entity @s[tag=nav_west] run scoreboard players set #go_direction value 4