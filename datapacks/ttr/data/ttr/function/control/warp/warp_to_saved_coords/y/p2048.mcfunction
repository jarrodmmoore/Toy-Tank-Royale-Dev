scoreboard players remove @s[scores={dummy_y=4096..}] dummy_y 4096

execute unless score @s dummy_y matches 2048.. run function ttr:control/warp/warp_to_saved_coords/y/p1024
execute if score @s dummy_y matches 2048.. positioned ~ ~2048 ~ run function ttr:control/warp/warp_to_saved_coords/y/p1024