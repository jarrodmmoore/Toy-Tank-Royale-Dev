#need 2 players in-game!
execute if score #player_count value matches 3.. run scoreboard players operation #time2start value = #opt_starttime value
execute if score #player_count value matches 3.. run scoreboard players set #infection_state value 1