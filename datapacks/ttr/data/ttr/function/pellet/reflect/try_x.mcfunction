#catch a stupid edge case >:(
tag @s add check_it
execute if entity @s[scores={mvmt_dx=1..}] unless block ~-.6 ~1 ~ #ttr:pellet_okay run function ttr:pellet/reflect/z
execute if entity @s[scores={mvmt_dx=..-1}] unless block ~.6 ~1 ~ #ttr:pellet_okay run function ttr:pellet/reflect/z
execute if entity @s[tag=check_it] run function ttr:pellet/reflect/x