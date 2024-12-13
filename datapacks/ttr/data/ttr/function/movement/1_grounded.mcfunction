#DE-REFERENCED FUNCTION
execute if entity @s[tag=validRotation,tag=!speedo] store result entity @e[limit=1,tag=my_char] Motion[0] double 0.00012 run scoreboard players get @s x_vel
execute if entity @s[tag=validRotation,tag=!speedo] store result entity @e[limit=1,tag=my_char] Motion[2] double 0.00012 run scoreboard players get @s z_vel

execute if entity @s[tag=validRotation,tag=speedo] store result entity @e[limit=1,tag=my_char] Motion[0] double 0.00036 run scoreboard players get @s x_vel
execute if entity @s[tag=validRotation,tag=speedo] store result entity @e[limit=1,tag=my_char] Motion[2] double 0.00036 run scoreboard players get @s z_vel