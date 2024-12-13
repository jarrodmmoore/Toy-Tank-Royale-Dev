#have a cooldown reducing powerup? apply it on the first tick we exceed our previous "peak" cooldown
execute if entity @s[scores={cooldown_mult=..100}] if score @s shootCooldown > @s shootCooldnPeak run function ttr:game/shoot_cooldown_reduce

#cooldown "peak", used to make various cooldown times from shooting pellets work well on the xp bar
execute if score @s shootCooldown > @s shootCooldnPeak run scoreboard players operation @s shootCooldnPeak = @s shootCooldown
scoreboard players remove @s[scores={shootCooldown=1..}] shootCooldown 1

#xp bar display stuff
scoreboard players set #multiply value 100
scoreboard players operation @s shootPercent = @s shootCooldown
scoreboard players operation @s shootPercent *= #multiply value
scoreboard players operation @s shootPercent /= @s shootCooldnPeak

execute if entity @s[scores={shootCooldown=..0,shootCooldnPeak=1..}] run scoreboard players set @s shootCooldnPeak 0

execute if entity @s[scores={shootCooldown=1}] run xp set @s 0 points
execute if entity @s[scores={shootCooldown=2..,shootPercent=..14}] run xp set @s 0 points
execute if entity @s[scores={shootCooldown=2..,shootPercent=15..28}] run xp set @s 1 points
execute if entity @s[scores={shootCooldown=2..,shootPercent=29..42}] run xp set @s 2 points
execute if entity @s[scores={shootCooldown=2..,shootPercent=43..56}] run xp set @s 3 points
execute if entity @s[scores={shootCooldown=2..,shootPercent=57..70}] run xp set @s 4 points
execute if entity @s[scores={shootCooldown=2..,shootPercent=71..84}] run xp set @s 5 points
execute if entity @s[scores={shootCooldown=2..,shootPercent=85..}] run xp set @s 6 points