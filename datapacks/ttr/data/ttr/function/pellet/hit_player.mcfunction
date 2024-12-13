#debug
#tellraw @a ["",{"text":"#attackerID = "},{"score":{"name":"@s","objective":"playerID"}},{"text":" -- "},{"selector":"@s"}]
#tellraw @a ["",{"text":"#backupAttackerID = "},{"score":{"name":"#backupAttackerID","objective":"value"}}]

execute if score @s playerID matches 1.. run scoreboard players operation #attackerID value = @s playerID
execute unless score @s playerID matches 1.. run scoreboard players operation #attackerID value = #backupAttackerID value
scoreboard players operation #victimID value = @e[limit=1,sort=nearest,tag=target2,tag=player_char] playerID

execute as @a[tag=inControl,scores={deathTime=..0}] if score @s playerID = #victimID value run function ttr:game/player_die
execute if score #ai_count value matches 1.. as @e[tag=ai,type=zombie,scores={deathTime=..0}] if score @s playerID = #victimID value run function ttr:ai/player_die

execute if entity @s[tag=!burst_pellet,tag=!super_pellet] run function ttr:pellet/generic_air_burst
execute if entity @s[tag=burst_pellet] run function ttr:pellet/quad_burst
execute if entity @s[tag=super_pellet] run function ttr:pellet/fiery_burst