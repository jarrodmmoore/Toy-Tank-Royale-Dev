scoreboard players set #hit value 0
scoreboard players operation #pelly_id value = @s playerID

#another player right here? that's a hit!
execute as @e[tag=pa2,distance=..1,tag=p_can_hit,tag=!p_self,tag=!player_ded,type=zombie] unless score @s playerID = #pelly_id value run scoreboard players set #hit value 1

execute if score #hit value matches 1 run function ttr:pellet/point_blank_hit