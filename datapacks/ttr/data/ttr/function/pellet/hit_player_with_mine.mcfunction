scoreboard players operation #victimID value = @s playerID

execute as @a[tag=inControl,scores={deathTime=..0}] if score @s playerID = #victimID value run function ttr:game/player_die
execute if score #ai_count value matches 1.. as @e[tag=ai,scores={deathTime=..0}] if score @s playerID = #victimID value run function ttr:ai/player_die