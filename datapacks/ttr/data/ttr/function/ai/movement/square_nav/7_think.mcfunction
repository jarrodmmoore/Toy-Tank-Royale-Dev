#agression
#skill
#vengefulness

scoreboard players set #decision value 0

#more agressive ai move between squares more often
execute if score @s aiAggression matches ..1 if score @s aiSquareTime2 matches 5.. run scoreboard players set #decision value 1
execute if score @s aiAggression matches 2 if score @s aiSquareTime2 matches 4.. run scoreboard players set #decision value 1
execute if score @s aiAggression matches 3 if score @s aiSquareTime2 matches 3.. run scoreboard players set #decision value 1
execute if score @s aiAggression matches 4 if score @s aiSquareTime2 matches 2.. run scoreboard players set #decision value 1
execute if score @s aiAggression matches 5.. if score @s aiSquareTime2 matches 1.. run scoreboard players set #decision value 1

#do a thing! (assuming we're in "wander" mode)
execute if score @s aiLogic matches 0 if score #decision value matches 1.. run function ttr:ai/movement/square_nav/7_try