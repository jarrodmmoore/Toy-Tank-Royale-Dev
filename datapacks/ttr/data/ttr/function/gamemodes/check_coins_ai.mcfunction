#why's this in its own function? because minecraft is spaghetti (doesn't work otherwise???)
execute if score @s aiCoins >= #max_score value run scoreboard players operation #max_score value = @s aiCoins

execute if entity @s[tag=redTeam] run scoreboard players operation #red_coins value += @s aiCoins
execute if entity @s[tag=blueTeam] run scoreboard players operation #blue_coins value += @s aiCoins