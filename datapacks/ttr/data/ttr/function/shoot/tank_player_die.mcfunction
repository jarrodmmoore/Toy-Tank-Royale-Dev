scoreboard players operation #this_tank_id value = @s playerID

execute as @a[tag=inControl,scores={deathTime=..0}] if score @s playerID = #this_tank_id value run function ttr:game/player_die
execute if entity @s[tag=ai] run function ttr:ai/player_die