scoreboard players remove @s[scores={dummy_z=256..}] dummy_z 256

execute unless score @s dummy_z matches 128.. run function ttr:control/warp/warp_to_saved_coords/z/p64
execute if score @s dummy_z matches 128.. positioned ~ ~ ~128 run function ttr:control/warp/warp_to_saved_coords/z/p64