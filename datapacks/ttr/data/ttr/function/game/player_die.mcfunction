#okay, so something hit us
#let's figure out how to react to it.
execute if entity @s[tag=!hitThisTick] run function ttr:game/player_die_possibly

#can only get hit ONCE per tick
tag @s add hitThisTick
#mostly done so mines can't hit us multiple times before our invincibility frames kick in


#old system. ignored hitpoints, team affiliation, and self-damage settings
#execute if entity @s[tag=!extra_life,tag=!livin,tag=!hitThisTick] run function ttr:game/player_die_possibly
#execute if entity @s[tag=!extra_life,tag=!livin,tag=!hitThisTick] run function ttr:game/player_die_for_real
#execute if entity @s[tag=extra_life,tag=!hitThisTick] run function ttr:game/player_still_alive