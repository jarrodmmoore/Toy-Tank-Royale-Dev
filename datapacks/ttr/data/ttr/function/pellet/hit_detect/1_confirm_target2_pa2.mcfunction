tag @e[tag=pa2,limit=1,sort=nearest,tag=!p_self,tag=p_can_hit,tag=player_char,type=zombie] add target2
execute positioned ^ ^ ^-1 run function ttr:pellet/hit_player
tag @e[tag=target2,type=zombie] remove target2