execute if entity @s[tag=validRotation,tag=!speedo] store result entity 00000004-0000-0000-0000-000000000001 Motion[0] double 0.00012 run scoreboard players get @s x_vel
execute if entity @s[tag=validRotation,tag=!speedo] store result entity 00000004-0000-0000-0000-000000000001 Motion[2] double 0.00012 run scoreboard players get @s z_vel

execute if entity @s[tag=validRotation,tag=speedo] store result entity 00000004-0000-0000-0000-000000000001 Motion[0] double 0.00036 run scoreboard players get @s x_vel
execute if entity @s[tag=validRotation,tag=speedo] store result entity 00000004-0000-0000-0000-000000000001 Motion[2] double 0.00036 run scoreboard players get @s z_vel