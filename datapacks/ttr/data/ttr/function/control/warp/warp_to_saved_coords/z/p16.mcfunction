scoreboard players remove @s[scores={dummy_z=32..}] dummy_z 32

execute unless score @s dummy_z matches 16.. run function ttr:control/warp/warp_to_saved_coords/z/p8
execute if score @s dummy_z matches 16.. positioned ~ ~ ~16 run function ttr:control/warp/warp_to_saved_coords/z/p8