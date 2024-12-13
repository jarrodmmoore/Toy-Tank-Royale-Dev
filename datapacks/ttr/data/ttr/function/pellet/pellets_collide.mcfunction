#pellet can be popped? pop it
execute as @e[distance=..5,tag=target1,tag=pellet,tag=p_can_pop,tag=!burst_pellet,tag=!super_pellet,tag=!mine,limit=1,sort=nearest] at @s run function ttr:pellet/generic_air_burst
execute as @e[distance=..5,tag=target1,tag=pellet,tag=p_can_pop,tag=burst_pellet] at @s run function ttr:pellet/quad_burst
execute as @e[distance=..5,tag=target1,tag=pellet,tag=p_can_pop,tag=mine] at @s run function ttr:pellet/mine_explode
execute if entity @s[tag=super_pellet] as @e[distance=..5,tag=target1,tag=pellet,tag=super_pellet] at @s run function ttr:pellet/fiery_burst
tag @e[distance=..5,tag=target1] remove target1

#are we poppable? pop us now
execute if entity @s[tag=p_can_pop,tag=!burst_pellet] at @s run function ttr:pellet/generic_air_burst
execute if entity @s[tag=p_can_pop,tag=burst_pellet] at @s run function ttr:pellet/quad_burst