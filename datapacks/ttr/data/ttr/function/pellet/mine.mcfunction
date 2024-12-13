execute positioned ~ ~.5 ~ unless entity @e[distance=..1,tag=p_can_hit,tag=!mine,tag=!p_self] run scoreboard players add @s lifetime 1

#explode if someone steps on us
execute if entity @s[scores={lifetime=5..}] positioned ~ ~.5 ~ if entity @e[distance=..1,tag=player_char,tag=!player_ded,type=zombie] run function ttr:pellet/mine_explode

#start smoking after being alive for a bit... then boom
scoreboard players set #damage_source value 6
execute if entity @s[scores={lifetime=500..}] run particle smoke ~ ~1.1 ~ 0.1 0.1 0.1 .01 1 force @a
execute if entity @s[scores={lifetime=600..}] run function ttr:pellet/mine_explode