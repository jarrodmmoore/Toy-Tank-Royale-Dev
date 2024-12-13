tag @s[tag=!player_ded,tag=player_char] add player_ded
tag @s remove p_can_hit

execute if score #drop_mega_coins value matches 4.. positioned ~.3 ~ ~.3 run function ttr:random/powerups/spawn_coin_in_place_mega
execute if score #drop_mega_coins value matches 3.. positioned ~-.3 ~ ~-.3 run function ttr:random/powerups/spawn_coin_in_place_mega
execute if score #drop_mega_coins value matches 2.. positioned ~.3 ~ ~-.3 run function ttr:random/powerups/spawn_coin_in_place_mega
execute if score #drop_mega_coins value matches 1.. positioned ~-.3 ~ ~.3 run function ttr:random/powerups/spawn_coin_in_place_mega

execute if score #drop_coins value matches 50.. positioned ~ ~ ~ run function ttr:random/powerups/spawn_coin_in_place
execute if score #drop_coins value matches 45.. positioned ~ ~ ~-.5 run function ttr:random/powerups/spawn_coin_in_place
execute if score #drop_coins value matches 40.. positioned ~ ~ ~.5 run function ttr:random/powerups/spawn_coin_in_place
execute if score #drop_coins value matches 35.. positioned ~-.5 ~ ~ run function ttr:random/powerups/spawn_coin_in_place
execute if score #drop_coins value matches 30.. positioned ~.5 ~ ~ run function ttr:random/powerups/spawn_coin_in_place
execute if score #drop_coins value matches 25.. positioned ~-.3 ~ ~.3 run function ttr:random/powerups/spawn_coin_in_place
execute if score #drop_coins value matches 20.. positioned ~-.3 ~ ~-.3 run function ttr:random/powerups/spawn_coin_in_place
execute if score #drop_coins value matches 15.. positioned ~.3 ~ ~-.3 run function ttr:random/powerups/spawn_coin_in_place
execute if score #drop_coins value matches 10.. positioned ~.3 ~ ~.3 run function ttr:random/powerups/spawn_coin_in_place
execute if score #drop_coins value matches 5.. positioned ~ ~ ~ run function ttr:random/powerups/spawn_coin_in_place

execute if score #drop_coins_change value matches 4.. positioned ~.25 ~ ~ run function ttr:random/powerups/spawn_coin_in_place_mini
execute if score #drop_coins_change value matches 3.. positioned ~ ~ ~.25 run function ttr:random/powerups/spawn_coin_in_place_mini
execute if score #drop_coins_change value matches 2.. positioned ~-.25 ~ ~ run function ttr:random/powerups/spawn_coin_in_place_mini
execute if score #drop_coins_change value matches 1.. positioned ~ ~ ~-.25 run function ttr:random/powerups/spawn_coin_in_place_mini