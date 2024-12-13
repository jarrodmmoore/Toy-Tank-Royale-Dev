#execute if entity @s[tag=!extra_life,tag=!livin] run function ttr:ai/player_die_for_real
#execute if entity @s[tag=extra_life] run function ttr:ai/player_still_alive

execute if entity @s[tag=!hitThisTick] run function ttr:ai/player_die_possibly

#can only get hit ONCE per tick
tag @s add hitThisTick