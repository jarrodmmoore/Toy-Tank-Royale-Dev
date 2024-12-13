#this is isolated in its own function to avoid jank
execute if score @s infectPointsBlue > #bestAlive value run scoreboard players operation #bestAlive value = @s infectPointsBlue