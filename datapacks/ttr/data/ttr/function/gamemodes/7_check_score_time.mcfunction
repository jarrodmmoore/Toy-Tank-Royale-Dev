#this is isolated in its own function to avoid jank
scoreboard players add @s infectTimeMin 0
scoreboard players add @s infectTimeSec 0
execute if score @s infectTimeTick > #bestAliveTime value run scoreboard players operation #bestAliveTime value = @s infectTimeTick