execute positioned ~ ~.85 ~ if entity @e[distance=..1,tag=p_can_hit,tag=pellet,tag=!p_self,type=armor_stand] run tag @e[limit=1,sort=nearest,tag=!p_self,tag=p_can_hit,tag=pellet,type=armor_stand] add target1
execute positioned ~ ~.18 ~ if entity @e[distance=..1,tag=p_can_hit,tag=player_char,tag=!p_self,tag=!player_ded,type=zombie] run tag @e[limit=1,sort=nearest,tag=!p_self,tag=p_can_hit,tag=player_char,type=zombie] add target2

execute if entity @e[distance=..5,tag=target1,type=armor_stand,tag=pellet] run function ttr:pellet/pellets_collide
execute if entity @e[distance=..5,tag=target2,tag=player_char,tag=!player_ded,type=zombie] positioned ^ ^ ^-1 run function ttr:pellet/hit_player

tag @e[distance=..5,tag=target1] remove target1
tag @e[distance=..5,tag=target2] remove target2