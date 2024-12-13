scoreboard players operation @s x_vel = @s xin
scoreboard players operation @s z_vel = @s zin

#get the angle we're moving in
scoreboard players operation #moveRatio value = @s zin
scoreboard players operation #moveRatio value /= @s xin
function ttr:control/convert_raw_input_to_move_angle
#@s bodyFaceAngle

#xin is usually 1748 at max
#we want our output to be 1000 at max
scoreboard players operation @s x_vel *= #1000 value
scoreboard players operation @s x_vel /= #1748 value
scoreboard players operation @s z_vel *= #1000 value
scoreboard players operation @s z_vel /= #1748 value

#debug
#tellraw @s ["",{"text":"x_vel = "},{"score":{"name":"@s","objective":"x_vel"}}]