scoreboard players set #crown_check value 0

#check if there's a player who meets the coin high score
execute as @e[tag=player_char] if score @s universalCoins = #coins_highest value run scoreboard players set #crown_check value 1

#check if there's a player who EXCEEDS the coin high score
execute as @e[tag=player_char] if score @s universalCoins > #coins_highest value run scoreboard players set #crown_check value 2

#crown someone new if needed!
execute unless score #crown_check value matches 1 run scoreboard players set #coins_highest value -1
execute unless score #crown_check value matches 1 as @e[tag=player_char,sort=random] run function ttr:game/crown/find_highest_coin_count

#crown goes to the leading tank
scoreboard players set #already_ran value 0
execute as @e[tag=player_char,type=zombie] if score @s playerID = #royal_ID value unless score #already_ran value matches 1 run function ttr:game/crown/tank_get_crown