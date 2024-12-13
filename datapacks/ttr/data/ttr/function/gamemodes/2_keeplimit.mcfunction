#calculate highest score
scoreboard players set #max_score value -1
execute as @a[tag=inControl] run function ttr:gamemodes/check_points_human
execute if score #ai_count value matches 1.. as @e[tag=ai,type=zombie] run function ttr:gamemodes/check_points_ai

#score limit bbar
bossbar set tank_bbar players @a
execute store result bossbar tank_bbar value run scoreboard players get #max_score value

#score limit met? announce the winner
#execute if score #max_score value >= #opt_keeplimit value run function ttr:gamemodes/2_end
execute unless score #objective_check_delay value matches 1.. if score #max_score value >= #opt_keeplimit value if score #celebration_time value matches 0 run scoreboard players set #celebration_time value 1

#celebrate!
execute if score #celebration_time value matches 1.. run function ttr:gamemodes/2_celebrate