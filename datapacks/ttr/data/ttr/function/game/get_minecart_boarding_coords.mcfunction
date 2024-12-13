#go to 1 of 25 slots to avoid other players blocking our minecart
scoreboard players add #boarding_location value 1
execute if score #boarding_location value matches 26.. run scoreboard players set #boarding_location value 1

#fallback value
scoreboard players set @s char_set_x 8
scoreboard players set @s char_set_y 30
scoreboard players set @s char_set_z 8

#set x
execute if score #boarding_location value matches 1 run scoreboard players set @s char_set_x -4
execute if score #boarding_location value matches 2 run scoreboard players set @s char_set_x 2
execute if score #boarding_location value matches 3 run scoreboard players set @s char_set_x 8
execute if score #boarding_location value matches 4 run scoreboard players set @s char_set_x 14
execute if score #boarding_location value matches 5 run scoreboard players set @s char_set_x 20
execute if score #boarding_location value matches 6 run scoreboard players set @s char_set_x -4
execute if score #boarding_location value matches 7 run scoreboard players set @s char_set_x 2
execute if score #boarding_location value matches 8 run scoreboard players set @s char_set_x 8
execute if score #boarding_location value matches 9 run scoreboard players set @s char_set_x 14
execute if score #boarding_location value matches 10 run scoreboard players set @s char_set_x 20
execute if score #boarding_location value matches 11 run scoreboard players set @s char_set_x -4
execute if score #boarding_location value matches 12 run scoreboard players set @s char_set_x 2
execute if score #boarding_location value matches 13 run scoreboard players set @s char_set_x 8
execute if score #boarding_location value matches 14 run scoreboard players set @s char_set_x 14
execute if score #boarding_location value matches 15 run scoreboard players set @s char_set_x 20
execute if score #boarding_location value matches 16 run scoreboard players set @s char_set_x -4
execute if score #boarding_location value matches 17 run scoreboard players set @s char_set_x 2
execute if score #boarding_location value matches 18 run scoreboard players set @s char_set_x 8
execute if score #boarding_location value matches 19 run scoreboard players set @s char_set_x 14
execute if score #boarding_location value matches 20 run scoreboard players set @s char_set_x 20
execute if score #boarding_location value matches 21 run scoreboard players set @s char_set_x -4
execute if score #boarding_location value matches 22 run scoreboard players set @s char_set_x 2
execute if score #boarding_location value matches 23 run scoreboard players set @s char_set_x 8
execute if score #boarding_location value matches 24 run scoreboard players set @s char_set_x 14
execute if score #boarding_location value matches 25 run scoreboard players set @s char_set_x 20

#set z
execute if score #boarding_location value matches ..5 run scoreboard players set @s char_set_z -4
execute if score #boarding_location value matches 6..10 run scoreboard players set @s char_set_z 2
execute if score #boarding_location value matches 11..15 run scoreboard players set @s char_set_z 8
execute if score #boarding_location value matches 16..20 run scoreboard players set @s char_set_z 14
execute if score #boarding_location value matches 21.. run scoreboard players set @s char_set_z 20