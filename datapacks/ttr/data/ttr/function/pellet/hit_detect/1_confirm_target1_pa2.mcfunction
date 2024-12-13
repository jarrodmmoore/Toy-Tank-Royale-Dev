tag @e[tag=pa2,limit=1,sort=nearest,tag=!p_self,tag=p_can_hit,tag=pellet,type=armor_stand] add target1
function ttr:pellet/pellets_collide
tag @e[tag=target1,type=armor_stand] remove target1