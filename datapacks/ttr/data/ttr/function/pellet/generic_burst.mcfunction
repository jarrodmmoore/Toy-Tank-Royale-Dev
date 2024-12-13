particle large_smoke ^ ^1 ^-.5 0.1 0.1 0.1 .01 2
playsound minecraft:entity.generic.big_fall master @a ~ ~10 ~ 1 2
#kill @s
scoreboard players set @s lifespan 0
tag @s remove p_can_hit
tag @s add pellet_ded