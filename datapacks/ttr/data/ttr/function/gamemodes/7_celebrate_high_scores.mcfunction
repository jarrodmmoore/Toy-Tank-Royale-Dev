#find most points as infected
scoreboard players set #bestInfected value 0
execute as @a[tag=inControl] run function ttr:gamemodes/7_check_score_infected
execute if score #ai_count value matches 1.. as @e[tag=ai,type=zombie] run function ttr:gamemodes/7_check_score_infected

#find most points as alive
scoreboard players set #bestAlive value 0
execute as @a[tag=inControl] run function ttr:gamemodes/7_check_score_alive
execute if score #ai_count value matches 1.. as @e[tag=ai,type=zombie] run function ttr:gamemodes/7_check_score_alive

#find longest time survived as alive
scoreboard players set #bestAliveTime value 0
execute as @a[tag=inControl] run function ttr:gamemodes/7_check_score_time
execute if score #ai_count value matches 1.. as @e[tag=ai,type=zombie] run function ttr:gamemodes/7_check_score_time