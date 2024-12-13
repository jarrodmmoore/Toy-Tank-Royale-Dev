execute positioned ~ ~.85 ~ if entity @e[distance=..1,tag=p_can_hit,tag=pellet,type=armor_stand,tag=!p_self] run tag @e[tag=pa1,limit=1,sort=nearest,tag=!p_self,tag=p_can_hit,tag=pellet,type=armor_stand] add target1
execute positioned ~ ~.18 ~ if entity @e[distance=..1,tag=p_can_hit,type=zombie,tag=player_char,tag=!p_self,tag=!player_ded] run tag @e[limit=1,sort=nearest,tag=!p_self,tag=p_can_hit,tag=player_char,type=zombie] add target2

execute if entity @e[tag=target1,distance=..5,type=armor_stand,tag=pellet] run function ttr:pellet/pellets_collide
execute if entity @e[tag=target2,distance=..5,type=zombie,tag=player_char,tag=!player_ded] positioned ^ ^ ^-1 run function ttr:pellet/hit_player

tag @e[distance=..5,tag=target1] remove target1
tag @e[distance=..5,tag=target2] remove target2