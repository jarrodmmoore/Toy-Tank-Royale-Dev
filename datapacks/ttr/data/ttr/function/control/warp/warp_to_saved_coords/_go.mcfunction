#i'll be honest, i barely understand this spaghetti

#This was originally written for Bliss, a mapjam map I made.
#It was buggy. Got fixed & modified for more maps I did that use third-person controls.
#The lineage of this function is: Bliss > No More Diamonds > Doze Off > Toy Tank Royale
#I'm never 100% confident in using this as I don't remember it super well
#(do I use this function or "_go_player_only" instead???)

#Things get complicated teleporting players in a third-person Minecraft game.
#If you teleport the entity a player is riding to an unloaded chunk, Minecraft gets very angry.



tag @s add mcOwner
scoreboard players operation #ownerCartID value = @s playerID
scoreboard players operation #ownerCartC1 value = @s color_1
scoreboard players operation #ownerCartC2 value = @s color_2
scoreboard players operation #ownerCartNode value = @s playerNode
scoreboard players operation #ownerCartTeam value = @s teamID
scoreboard players operation #ocBodyModel value = @s tankBodyModel
scoreboard players operation #ocHeadModel value = @s tankHeadModel

#clear old character entities
#execute as @e[tag=player_char,scores={playerID=1..}] if score @s playerID = @a[limit=1,tag=mcOwner] playerID run kill @s

#identify our input_base
execute as @e[tag=input_base,scores={playerID=1..}] if score @s playerID = #ownerCartID value run tag @s add temp_my_base

scoreboard players set @s mvmt_dx 0
scoreboard players set @s mvmt_dz 0

#dummy values for tp
scoreboard players operation @s dummy_x = @s char_set_x
scoreboard players operation @s dummy_y = @s char_set_y
scoreboard players operation @s dummy_z = @s char_set_z
scoreboard players operation @s faceDirection = @s char_set_face

###############################################################
#this starts a large sequence of commands, must be run in order!
execute positioned 0 0 0 run function ttr:control/warp/warp_to_saved_coords/x/_pos_or_neg
###############################################################


tag @e[tag=temp_my_base] remove temp_my_base
tag @s remove mcOwner
scoreboard players set @s charTimeout 0