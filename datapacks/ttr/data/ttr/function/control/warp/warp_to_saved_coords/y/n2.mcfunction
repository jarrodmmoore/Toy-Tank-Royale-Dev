scoreboard players add @s[scores={dummy_y=..-4}] dummy_y 4

execute unless score @s dummy_y matches ..-2 run function ttr:control/warp/warp_to_saved_coords/y/n1
execute if score @s dummy_y matches ..-2 positioned ~ ~-2 ~ run function ttr:control/warp/warp_to_saved_coords/y/n1