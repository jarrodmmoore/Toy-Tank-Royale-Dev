#meet player count
execute if score #opt_aicount value matches 0 if score #player_count value < #opt_aicount_mod value if score #opt_permadeath value matches 0 unless score #player_count value matches 64.. run function ttr:ai/_ai_add
execute if score #opt_aicount value matches 0 if score #player_count value > #opt_aicount_mod value run function ttr:ai/_ai_remove

#append player count
execute if score #opt_aicount value matches 1 if score #ai_count value < #opt_aicount_mod value if score #opt_permadeath value matches 0 unless score #player_count value matches 64.. run function ttr:ai/_ai_add
execute if score #opt_aicount value matches 1 if score #ai_count value > #opt_aicount_mod value run function ttr:ai/_ai_remove

#check if bots need to be moved between teams for balance
execute if score #ai_count value matches 1.. if score #opt_teams value matches 1 unless score #opt_gamemode value matches 7 if score #opt_teambalance value matches 1.. if score #opt_aiteam value matches 0..1 unless score #remember_team_advantage value matches -1..1 run function ttr:ai/consider_balancing_teams

#scoreboard players set #opt_aicontext value 0
#scoreboard players set #opt_aicount value 0
#scoreboard players set #opt_aicount_mod value 3