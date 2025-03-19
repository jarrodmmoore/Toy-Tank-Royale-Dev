#count-down to start
scoreboard players add #start_time_tick value 1
execute if score #start_time_tick value matches 20.. run scoreboard players remove #time2start value 1
execute if score #start_time_tick value matches 20.. run scoreboard players remove #start_time_tick value 20

#bbar!
bossbar set tank_bbar name ["",{translate:"ttr.game_starts_in_x",bold:true,with:[{score:{name:"#time2start",objective:"value"}}]}]
execute store result bossbar tank_bbar value run scoreboard players get #time2start value
bossbar set tank_bbar style notched_20

#players can join faster during prep!
scoreboard players remove @a[tag=!inControl,scores={shootCooldown=1..}] shootCooldown 1

#need 2 players in-game! if not, return to phase 1
scoreboard players set #has_both_teams value 0
execute if score #red_player_count value matches 1.. if score #blue_player_count value matches 1.. run scoreboard players set #has_both_teams value 1
execute if score #has_both_teams value matches 0 run function ttr:gamemodes/8_setup

#start game!
execute if score #time2start value matches ..0 if score #elimination_state value matches 1 run function ttr:gamemodes/8_start_match