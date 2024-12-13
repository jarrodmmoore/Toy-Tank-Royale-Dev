#state 0 -- crown doesn't exist (should probably spawn it somewhere...)
#state 1 -- crown is on the ground
#state 2 -- someone's got the crown

execute if score #crown_keep_state value matches 0 run function ttr:game/crown/keep_0
execute if score #crown_keep_state value matches 1 run function ttr:game/crown/keep_1
execute if score #crown_keep_state value matches 2 run function ttr:game/crown/keep_2