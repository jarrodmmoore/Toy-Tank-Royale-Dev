scoreboard players remove #recursions value 1

#visuals
particle flame ~ ~1 ~ .2 0 .2 .01 5 force
particle large_smoke ~ ~1 ~ .2 0 .2 .01 2 force

#kill things
execute positioned ~-.5 ~ ~-.5 as @e[tag=player_char,tag=p_can_hit,tag=!player_ded,dx=1,dy=2,dz=1,type=zombie] unless entity @s[scores={invulTime=1..}] at @s run function ttr:pellet/hit_player_with_mine
execute positioned ~-.5 ~ ~-.5 as @e[tag=pellet,tag=!mine,dx=1,dy=2,dz=1,type=armor_stand] at @s run function ttr:pellet/generic_air_burst
execute positioned ~-.5 ~ ~-.5 run kill @e[type=armor_stand,tag=item_chest,tag=!coin,dx=1,dy=2,dz=1]

#chain reaction: explode all other mines that this explosion hitbox touches
execute positioned ~-.5 ~ ~-.5 run scoreboard players set @e[tag=mine,tag=!boomer,dx=1,dy=2,dz=1,type=armor_stand] lifetime 9999

#destroy breakable blocks
execute if block ~ ~1 ~ #ttr:breakable if block ~ ~2 ~ barrier run setblock ~ ~1 ~ barrier destroy
execute if block ~ ~1 ~ #ttr:breakable run setblock ~ ~1 ~ air destroy

execute if score #recursions value matches 1.. if block ^ ^1 ^1 #ttr:explodable positioned ^ ^ ^1 run function ttr:pellet/mine/recursion_1