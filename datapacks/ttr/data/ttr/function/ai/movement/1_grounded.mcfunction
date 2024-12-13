execute if entity @s[tag=!speedo] store result entity @s Motion[0] double 0.00012 run scoreboard players get @s x_vel
execute if entity @s[tag=!speedo] store result entity @s Motion[2] double 0.00012 run scoreboard players get @s z_vel

execute if entity @s[tag=speedo] store result entity @s Motion[0] double 0.00036 run scoreboard players get @s x_vel
execute if entity @s[tag=speedo] store result entity @s Motion[2] double 0.00036 run scoreboard players get @s z_vel