scoreboard players add @s[scores={dummy_x=..-8192}] dummy_x 8192

execute unless score @s dummy_x matches ..-4096 run function ttr:control/warp/warp_to_saved_coords/x/n2048
execute if score @s dummy_x matches ..-4096 positioned ~-4096 ~ ~ run function ttr:control/warp/warp_to_saved_coords/n/p2048