#countdown to spawn
scoreboard players remove #powerup_time value 1
execute if score #opt_allow_coins value matches 1 run scoreboard players remove #powerup_time_coin value 1
execute if score #ai_count value matches 1.. run scoreboard players remove #powerup_time_invis value 1


#all pickups spin an make sure they're in a valid location
execute as @e[tag=item_chest,type=armor_stand] at @s run function ttr:random/powerups/chest_ambient


#spawn a powerup somewhere
execute if score #powerup_time value matches ..0 run function ttr:random/powerups/spawn

#chance to spawn coins if playing a mode with coins
execute if score #opt_allow_coins value matches 1 if score #powerup_time_coin value matches ..0 run function ttr:random/powerups/spawn_coins_think

#with ai, spawn player-invisible nodes that the AI might shoot at randomly (for chaos!)
execute if score #ai_count value matches 1.. if score #powerup_time_invis value matches ..0 run function ttr:random/powerups/spawn_invis_node_think