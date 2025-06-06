#agression
#skill
#vengefulness

scoreboard players set #decision value 0

#high skill ai move between squares more often
execute if score @s aiSkill matches ..1 if score @s aiSquareTime2 matches 3.. run scoreboard players set #decision value 1
execute if score @s aiSkill matches 2 if score @s aiSquareTime2 matches 2.. run scoreboard players set #decision value 1
execute if score @s aiSkill matches 3 if score @s aiSquareTime2 matches 1.. run scoreboard players set #decision value 1
execute if score @s aiSkill matches 4 if score @s aiSquareTime2 matches 0.. run scoreboard players set #decision value 1
execute if score @s aiSkill matches 5.. if score @s aiSquareTime2 matches 0.. run scoreboard players set #decision value 1

#some bots (at random) are really intent on the objective
execute if entity @s[tag=ai_want_objective] run scoreboard players set #decision value 2

#aggressive AI go straight for that crown
execute if score @s aiAggression matches 2 run scoreboard players operation #objective_roll value = @e[limit=1,sort=random,type=marker,tag=randomize,scores={randomize=1..17}] randomize
execute if score @s aiAggression matches 3 run scoreboard players operation #objective_roll value = @e[limit=1,sort=random,type=marker,tag=randomize,scores={randomize=4..18}] randomize
execute if score @s aiAggression matches 4 run scoreboard players operation #objective_roll value = @e[limit=1,sort=random,type=marker,tag=randomize,scores={randomize=8..19}] randomize
execute if score @s aiAggression matches 5.. run scoreboard players operation #objective_roll value = @e[limit=1,sort=random,type=marker,tag=randomize,scores={randomize=10..20}] randomize
execute unless score #royal_ID value = @s playerID if score #objective_roll value matches 11.. if score #decision value matches 1.. run scoreboard players set #decision value 2

#do a thing! (assuming we're in "wander" mode)
execute if score @s aiLogic matches 0 if score #decision value matches 1.. run function ttr:ai/movement/square_nav/2_try