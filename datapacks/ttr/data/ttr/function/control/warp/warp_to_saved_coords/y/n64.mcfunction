scoreboard players add @s[scores={dummy_y=..-128}] dummy_y 128

execute unless score @s dummy_y matches ..-64 run function ttr:control/warp/warp_to_saved_coords/y/n32
execute if score @s dummy_y matches ..-64 positioned ~ ~-64 ~ run function ttr:control/warp/warp_to_saved_coords/y/n32