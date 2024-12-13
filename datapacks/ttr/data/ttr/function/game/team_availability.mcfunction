#ligma balls

#determine the player difference between teams, just in case we're trying to restrict team joining for balance (optional)
scoreboard players set #red_team_available value 1
scoreboard players set #blue_team_available value 1

#count players
scoreboard players set #red_player_count value 0
scoreboard players set #blue_player_count value 0
execute as @e[type=zombie,tag=player_char,tag=redTeam] run scoreboard players add #red_player_count value 1
execute as @e[type=zombie,tag=player_char,tag=blueTeam] run scoreboard players add #blue_player_count value 1

#count ai on each team
scoreboard players set #ai_count_red value 0
scoreboard players set #ai_count_blue value 0
execute as @e[type=zombie,tag=ai,tag=redTeam] run scoreboard players add #ai_count_red value 1
execute as @e[type=zombie,tag=ai,tag=blueTeam] run scoreboard players add #ai_count_blue value 1
scoreboard players operation #ai_team_difference value = #ai_count_red value
scoreboard players operation #ai_team_difference value -= #ai_count_blue value

#get difference
scoreboard players operation #team_pc_difference value = #red_player_count value
scoreboard players operation #team_pc_difference value -= #blue_player_count value

scoreboard players set #team_advantage value 0
execute if score #team_pc_difference value matches 1.. run scoreboard players set #team_advantage value 1
execute if score #team_pc_difference value matches ..-1 run scoreboard players set #team_advantage value 2

#this value gets used elsewhere, save it
scoreboard players operation #remember_team_advantage value = #team_pc_difference value

#bots will switch teams during gameplay when #opt_aiteam = 0..1, so this gives us some wiggle room for balance
execute if score #opt_aiteam value matches 0..1 if score #team_advantage value matches 1 run scoreboard players operation #team_pc_difference value -= #ai_count value
execute if score #opt_aiteam value matches 0..1 if score #team_advantage value matches 2 run scoreboard players operation #team_pc_difference value += #ai_count value

#restrict teams if unbalanced (unless #opt_teambalance = 0)
execute if score #opt_teambalance value matches 1.. if score #team_advantage value matches 1 if score #team_pc_difference value matches 1.. run scoreboard players set #red_team_available value 0
execute if score #opt_teambalance value matches 1.. if score #team_advantage value matches 2 if score #team_pc_difference value matches ..-1 run scoreboard players set #blue_team_available value 0

#infection mode, all must join blue
execute if score #opt_gamemode value matches 7 unless score #infection_state value matches 2 run scoreboard players set #red_team_available value 0
execute if score #opt_gamemode value matches 7 unless score #infection_state value matches 2 run scoreboard players set #blue_team_available value 1
#unless game is already started. then we join red
execute if score #opt_gamemode value matches 7 if score #infection_state value matches 2 run scoreboard players set #red_team_available value 1
execute if score #opt_gamemode value matches 7 if score #infection_state value matches 2 run scoreboard players set #blue_team_available value 0