#

execute unless score @s dummy_z matches ..-8192 run function ttr:control/warp/warp_to_saved_coords/z/n4096
execute if score @s dummy_z matches ..-8192 positioned ~ ~ ~-8192 run function ttr:control/warp/warp_to_saved_coords/z/n4096