scoreboard players set @s inputCooldown 20

function ttr:control/warp/warp_to_saved_coords/_go

#dummy values for tp
scoreboard players operation @s dummy_x = @s char_set_x
scoreboard players operation @s dummy_y = @s char_set_y
scoreboard players operation @s dummy_z = @s char_set_z
scoreboard players operation @s faceDirection = @s char_set_face

scoreboard players set @s mvmt_dx 0
scoreboard players set @s mvmt_dz 0

execute positioned 0 0 0 run function ttr:control/warp/warp_to_saved_coords/x/_pos_or_neg