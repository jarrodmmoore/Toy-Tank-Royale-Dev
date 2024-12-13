scoreboard players set #100 value 100
scoreboard players operation #new_cooldown value = @s shootCooldown
scoreboard players operation #new_cooldown value *= @s cooldown_mult
scoreboard players operation #new_cooldown value /= #100 value
scoreboard players operation @s shootCooldown = #new_cooldown value

scoreboard players operation @s shootCooldnPeak = @s shootCooldown