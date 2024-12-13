scoreboard players set #ai_logic_time value 30
scoreboard players set #ai_logic_success value 0

scoreboard players set #real_players value 0
execute as @a[tag=inControl] run scoreboard players add #real_players value 1

#singleplayer -- no bots unless there's exactly 1 player in the game
execute if score #opt_aicontext value matches 0 unless score #real_players value matches 1 if score #ai_count value matches 1.. run function ttr:ai/_ai_remove_all

#on -- no bots if there's no players in the game
execute if score #opt_aicontext value matches 3 unless score #real_players value matches 1.. if score #ai_count value matches 1.. run function ttr:ai/_ai_remove_all

#bots always off option
execute if score #opt_aicontext value matches 2 if score #ai_count value matches 1.. run function ttr:ai/_ai_remove_all

#fine-tune the bot count if not totally disabled
execute if score #opt_aicontext value matches 0 if score #real_players value matches 1 run function ttr:ai/add_remove_logic_incremental
execute if score #opt_aicontext value matches 1 run function ttr:ai/add_remove_logic_incremental
execute if score #opt_aicontext value matches 3 if score #real_players value matches 1.. run function ttr:ai/add_remove_logic_incremental


#faster interval if we recently did something
execute if score #ai_logic_success value matches 1 run scoreboard players set #ai_logic_time value 6

#very fast interval during the prep time of certain gamemodes
execute if score #opt_gamemode value matches 4 if score #elimination_state value matches 1 run scoreboard players set #ai_logic_time value 2
execute if score #opt_gamemode value matches 7 if score #infection_state value matches 1 run scoreboard players set #ai_logic_time value 2
execute if score #opt_gamemode value matches 8 if score #elimination_state value matches 1 run scoreboard players set #ai_logic_time value 2