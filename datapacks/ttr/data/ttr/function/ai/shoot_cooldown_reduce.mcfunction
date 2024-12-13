scoreboard players set #100 value 100
scoreboard players operation #new_cooldown value = @s shootCooldown
scoreboard players operation #new_cooldown value *= @s cooldown_mult
scoreboard players operation #new_cooldown value /= #100 value
scoreboard players operation @s shootCooldown = #new_cooldown value

#low level ai shoots slower always
execute if entity @s[scores={aiSkill=..1}] run scoreboard players add @s shootCooldown 7
execute if entity @s[scores={aiSkill=2}] run scoreboard players add @s shootCooldown 5
execute if entity @s[scores={aiSkill=3}] run scoreboard players add @s shootCooldown 2

#chance of halting shooting for a bit
execute if entity @s[scores={aiSkill=..3}] run function ttr:ai/shoot_cooldown_pause

scoreboard players operation @s shootCooldnPeak = @s shootCooldown