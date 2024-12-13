scoreboard players set #number value 100
scoreboard players operation #level_gen_time value *= #number value

#slow transform rate = 2x slower
execute if score #opt_transformrate value matches 1 run scoreboard players set #number value 50
#rapid transform rate = 1.5x faster
execute if score #opt_transformrate value matches 3 run scoreboard players set #number value 150

scoreboard players operation #level_gen_time value /= #number value

#if transform rate is "never", just set to a crazy high value. tranform in 1200 hours or something.
execute if score #opt_transformrate value matches 0 run scoreboard players set #level_gen_time value 90000000