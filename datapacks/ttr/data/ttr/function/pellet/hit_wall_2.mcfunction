#breakable blocks
execute if block ~ ~1 ~ #ttr:breakable if block ~ ~2 ~ barrier run setblock ~ ~1 ~ barrier destroy
execute if block ~ ~1 ~ #ttr:breakable run setblock ~ ~1 ~ air destroy

#explode.DIE
execute positioned ^ ^ ^-1 run function ttr:pellet/quad_burst