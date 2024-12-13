#why's this in its own function? because minecraft is spaghetti (doesn't work otherwise???)
execute if score @s coins >= #max_score value run scoreboard players operation #max_score value = @s coins

execute if entity @s[tag=redTeam] run scoreboard players operation #red_coins value += @s coins
execute if entity @s[tag=blueTeam] run scoreboard players operation #blue_coins value += @s coins