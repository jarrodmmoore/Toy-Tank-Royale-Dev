scoreboard players set @s lifespan 10
scoreboard players add @s itemLifetime 1

#on ground
execute if entity @s[tag=!carryFlag,scores={itemLifetime=20..}] at @s run tp @s ~ ~ ~ ~2 0
execute if entity @s[tag=!carryFlag,scores={itemLifetime=20..}] unless block ~ 30 ~ #ttr:ai_move_okay_2 run scoreboard players set @s lifespan 0

#carry flag
scoreboard players set #found_flag value 0
scoreboard players operation #blueFlagID value = @s playerID
execute if entity @s[tag=carryFlag] as @e[type=zombie,tag=player_char,tag=!player_ded,tag=redTeam] if score @s playerID = #blueFlagID value run scoreboard players add #found_flag value 1
execute if entity @s[tag=carryFlag] if score #found_flag value matches 1.. as @e[type=zombie,tag=player_char,tag=!player_ded,tag=redTeam] if score @s playerID = #blueFlagID value at @s run function ttr:gamemodes/6_carry_blue_flag
execute if entity @s[tag=carryFlag] if score #found_flag value matches 0 run function ttr:gamemodes/6_announce_drop_flag
#originally, neutral players were allowed to pick up the flag.
#this was disabled due to a bug where the player could pick up both flags at the same time if the flags weren't in their home

#other team can pick up
execute if entity @s[tag=!carryFlag] at @s if entity @e[type=zombie,tag=player_char,tag=!player_ded,tag=redTeam,distance=..1] run function ttr:gamemodes/6_announce_pick_up

#what square are we in?
execute at @s run function ttr:ai/movement/square_nav/find_objective_square

#are we home?
tag @s remove not_home
execute unless score #objectiveSquare value = #blue_spawn_square value run tag @s add not_home

#flag returns to home square if red team touches it while on ground
execute unless score #objectiveSquare value = #blue_spawn_square value if entity @s[tag=!carryFlag] at @s if entity @e[type=zombie,tag=player_char,tag=!player_ded,tag=blueTeam,distance=..1] run function ttr:gamemodes/6_announce_return_to_base

#flag scores for enemy team if brought to enemy home and touched to enemy flag
execute if score #objectiveSquare value = #red_spawn_square value at @s if entity @e[type=armor_stand,tag=red_flag,tag=!carryFlag,distance=..2] run function ttr:gamemodes/6_red_score