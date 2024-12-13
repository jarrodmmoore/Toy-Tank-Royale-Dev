#need 2 players in-game!
execute if score #player_count value matches 2.. run scoreboard players operation #time2start value = #opt_starttime value
execute if score #player_count value matches 2.. run scoreboard players set #elimination_state value 1