#do logic again in 4 seconds
scoreboard players set @s aiSquareTime 80
#faster if high skill
scoreboard players set @s[scores={aiSkill=4}] aiSquareTime 70
scoreboard players set @s[scores={aiSkill=5}] aiSquareTime 60

#figure out what square we're in
scoreboard players set #currentSquare value 0
execute if block ~ 9 ~ white_concrete run scoreboard players set #currentSquare value 1
execute if block ~ 9 ~ orange_concrete run scoreboard players set #currentSquare value 2
execute if block ~ 9 ~ magenta_concrete run scoreboard players set #currentSquare value 3
execute if block ~ 9 ~ light_blue_concrete run scoreboard players set #currentSquare value 4
execute if block ~ 9 ~ yellow_concrete run scoreboard players set #currentSquare value 5
execute if block ~ 9 ~ lime_concrete run scoreboard players set #currentSquare value 6
execute if block ~ 9 ~ pink_concrete run scoreboard players set #currentSquare value 7
execute if block ~ 9 ~ gray_concrete run scoreboard players set #currentSquare value 8
execute if block ~ 9 ~ light_gray_concrete run scoreboard players set #currentSquare value 9

#count how long we've been in this square
scoreboard players add @s aiSquareTime2 1

#cooldown on move attempts
scoreboard players remove @s aiSquareTime3 1
scoreboard players remove @s[tag=ai_want_objective] aiSquareTime3 1
scoreboard players set @s[scores={aiTargetDir=1..5}] aiSquareTime3 1

#moved to a new square? reset counter
scoreboard players add @s aiPrevSquare 0
execute unless score @s aiPrevSquare = #currentSquare value run function ttr:ai/movement/square_reset_counter

#use special nav to reach a target within the square we're already in?
execute if score #currentSquare value matches 1 run scoreboard players operation #sp_nav_chance value = #area_1_sp_nav value
execute if score #currentSquare value matches 2 run scoreboard players operation #sp_nav_chance value = #area_2_sp_nav value
execute if score #currentSquare value matches 3 run scoreboard players operation #sp_nav_chance value = #area_3_sp_nav value
execute if score #currentSquare value matches 4 run scoreboard players operation #sp_nav_chance value = #area_4_sp_nav value
execute if score #currentSquare value matches 5 run scoreboard players operation #sp_nav_chance value = #area_5_sp_nav value
execute if score #currentSquare value matches 6 run scoreboard players operation #sp_nav_chance value = #area_6_sp_nav value
execute if score #currentSquare value matches 7 run scoreboard players operation #sp_nav_chance value = #area_7_sp_nav value
execute if score #currentSquare value matches 8 run scoreboard players operation #sp_nav_chance value = #area_8_sp_nav value
execute if score #currentSquare value matches 9 run scoreboard players operation #sp_nav_chance value = #area_9_sp_nav value
#don't swarm our own flag at home base in ctf
execute if score #opt_gamemode value matches 6 if entity @s[tag=redTeam] if score #red_spawn_square value = #currentSquare value run scoreboard players set #sp_nav_chance value 0
execute if score #opt_gamemode value matches 6 if entity @s[tag=blueTeam] if score #blue_spawn_square value = #currentSquare value run scoreboard players set #sp_nav_chance value 0
#carrying flag? don't get distracted. go home ASAP.
execute if score #opt_gamemode value matches 6 if entity @s[tag=redTeam,scores={aiCarryFlag=1..}] unless score #red_spawn_square value = #currentSquare value run scoreboard players set #sp_nav_chance value 0
execute if score #opt_gamemode value matches 6 if entity @s[tag=blueTeam,scores={aiCarryFlag=1..}] unless score #blue_spawn_square value = #currentSquare value run scoreboard players set #sp_nav_chance value 0
#alright now do the special nav
execute if score #sp_nav_chance value matches 1.. unless entity @s[tag=sp_nav_source] run function ttr:ai/movement/square_check_special_chance

######
#do logic depending on game type

#generic (fallback)
execute unless score #opt_gamemode value matches 1..8 if score @s aiSquareTime3 matches ..0 run function ttr:ai/movement/square_nav/0_think

execute if score #opt_gamemode value matches 1 if score @s aiSquareTime3 matches ..0 run function ttr:ai/movement/square_nav/1_think
execute if score #opt_gamemode value matches 2 if score @s aiSquareTime3 matches ..0 run function ttr:ai/movement/square_nav/2_think
execute if score #opt_gamemode value matches 3 if score @s aiSquareTime3 matches ..0 run function ttr:ai/movement/square_nav/0_think
execute if score #opt_gamemode value matches 4 if score @s aiSquareTime3 matches ..0 run function ttr:ai/movement/square_nav/4_think
execute if score #opt_gamemode value matches 5 if score @s aiSquareTime3 matches ..0 run function ttr:ai/movement/square_nav/5_think
execute if score #opt_gamemode value matches 6 if score @s aiSquareTime3 matches ..0 run function ttr:ai/movement/square_nav/6_think
execute if score #opt_gamemode value matches 7 if score @s aiSquareTime3 matches ..0 run function ttr:ai/movement/square_nav/7_think
execute if score #opt_gamemode value matches 8 if score @s aiSquareTime3 matches ..0 run function ttr:ai/movement/square_nav/8_think

######

#focused on objective? drop what we're doing and go for it
execute if entity @s[tag=ai_want_objective] if score @s aiTargetDir matches 1.. if score @s aiLogic matches 1.. run scoreboard players set @s aiLogic 0