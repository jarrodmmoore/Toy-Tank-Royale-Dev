#why's this in its own function? because minecraft is spaghetti (doesn't work otherwise???)
execute if score @s points >= #max_score value run scoreboard players operation #max_score value = @s points