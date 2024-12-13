#coin count changed? update sidebar
execute unless score @s aiCoins = @s aiDummyCoins run function ttr:ai/update_coin_display
scoreboard players operation @s aiDummyCoins = @s aiCoins

#points changed? update sidebar
execute unless score @s aiPoints = @s aiDummyPoints run function ttr:ai/update_point_display
scoreboard players operation @s aiDummyPoints = @s aiPoints