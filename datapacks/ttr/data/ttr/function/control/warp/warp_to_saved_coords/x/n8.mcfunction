scoreboard players add @s[scores={dummy_x=..-16}] dummy_x 16

execute unless score @s dummy_x matches ..-8 run function ttr:control/warp/warp_to_saved_coords/x/n4
execute if score @s dummy_x matches ..-8 positioned ~-8 ~ ~ run function ttr:control/warp/warp_to_saved_coords/x/n4