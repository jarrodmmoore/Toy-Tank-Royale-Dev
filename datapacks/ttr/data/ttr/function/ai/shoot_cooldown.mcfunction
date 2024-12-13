execute if entity @s[scores={cooldown_mult=..100}] if score @s shootCooldown > @s shootCooldnPeak run function ttr:ai/shoot_cooldown_reduce

execute if score @s shootCooldown > @s shootCooldnPeak run scoreboard players operation @s shootCooldnPeak = @s shootCooldown
scoreboard players remove @s[scores={shootCooldown=1..}] shootCooldown 1

scoreboard players set #multiply value 100
scoreboard players operation @s shootPercent = @s shootCooldown
scoreboard players operation @s shootPercent *= #multiply value
scoreboard players operation @s shootPercent /= @s shootCooldnPeak

execute if entity @s[scores={shootCooldown=..0,shootCooldnPeak=1..}] run scoreboard players set @s shootCooldnPeak 0