particle explosion ^ ^1.2 ^-1 0.1 0.1 0.1 .01 1

particle large_smoke ^ ^1 ^-1 0.1 0.1 0.1 .01 2
playsound minecraft:entity.generic.big_fall master @a ~ ~10 ~ 1 2
playsound minecraft:block.netherite_block.break master @a ~ ~10 ~ 4 .5
particle flame ^ ^1.2 ^-1 1.0 0.2 1.0 .01 15

tag @e[distance=..5,tag=target1] remove target1
tag @e[distance=..5,tag=target2] remove target2

#aoe blast destroys nearby tanks (not self)
scoreboard players set #damage_source value 4
scoreboard players operation #attackerID value = @s playerID
execute if entity @s[scores={playerID=1..}] positioned ^ ^ ^-1 as @e[distance=..2,tag=player_char,tag=!player_ded,scores={invulTime=..0}] at @s unless score @s playerID = #attackerID value run function ttr:shoot/tank_player_die

tag @s add sp_self
execute as @e[distance=..1,tag=pellet,tag=super_pellet,tag=!sp_self] run function ttr:pellet/fiery_burst
tag @s remove sp_self
#kill @s
scoreboard players set @s lifespan 0
tag @s remove p_can_hit
tag @s add pellet_ded