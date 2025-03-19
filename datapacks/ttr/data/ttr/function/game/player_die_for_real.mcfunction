scoreboard players operation #victimID value = @s playerID

#drop the coins
scoreboard players set #2 value 2
scoreboard players operation #drop_coins value = @s coins
scoreboard players operation #drop_coins value /= #2 value

#remove 1/2 of our coins score
scoreboard players operation @s coins -= #drop_coins value

#possibly drop MEGA coins (worth 50)
scoreboard players set #drop_mega_coins value 0
execute if score #drop_coins value matches 50.. run scoreboard players add #drop_mega_coins value 1
execute if score #drop_coins value matches 50.. run scoreboard players remove #drop_coins value 50
execute if score #drop_coins value matches 50.. run scoreboard players add #drop_mega_coins value 1
execute if score #drop_coins value matches 50.. run scoreboard players remove #drop_coins value 50
execute if score #drop_coins value matches 50.. run scoreboard players add #drop_mega_coins value 1
execute if score #drop_coins value matches 50.. run scoreboard players remove #drop_coins value 50
execute if score #drop_coins value matches 50.. run scoreboard players add #drop_mega_coins value 1
execute if score #drop_coins value matches 50.. run scoreboard players remove #drop_coins value 50

#count the change, just like in 2nd grade???
scoreboard players set #5 value 5
scoreboard players operation #drop_coins_change value = #drop_coins value
scoreboard players operation #drop_coins_change value %= #5 value

#dead tank drops our coins
execute as @e[tag=player_char,type=zombie] if score @s playerID = #victimID value at @s run function ttr:random/powerups/dead_tank_spawn_coins

