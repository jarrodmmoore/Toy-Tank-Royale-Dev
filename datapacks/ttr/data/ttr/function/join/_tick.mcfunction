#if a player's join score is out of sync with the global value, they need to be initialized!
execute as @a unless score @s join = #join_global value run function ttr:join/player_join

scoreboard players add #join_global value 1
scoreboard players add @a join 1

#old (VERY SMELLY, BAD, LAGGY) solution
#scoreboard players add #global join 1
#execute if score #global join matches 20.. run function ttr:join/join_objective_refresh