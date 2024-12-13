#agression
#skill
#vengefulness

scoreboard players set #decision value 0

#higher skill ai move between squares more often, with the goal of reaching the nearest grabbable flag
execute if score @s aiSkill matches ..1 if score @s aiSquareTime2 matches 4.. run scoreboard players set #decision value 1
execute if score @s aiSkill matches 2 if score @s aiSquareTime2 matches 3.. run scoreboard players set #decision value 1
execute if score @s aiSkill matches 3 if score @s aiSquareTime2 matches 2.. run scoreboard players set #decision value 1
execute if score @s aiSkill matches 4 if score @s aiSquareTime2 matches 1.. run scoreboard players set #decision value 1
execute if score @s aiSkill matches 5.. if score @s aiSquareTime2 matches 0.. run scoreboard players set #decision value 1

#some bots (at random) are really intent on the objective
execute if entity @s[tag=ai_want_objective] run scoreboard players set #decision value 1

#holding the enemy flag? bring it home ASAP!
execute if score @s aiCarryFlag matches 1.. unless entity @s[tag=!redTeam,tag=!blueTeam] run scoreboard players set #decision value 2
execute if score @s aiCarryFlag matches 1.. if entity @s[tag=!redTeam,tag=!blueTeam] run scoreboard players set #decision value 3

#do a thing! (assuming we're in "wander" mode)
execute if score @s aiLogic matches 0 if score #decision value matches 1.. run function ttr:ai/movement/square_nav/6_try