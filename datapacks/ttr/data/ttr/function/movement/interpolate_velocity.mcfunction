#goal: smoothly transition between current velocity and desired velocity
#(makes movement less jerky)

#inputs: @s x_vel, @s z_vel

scoreboard players add @s x_vel_current 0
scoreboard players add @s z_vel_current 0

#velocity is 1/2 current velocity, 1/2 desired velocity

scoreboard players operation @s x_vel_desired = @s x_vel_current
scoreboard players operation @s x_vel_desired += @s x_vel
scoreboard players operation @s x_vel_desired /= #2 value

scoreboard players operation @s z_vel_desired = @s z_vel_current
scoreboard players operation @s z_vel_desired += @s z_vel
scoreboard players operation @s z_vel_desired /= #2 value

#save the velocity we ended up with
scoreboard players operation @s x_vel_current = @s x_vel_desired
scoreboard players operation @s z_vel_current = @s z_vel_desired

#output
scoreboard players operation @s x_vel = @s x_vel_desired
scoreboard players operation @s z_vel = @s z_vel_desired