particle block{block_state:"minecraft:yellow_concrete"} ~ ~1 ~ 0.2 0.2 0.2 1 20 force
playsound minecraft:entity.generic.big_fall master @a ~ ~10 ~ 1 2

tag @e[distance=..5,tag=target1] remove target1
tag @e[distance=..5,tag=target2] remove target2

#split into 4
execute rotated 45 0 run function ttr:shoot/shoot_basic_pellet_burst
execute rotated 135 0 run function ttr:shoot/shoot_basic_pellet_burst
execute rotated 225 0 run function ttr:shoot/shoot_basic_pellet_burst
execute rotated 315 0 run function ttr:shoot/shoot_basic_pellet_burst

#get garbage collected
scoreboard players set @s lifespan 0
tag @s remove p_can_hit
tag @s add pellet_ded