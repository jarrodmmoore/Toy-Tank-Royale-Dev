#this is isolated in its own function to avoid jank
execute if score @s infectPointsRed > #bestInfected value run scoreboard players operation #bestInfected value = @s infectPointsRed