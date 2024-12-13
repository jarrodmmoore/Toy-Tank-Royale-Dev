#join red or blue?

#opt_aiteam 0 = fill teams to balance the game
#opt_aiteam 1 = equal number of AI on both teams
#opt_aiteam 2 = all AI join red
#opt_aiteam 3 = all AI join blue
#opt_aiteam 4 = all AI join neutral

scoreboard players set #player_count_red value 0
scoreboard players set #player_count_blue value 0
execute as @e[type=zombie,tag=redTeam] run scoreboard players add #player_count_red value 1
execute as @e[type=zombie,tag=blueTeam] run scoreboard players add #player_count_blue value 1
scoreboard players set #ai_count_red value 0
scoreboard players set #ai_count_blue value 0
execute as @e[type=zombie,tag=ai,tag=redTeam] run scoreboard players add #ai_count_red value 1
execute as @e[type=zombie,tag=ai,tag=blueTeam] run scoreboard players add #ai_count_blue value 1

scoreboard players set #join_team value 0

#join smaller team
execute if score #opt_aiteam value matches 0 if score #player_count_red value > #player_count_blue value run scoreboard players set #join_team value 2
execute if score #opt_aiteam value matches 0 if score #player_count_red value < #player_count_blue value run scoreboard players set #join_team value 1
execute if score #opt_aiteam value matches 0 if score #player_count_red value = #player_count_blue value run scoreboard players operation #join_team value = @e[limit=1,type=marker,sort=random,tag=randomize,scores={randomize=1..2}] randomize

#join team with less AIs
execute if score #opt_aiteam value matches 1 if score #ai_count_red value > #ai_count_blue value run scoreboard players set #join_team value 2
execute if score #opt_aiteam value matches 1 if score #ai_count_red value < #ai_count_blue value run scoreboard players set #join_team value 1
#in both teams have equal AIs, join the smaller team
execute if score #opt_aiteam value matches 1 if score #ai_count_red value = #ai_count_blue value if score #player_count_red value > #player_count_blue value run scoreboard players set #join_team value 2
execute if score #opt_aiteam value matches 1 if score #ai_count_red value = #ai_count_blue value if score #player_count_red value < #player_count_blue value run scoreboard players set #join_team value 1
execute if score #opt_aiteam value matches 1 if score #ai_count_red value = #ai_count_blue value if score #player_count_red value = #player_count_blue value run scoreboard players operation #join_team value = @e[limit=1,type=marker,sort=random,tag=randomize,scores={randomize=1..2}] randomize
#exception: if enforcing team balance, must join smaller team if one is smaller
execute if score #opt_aiteam value matches 1 if score #opt_teambalance value matches 1..2 if score #player_count_red value > #player_count_blue value run scoreboard players set #join_team value 2
execute if score #opt_aiteam value matches 1 if score #opt_teambalance value matches 1..2 if score #player_count_red value < #player_count_blue value run scoreboard players set #join_team value 1

#force a team
execute if score #opt_aiteam value matches 2 run scoreboard players set #join_team value 1
execute if score #opt_aiteam value matches 3 run scoreboard players set #join_team value 2
execute if score #opt_aiteam value matches 4 run scoreboard players set #join_team value 0

#infection mode: forced to join blue no matter what
execute if score #opt_gamemode value matches 7 unless score #infection_state value matches 2 run scoreboard players set #join_team value 2
execute if score #opt_gamemode value matches 7 if score #infection_state value matches 2 run scoreboard players set #join_team value 1

tag @s remove redTeam
tag @s remove blueTeam
execute if score #join_team value matches 1 run tag @s add redTeam
execute if score #join_team value matches 1 run scoreboard players set @s teamID 1
execute if score #join_team value matches 2 run tag @s add blueTeam
execute if score #join_team value matches 2 run scoreboard players set @s teamID 2
execute if score #join_team value matches 0 run scoreboard players reset @s teamID