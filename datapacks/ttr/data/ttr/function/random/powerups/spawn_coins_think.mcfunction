#calculate coins in economy
scoreboard players set #coin_average value 0
execute as @a[tag=inControl] run scoreboard players operation #coin_average value += @s coins
execute if score #ai_count value matches 1.. as @e[tag=ai,type=zombie] run scoreboard players operation #coin_average value += @s aiCoins

#check if we have enough coins in the economy to meet the score limit multiplied by 2
scoreboard players set #2 value 2
scoreboard players operation #coin_threshold value = #opt_coinlimit value
scoreboard players operation #coin_threshold value *= #2 value

scoreboard players set #not_enough_1 value 0
execute if score #coin_average value <= #coin_threshold value run scoreboard players set #not_enough_1 value 1
execute if score #coin_average value <= #opt_coinlimit value run scoreboard players set #not_enough_1 value 2

#calculate average coins per player
execute if score #player_count value matches 2.. run scoreboard players operation #coin_average value /= #player_count value
execute unless score #player_count value matches 2.. run scoreboard players add #coin_average value 20

#must spawn coins if we don't have enough to meet the score limit
execute if score #opt_gamemode value matches 5 if score #opt_coinmode value matches 3 if score #coin_average value < #coin_threshold value run scoreboard players set #not_enough_1 value 1
execute if score #opt_gamemode value matches 5 if score #opt_coinmode value matches 3 if score #coin_average value < #opt_coinlimit value run scoreboard players set #not_enough_1 value 2
execute if score #opt_coinlimit value matches 11.. if score #not_enough_1 value matches 1 if score #coin_average value matches 26.. run scoreboard players set #coin_average value 25
execute if score #opt_coinlimit value matches 11.. if score #not_enough_1 value matches 2 if score #coin_average value matches 16.. run scoreboard players set #coin_average value 15

#chance to spawn a coin somewhere
#--more likely if below 30 coins per player
#--no more coin spawns at 40 coins per player
#--no coin spawns over 20 with only 1 player
#--exception: coins MUST be allowed to spawn if there's not enough coins to meet the coin score limit
scoreboard players operation #item_roll value = @e[limit=1,sort=random,type=marker,tag=randomize,scores={randomize=1..10}] randomize
execute if score #opt_allow_coins value matches 0 run scoreboard players set #item_roll value 0
execute if score #coin_average value matches 33..39 if score #item_roll value matches 1 run function ttr:random/powerups/spawn_coin
execute if score #coin_average value matches 31..32 if score #item_roll value matches 1..2 run function ttr:random/powerups/spawn_coin
execute if score #coin_average value matches 29..30 if score #item_roll value matches 1..3 run function ttr:random/powerups/spawn_coin
execute if score #coin_average value matches 26..27 if score #item_roll value matches 1..4 run function ttr:random/powerups/spawn_coin
execute if score #coin_average value matches 21..25 if score #item_roll value matches 1..5 run function ttr:random/powerups/spawn_coin
execute if score #coin_average value matches 16..20 if score #item_roll value matches 1..6 run function ttr:random/powerups/spawn_coin
execute if score #coin_average value matches 11..15 if score #item_roll value matches 1..7 run function ttr:random/powerups/spawn_coin
execute if score #coin_average value matches 6..10 if score #item_roll value matches 1..8 run function ttr:random/powerups/spawn_coin
execute if score #coin_average value matches 0..5 if score #item_roll value matches 1..9 run function ttr:random/powerups/spawn_coin


#set timer again
scoreboard players operation #player_count_valid value = #player_count value
execute if score #opt_permadeath value matches 1 as @e[type=zombie,tag=player_char,tag=player_ded] run scoreboard players remove #player_count_valid value 1
execute if score #player_count_valid value matches ..1 run scoreboard players set #powerup_time_coin value 251
execute if score #player_count_valid value matches 2 run scoreboard players set #powerup_time_coin value 171
execute if score #player_count_valid value matches 3 run scoreboard players set #powerup_time_coin value 140
execute if score #player_count_valid value matches 4 run scoreboard players set #powerup_time_coin value 123
execute if score #player_count_valid value matches 5 run scoreboard players set #powerup_time_coin value 106
execute if score #player_count_valid value matches 6 run scoreboard players set #powerup_time_coin value 89
execute if score #player_count_valid value matches 7 run scoreboard players set #powerup_time_coin value 72
execute if score #player_count_valid value matches 8 run scoreboard players set #powerup_time_coin value 56
execute if score #player_count_valid value matches 9 run scoreboard players set #powerup_time_coin value 38
execute if score #player_count_valid value matches 10..12 run scoreboard players set #powerup_time_coin value 21
execute if score #player_count_valid value matches 13..16 run scoreboard players set #powerup_time_coin value 17
execute if score #player_count_valid value matches 17.. run scoreboard players set #powerup_time_coin value 15