function ttr:game/end_burst_streak
scoreboard players set @s deathTime 1
scoreboard players set @s afkTime 0
scoreboard players set @s burstStreak 0
scoreboard players operation #dedID value = @s playerID
execute as @e[tag=player_char,type=zombie] if score @s playerID = #dedID value at @s run particle explosion ~ ~.4 ~ 0 0 0 1 0 force @a
execute if score @s color_2 matches 1 as @e[tag=player_char,type=zombie] if score @s playerID = #dedID value at @s run particle block{block_state:"minecraft:green_concrete"} ~ ~.5 ~ 0.3 0.3 0.3 1 15 normal
execute if score @s color_2 matches 2 as @e[tag=player_char,type=zombie] if score @s playerID = #dedID value at @s run particle block{block_state:"minecraft:red_concrete"} ~ ~.5 ~ 0.3 0.3 0.3 1 15 normal
execute if score @s color_2 matches 3 as @e[tag=player_char,type=zombie] if score @s playerID = #dedID value at @s run particle block{block_state:"minecraft:blue_concrete"} ~ ~.5 ~ 0.3 0.3 0.3 1 15 normal
execute if score @s color_2 matches 4 as @e[tag=player_char,type=zombie] if score @s playerID = #dedID value at @s run particle block{block_state:"minecraft:yellow_concrete"} ~ ~.5 ~ 0.3 0.3 0.3 1 15 normal
execute if score @s color_2 matches 5 as @e[tag=player_char,type=zombie] if score @s playerID = #dedID value at @s run particle block{block_state:"minecraft:snow_block"} ~ ~.5 ~ 0.3 0.3 0.3 1 15 normal
execute if score @s color_2 matches 6 as @e[tag=player_char,type=zombie] if score @s playerID = #dedID value at @s run particle block{block_state:"minecraft:pink_concrete"} ~ ~.5 ~ 0.3 0.3 0.3 1 15 normal
execute if score @s color_2 matches 7 as @e[tag=player_char,type=zombie] if score @s playerID = #dedID value at @s run particle block{block_state:"minecraft:cyan_concrete"} ~ ~.5 ~ 0.3 0.3 0.3 1 15 normal
execute if score @s color_2 matches 8 as @e[tag=player_char,type=zombie] if score @s playerID = #dedID value at @s run particle block{block_state:"minecraft:gray_concrete"} ~ ~.5 ~ 0.3 0.3 0.3 1 15 normal
execute if score @s color_1 matches 1 as @e[tag=player_char,type=zombie] if score @s playerID = #dedID value at @s run particle block{block_state:"minecraft:green_concrete"} ~ ~.3 ~ 0.3 0.3 0.3 1 15 normal
execute if score @s color_1 matches 2 as @e[tag=player_char,type=zombie] if score @s playerID = #dedID value at @s run particle block{block_state:"minecraft:red_concrete"} ~ ~.3 ~ 0.3 0.3 0.3 1 15 normal
execute if score @s color_1 matches 3 as @e[tag=player_char,type=zombie] if score @s playerID = #dedID value at @s run particle block{block_state:"minecraft:blue_concrete"} ~ ~.3 ~ 0.3 0.3 0.3 1 15 normal
execute if score @s color_1 matches 4 as @e[tag=player_char,type=zombie] if score @s playerID = #dedID value at @s run particle block{block_state:"minecraft:yellow_concrete"} ~ ~.3 ~ 0.3 0.3 0.3 1 15 normal
execute if score @s color_1 matches 5 as @e[tag=player_char,type=zombie] if score @s playerID = #dedID value at @s run particle block{block_state:"minecraft:snow_block"} ~ ~.3 ~ 0.3 0.3 0.3 1 15 normal
execute if score @s color_1 matches 6 as @e[tag=player_char,type=zombie] if score @s playerID = #dedID value at @s run particle block{block_state:"minecraft:pink_concrete"} ~ ~.3 ~ 0.3 0.3 0.3 1 15 normal
execute if score @s color_1 matches 7 as @e[tag=player_char,type=zombie] if score @s playerID = #dedID value at @s run particle block{block_state:"minecraft:cyan_concrete"} ~ ~.3 ~ 0.3 0.3 0.3 1 15 normal
execute if score @s color_1 matches 8 as @e[tag=player_char,type=zombie] if score @s playerID = #dedID value at @s run particle block{block_state:"minecraft:gray_concrete"} ~ ~.3 ~ 0.3 0.3 0.3 1 15 normal
execute unless score #opt_gamemode value matches 7 run playsound minecraft:entity.generic.explode master @a ~ ~10 ~ 5 2
execute unless score #opt_gamemode value matches 7 run playsound minecraft:entity.item.break master @a ~ ~10 ~ 5 .6
execute if score #opt_gamemode value matches 7 unless score #infection_state value matches 2 run playsound minecraft:entity.generic.explode master @a ~ ~10 ~ 5 2
execute if score #opt_gamemode value matches 7 unless score #infection_state value matches 2 run playsound minecraft:entity.item.break master @a ~ ~10 ~ 5 .6
execute if score #opt_gamemode value matches 7 if score #infection_state value matches 2 if entity @s[tag=redTeam] run playsound minecraft:entity.generic.explode master @a ~ ~10 ~ 5 2
execute if score #opt_gamemode value matches 7 if score #infection_state value matches 2 if entity @s[tag=redTeam] run playsound minecraft:entity.item.break master @a ~ ~10 ~ 5 .6

title @s subtitle ["",{translate:"ttr.game.you_died",color:"red",bold:true}]
title @s title [""]

function ttr:game/get_respawn_time
scoreboard players operation @s respawnTime = #respawn_time value

function ttr:game/hit_feed

#items gone!!!
clear @s
scoreboard players set @s hasItem2 0
scoreboard players set @s hasItem3 0
scoreboard players set @s hasItem4 0
scoreboard players set @s hasItem5 0
scoreboard players set @s hasItem6 0
scoreboard players set @s hasItem7 0
scoreboard players set @s hasItem8 0
scoreboard players set @s hasItem9 0
scoreboard players set @s infinite_bounce 0

effect clear @s luck
effect clear @s speed
effect clear @s haste
effect clear @s absorption
effect clear @s regeneration

#move team in infection mode
execute if score #opt_gamemode value matches 7 if score #infection_state value matches 2 unless entity @s[tag=redTeam] run function ttr:game/respawn_in_place
execute if score #opt_gamemode value matches 7 if score #infection_state value matches 2 unless entity @s[tag=redTeam] run function ttr:game/switch_to_red_infect