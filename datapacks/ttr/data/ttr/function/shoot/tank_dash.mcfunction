scoreboard players remove @s[scores={hasItem9=1..}] hasItem9 1
clear @s[type=player] cyan_dye 1

#SOUND
playsound minecraft:entity.wither.shoot master @a ~ ~10 ~ 4 1.3
particle cloud ~ ~1.6 ~ 0.3 0.3 0.3 0.01 20 force @a

#brief invincibility frames
scoreboard players set @s[type=zombie,scores={invulTime=..6}] invulTime 7
execute if entity @s[type=player] run scoreboard players operation #checkDashID value = @s playerID
execute if entity @s[type=player] as @e[tag=player_char,type=zombie] if score @s playerID = #checkDashID value run scoreboard players set @s[scores={invulTime=..6}] invulTime 7

#animation
scoreboard players set @s tankDash 1
scoreboard players operation @s dashDirection = @s faceDirection

scoreboard players set @s shootCooldown 20