scoreboard players remove @s[scores={dummy_x=4..}] dummy_x 4

execute unless score @s dummy_x matches 2.. run function ttr:control/warp/warp_to_saved_coords/x/p1
execute if score @s dummy_x matches 2.. positioned ~2 ~ ~ run function ttr:control/warp/warp_to_saved_coords/x/p1