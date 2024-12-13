execute if entity @s[scores={char_set_x=1..}] run function ttr:control/warp/warp_to_saved_coords/x/p8192
execute if entity @s[scores={char_set_x=0}] run function ttr:control/warp/warp_to_saved_coords/y/_pos_or_neg
execute if entity @s[scores={char_set_x=..-1}] run function ttr:control/warp/warp_to_saved_coords/x/n8192