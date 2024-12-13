#need a player on both teams!

#red_player_count
#blue_player_count

execute if score #red_player_count value matches 1.. if score #blue_player_count value matches 1.. run scoreboard players operation #time2start value = #opt_starttime value
execute if score #red_player_count value matches 1.. if score #blue_player_count value matches 1.. run scoreboard players set #elimination_state value 1