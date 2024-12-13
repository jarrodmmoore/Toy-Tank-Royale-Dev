tag @s add mcOwner

#clear old character entities
execute as @e[tag=player_char,scores={playerID=1..}] if score @s playerID = @a[limit=1,tag=mcOwner] playerID run kill @s

#identify our input_base
execute as @e[tag=input_base,scores={playerID=1..}] if score @s playerID = @a[limit=1,tag=mcOwner] playerID run tag @s add temp_my_base

scoreboard players set @s mvmt_dx 0
scoreboard players set @s mvmt_dz 0

#dummy values for tp
scoreboard players operation @s dummy_x = global char_set_x
scoreboard players operation @s dummy_y = global char_set_y
scoreboard players operation @s dummy_z = global char_set_z
scoreboard players operation @s faceDirection = global char_set_face

###############################################################
#this starts a large sequence of commands, must be run in order!
execute positioned 0 0 0 run function ttr:control/warp/warp_to_saved_coords/x/_pos_or_neg
###############################################################


tag @e[tag=temp_my_base] remove temp_my_base
tag @s remove mcOwner
scoreboard players set @s charTimeout 0