scoreboard players add @s[scores={dummy_z=..-4}] dummy_z 4

execute unless score @s dummy_z matches ..-2 run function ttr:control/warp/warp_to_saved_coords/z/n1
execute if score @s dummy_z matches ..-2 positioned ~ ~ ~-2 run function ttr:control/warp/warp_to_saved_coords/z/n1