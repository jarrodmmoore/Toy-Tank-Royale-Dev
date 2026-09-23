#state 0 -- crown doesn't exist (should probably spawn it somewhere...)
#state 1 -- crown is on the ground
#state 2 -- someone's got the crown

execute if score #crown_keep_state value matches 0 run function ttr:game/crown/keep_0
execute if score #crown_keep_state value matches 1 run function ttr:game/crown/keep_1
execute if score #crown_keep_state value matches 2 run function ttr:game/crown/keep_2

#if we're in state 1 or 2, summon a dummy armor stand that bots will want to path towards at our location
execute if entity @s[tag=priorityTarget] positioned ~ 29.5 ~ run function ttr:game/crown/summon_dummy_priority_target