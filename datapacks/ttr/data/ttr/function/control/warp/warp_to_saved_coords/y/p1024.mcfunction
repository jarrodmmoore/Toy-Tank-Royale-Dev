scoreboard players remove @s[scores={dummy_y=2048..}] dummy_y 2048

execute unless score @s dummy_y matches 1024.. run function ttr:control/warp/warp_to_saved_coords/y/p512
execute if score @s dummy_y matches 1024.. positioned ~ ~1024 ~ run function ttr:control/warp/warp_to_saved_coords/y/p512