#here comes speed racer
execute as @e[tag=temp_my_base,limit=1] run function ttr:control/warp/execute_warp

#hes a demon on wheels
execute unless entity @e[tag=temp_my_base,limit=1] run tp @s ~ ~ ~