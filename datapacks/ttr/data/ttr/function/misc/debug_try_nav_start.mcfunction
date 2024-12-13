execute store result score #my_rot value run data get entity @s Rotation[0] 1
execute store result score #my_yaw value run data get entity @s Rotation[1] 1

execute if score #my_rot value matches ..-1 run scoreboard players add #my_rot value 360

execute if score #my_yaw value matches 85.. if score #my_rot value matches 136..225 positioned ~ 27 ~ run function ttr:misc/debug_try_nav
execute if score #my_yaw value matches 85.. if score #my_rot value matches 226..315 positioned ~ 26 ~ run function ttr:misc/debug_try_nav
execute if score #my_yaw value matches 85.. if score #my_rot value matches 316.. positioned ~ 25 ~ run function ttr:misc/debug_try_nav
execute if score #my_yaw value matches 85.. if score #my_rot value matches ..45 positioned ~ 25 ~ run function ttr:misc/debug_try_nav
execute if score #my_yaw value matches 85.. if score #my_rot value matches 46..135 positioned ~ 24 ~ run function ttr:misc/debug_try_nav