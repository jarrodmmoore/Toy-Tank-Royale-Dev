scoreboard players remove @s[scores={dummy_x=64..}] dummy_x 64

execute unless score @s dummy_x matches 32.. run function ttr:control/warp/warp_to_saved_coords/x/p16
execute if score @s dummy_x matches 32.. positioned ~32 ~ ~ run function ttr:control/warp/warp_to_saved_coords/x/p16