scoreboard players add @s[scores={dummy_y=..-8}] dummy_y 8

execute unless score @s dummy_y matches ..-4 run function ttr:control/warp/warp_to_saved_coords/y/n2
execute if score @s dummy_y matches ..-4 positioned ~ ~-4 ~ run function ttr:control/warp/warp_to_saved_coords/y/n2