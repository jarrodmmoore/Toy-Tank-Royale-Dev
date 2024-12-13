scoreboard players add #elim_progress value 1

execute if score #elim_progress value matches 10 run scoreboard players set @e[tag=player_char,type=zombie] invulTime 70

#only one player left? game end
scoreboard players set #living_players value 0
execute as @e[type=zombie,tag=player_char,tag=!player_ded] run scoreboard players add #living_players value 1

execute if score #living_players value matches 2.. run scoreboard players set #elim_timeout value 0
execute if score #living_players value matches ..1 run scoreboard players add #elim_timeout value 1

#don't show respawn message
scoreboard players set @a[tag=inControl] respawnTime 100

#time remaining
execute if score #sudden_death value matches 0 if score #opt_elim_time value matches 1.. unless score #celebration_time value matches 1.. run function ttr:gamemodes/4_timer

#sudden death!
execute if score #sudden_death value matches 1 unless score #celebration_time value matches 1.. run function ttr:gamemodes/4_sudden_death

#show players alive
scoreboard players operation § alive = #living_players value

#end game when only 1 player remains
#execute if score #elim_progress value matches 60.. if score #elim_timeout value matches 5.. run function ttr:gamemodes/4_end
execute if score #elim_progress value matches 60.. if score #elim_timeout value matches 5.. run function ttr:gamemodes/4_celebrate