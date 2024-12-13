scoreboard players set #wasFriendly value 0

scoreboard players operation #victimID value = @s playerID
scoreboard players operation #victimTeam value = @s teamID

#was this friendlyfire? (shooting yourself does NOT count as friendly fire)
execute as @a[scores={playerID=1..}] if score @s playerID = #attackerID value run tag @s add i_shot_u
execute if score #ai_count value matches 1.. as @e[tag=ai,type=zombie] if score @s playerID = #attackerID value run tag @s add i_shot_u
execute as @e[tag=i_shot_u] if score @s teamID = #victimTeam value unless score @s playerID = #victimID value run scoreboard players set #wasFriendly value 1

#not considered friendlyfire on team 0
execute if entity @s[scores={teamID=0}] run scoreboard players set #wasFriendly value 0

#not considered friendlyfire during infection wait time
execute if score #opt_gamemode value matches 7 unless score #infection_state value matches 2 run scoreboard players set #wasFriendly value 0

#shooting yourself is never friendlyfire
execute if score #wasFriendly value matches 1 if score #attackerID value = @s playerID run scoreboard players set #wasFriendly value 0

#self-damaged is turned off? don't hurt ourslves, then
execute if score #opt_selfdamage value matches 2 unless score @s teamID matches 0 if score #attackerID value = @s playerID run scoreboard players set #wasFriendly value 2
execute if score #opt_selfdamage value matches 3 if score #attackerID value = @s playerID run scoreboard players set #wasFriendly value 2

#execute if score #wasFriendly value matches 0 run function ttr:game/player_die_take_damage
#execute if score #wasFriendly value matches 1 run function ttr:game/player_die_stunned

execute if score #wasFriendly value matches 0 if entity @s[tag=!extra_life,tag=!livin,tag=!hitThisTick] run function ttr:ai/player_die_take_damage
execute if score #wasFriendly value matches 0 if entity @s[tag=extra_life,tag=!hitThisTick] run function ttr:ai/player_still_alive
execute if score #wasFriendly value matches 1 if entity @s[tag=!hitThisTick] if score #opt_friendlyfire value matches 1 run function ttr:ai/player_die_stunned
execute if score #wasFriendly value matches 1 if entity @s[tag=!hitThisTick] if score #opt_friendlyfire value matches 2 if entity @s[tag=!extra_life,tag=!livin,tag=!hitThisTick] run function ttr:ai/player_die_take_damage
execute if score #wasFriendly value matches 1 if entity @s[tag=!hitThisTick] if score #opt_friendlyfire value matches 2 if entity @s[tag=extra_life,tag=!hitThisTick] run function ttr:ai/player_still_alive

tag @e[tag=i_shot_u] remove i_shot_u