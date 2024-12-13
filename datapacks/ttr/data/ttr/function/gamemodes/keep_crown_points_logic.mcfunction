scoreboard players set #crownPointTime value 0

scoreboard players remove #crownPointTime2 value 1


#player with crown gets 1 point per second
execute as @a[tag=inControl,scores={playerID=1..,points=..199}] if score #royal_ID value = @s playerID run scoreboard players add @s points 1
execute if score #ai_count value matches 1.. as @e[tag=ai,scores={aiPoints=..199}] if score #royal_ID value = @s playerID run scoreboard players add @s aiPoints 1

#player with crown gets 1 point much slower once above 200 pts
execute if score #crownPointTime2 value matches 0 as @a[tag=inControl,scores={playerID=1..,points=200..}] if score #royal_ID value = @s playerID run scoreboard players add @s points 1
execute if score #crownPointTime2 value matches 0 if score #ai_count value matches 1.. as @e[tag=ai,scores={aiPoints=200..}] if score #royal_ID value = @s playerID run scoreboard players add @s aiPoints 1


#all other players decay points...
execute if score #crownPointTime2 value matches 0 as @a[tag=inControl,scores={playerID=1..,points=1..100}] unless score #royal_ID value = @s playerID run scoreboard players remove @s points 1
execute if score #crownPointTime2 value matches 0 if score #ai_count value matches 1.. as @e[tag=ai,scores={aiPoints=1..100}] unless score #royal_ID value = @s playerID run scoreboard players remove @s aiPoints 1

#faster decay when above 100 points!
execute as @a[tag=inControl,scores={playerID=1..,points=101..}] unless score #royal_ID value = @s playerID run scoreboard players remove @s points 1
execute if score #ai_count value matches 1.. as @e[tag=ai,scores={aiPoints=101..}] unless score #royal_ID value = @s playerID run scoreboard players remove @s aiPoints 1


#point decay is slower with more players
execute if score #opt_pointdecay value matches 1 if score #crownPointTime2 value matches ..0 as @e[tag=player_char,type=zombie] run scoreboard players add #crownPointTime2 value 1
execute if score #opt_pointdecay value matches 4 if score #crownPointTime2 value matches ..0 run function ttr:gamemodes/keep_crown_points_normal_decay


#option for fast or instant point decay
execute if score #opt_pointdecay value matches 2 if score #crownPointTime2 value matches ..0 run scoreboard players set #crownPointTime2 value 1

execute if score #opt_pointdecay value matches 3 as @a[tag=inControl,scores={playerID=1..}] unless score #royal_ID value = @s playerID run scoreboard players set @s points 0
execute if score #opt_pointdecay value matches 3 if score #ai_count value matches 1.. as @e[tag=ai] unless score #royal_ID value = @s playerID run scoreboard players set @s aiPoints 0


#update sidebar if there's AI
execute if score #ai_count value matches 1.. as @e[tag=ai,type=zombie] run function ttr:ai/update_point_display