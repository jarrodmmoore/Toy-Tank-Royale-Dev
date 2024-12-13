scoreboard players add #infect_progress value 1

execute if score #infect_progress value matches 10 run scoreboard players set @e[tag=player_char,type=zombie] invulTime 70

#count time alive as blue team
execute as @a[tag=inControl,tag=blueTeam] run function ttr:gamemodes/7_count_time_alive
execute if score #ai_count value matches 1.. as @e[tag=ai,tag=blueTeam,type=zombie] run function ttr:gamemodes/7_count_time_alive

#no blue players left? end game
scoreboard players set #living_players value 0
execute as @e[type=zombie,tag=player_char,tag=!player_ded,tag=blueTeam] run scoreboard players add #living_players value 1
scoreboard players set #infected_players value 0
execute as @e[type=zombie,tag=player_char,tag=redTeam] run scoreboard players add #infected_players value 1

execute if score #living_players value matches 1.. if score #infection_timeout value matches 1.. run scoreboard players remove #infection_timeout value 1
execute if score #living_players value matches ..0 run scoreboard players add #infection_timeout value 1

#no infected players? also end game
execute if score #infected_players value matches ..0 run scoreboard players add #infection_timeout value 2

#show players on each team
scoreboard players operation § teamDisplay = #infected_players value
scoreboard players operation §§ teamDisplay = #living_players value

execute if score #infect_progress value matches 60.. if score #infection_timeout value matches 5.. run function ttr:gamemodes/7_celebrate