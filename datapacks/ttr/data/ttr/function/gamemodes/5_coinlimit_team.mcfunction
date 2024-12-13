scoreboard players set #red_coins value 0
scoreboard players set #blue_coins value 0

#calculate total score
scoreboard players set #max_score value -1
execute as @a[tag=inControl] run function ttr:gamemodes/check_coins_human
execute if score #ai_count value matches 1.. as @e[tag=ai] run function ttr:gamemodes/check_coins_ai
execute if score #red_coins value > #blue_coins value run scoreboard players operation #max_score value = #red_coins value
execute unless score #red_coins value > #blue_coins value run scoreboard players operation #max_score value = #blue_coins value
scoreboard players operation § teamDisplay = #red_coins value
scoreboard players operation §§ teamDisplay = #blue_coins value

#score limit bbar
bossbar set tank_bbar players @a
execute store result bossbar tank_bbar value run scoreboard players get #max_score value

#score limit met? announce the winner
#execute if score #max_score value >= #opt_coinlimit value run function ttr:gamemodes/1_end
execute unless score #objective_check_delay value matches 1.. if score #max_score value >= #opt_coinlimit value if score #celebration_time value matches 0 run scoreboard players set #celebration_time value 1

#celebrate!
execute if score #celebration_time value matches 1.. run function ttr:gamemodes/5_celebrate_team