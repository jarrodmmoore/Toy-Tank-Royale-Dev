#TURN AROOOUND
execute facing entity @e[limit=1,sort=nearest,tag=blast_source,type=zombie] eyes rotated ~180 0 run tp @s ~ ~ ~ ~ ~

#homing pellet turns against its original owner
execute if entity @s[tag=homing_pellet] run scoreboard players operation @s targetID = @s playerID

#adopt colors and ID from out new owner
scoreboard players operation @s playerID = #attackerID value
scoreboard players operation @s color_1 = #new_color_1 value
scoreboard players operation @s color_2 = #new_color_2 value

#oringal owner is also the reflector? homing pellet won't re-target them
execute if score @s targetID = @s playerID run scoreboard players set @s targetID -1