#catch a stupid edge case >:(
tag @s add check_it
execute if entity @s[scores={mvmt_dz=1..}] unless block ~ ~1 ~-.6 #ttr:pellet_okay run function ttr:pellet/reflect/x
execute if entity @s[scores={mvmt_dz=..-1}] unless block ~ ~1 ~.6 #ttr:pellet_okay run function ttr:pellet/reflect/x
execute if entity @s[tag=check_it] run function ttr:pellet/reflect/z