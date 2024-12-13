#which score is higher?
scoreboard players set #max_score value -1
execute if score #red_captures value > #blue_captures value run scoreboard players operation #max_score value = #red_captures value
execute unless score #red_captures value > #blue_captures value run scoreboard players operation #max_score value = #blue_captures value

#score limit bbar
bossbar set tank_bbar players @a
execute store result bossbar tank_bbar value run scoreboard players get #max_score value

#score limit met? announce the winner
#execute if score #max_score value >= #opt_coinlimit value run function ttr:gamemodes/1_end
execute unless score #objective_check_delay value matches 1.. if score #max_score value >= #opt_capturelimit value if score #celebration_time value matches 0 run scoreboard players set #celebration_time value 1

#celebrate!
execute if score #celebration_time value matches 1.. run function ttr:gamemodes/6_celebrate_team