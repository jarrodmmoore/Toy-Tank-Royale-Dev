scoreboard players set @s deathTime 0
tag @s remove player_ded
execute as @e[tag=player_char,type=zombie] if score @s playerID = #victimID value run tag @s remove player_ded
execute at @s run particle falling_dust{block_state:"minecraft:redstone_block"} ~ ~1 ~ 0.3 0.3 0.3 1 15 force @a
scoreboard players set @s burstStreak 0

#tank that killed us is no longer agro
execute if score #ai_count value matches 1.. as @e[tag=ai,type=zombie] if score @s targetID = #victimID value run scoreboard players set @s targetID 0