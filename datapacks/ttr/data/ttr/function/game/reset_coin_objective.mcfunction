#yes, this produces massive TPS spikes. too bad!
#i went ahead and tied this to stuff like arena changes, ai joins, etc so it doesn't look like the game is lag-spiked into hell for no reason

#coins
execute as @a[tag=inControl] run scoreboard players operation @s math = @s coins
scoreboard players reset * coins
execute as @a[tag=inControl] run scoreboard players operation @s coins = @s math

#points
execute as @a[tag=inControl] run scoreboard players operation @s math = @s points
scoreboard players reset * points
execute as @a[tag=inControl] run scoreboard players operation @s points = @s math

execute if score #ai_count value matches 1.. as @e[tag=ai,type=zombie] run function ttr:ai/update_coin_display
execute if score #ai_count value matches 1.. as @e[tag=ai,type=zombie] run function ttr:ai/update_point_display

#we'll deal with the TPS lag spike by only letting this happen every ~6 minutes
scoreboard players set #refreshObjCooldown value 5500

#Q: why is this necessary?
#A: because without this, disconnected players will linger on the scoreboard forever