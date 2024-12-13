scoreboard players add #elim_progress value 1

execute if score #elim_progress value matches 10 run scoreboard players set @e[tag=player_char,type=zombie] invulTime 70

#show players alive
scoreboard players set #red_players_alive value 0
scoreboard players set #blue_players_alive value 0
execute as @e[type=zombie,tag=redTeam,tag=player_char,tag=!player_ded] run scoreboard players add #red_players_alive value 1
execute as @e[type=zombie,tag=blueTeam,tag=player_char,tag=!player_ded] run scoreboard players add #blue_players_alive value 1
scoreboard players operation § alive = #red_players_alive value
scoreboard players operation §§ alive = #blue_players_alive value

#one team is gone? end game
scoreboard players set #has_both_teams value 0
execute if score #red_players_alive value matches 1.. if score #blue_players_alive value matches 1.. run scoreboard players set #has_both_teams value 1

execute if score #has_both_teams value matches 1 if score #time_remaining value matches 1.. run scoreboard players set #elim_timeout value 0
execute if score #has_both_teams value matches 0 run scoreboard players add #elim_timeout value 1

#don't show respawn message
scoreboard players set @a[tag=inControl] respawnTime 100

#time remaining
execute if score #sudden_death value matches 0 if score #opt_elim_time value matches 1.. unless score #celebration_time value matches 1.. run function ttr:gamemodes/8_timer

#sudden death!
execute if score #sudden_death value matches 1 unless score #celebration_time value matches 1.. run function ttr:gamemodes/8_sudden_death

#end game when only 1 player remains
#execute if score #elim_progress value matches 60.. if score #elim_timeout value matches 5.. run function ttr:gamemodes/8_end
execute if score #elim_progress value matches 60.. if score #elim_timeout value matches 5.. run function ttr:gamemodes/8_celebrate