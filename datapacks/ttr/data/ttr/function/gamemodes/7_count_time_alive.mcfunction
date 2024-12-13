scoreboard players add @s infectTimeTick 1
scoreboard players add @s infectTimeTick2 1

execute if score @s infectTimeTick2 matches 20.. run scoreboard players add @s infectTimeSec 1
execute if score @s infectTimeTick2 matches 20.. run scoreboard players remove @s infectTimeTick2 20

execute if score @s infectTimeSec matches 60.. run scoreboard players add @s infectTimeMin 1
execute if score @s infectTimeSec matches 60.. run scoreboard players remove @s infectTimeSec 60