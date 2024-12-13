scoreboard players remove #recursions value 1
particle soul ^ ^ ^1 0 0 0 0 1 force @s
execute if score #recursions value matches 1.. if block ^ ^ ^1.25 #ttr:pellet_okay if block ^ ^ ^1.5 #ttr:pellet_okay if block ^ ^ ^1.75 #ttr:pellet_okay if block ^ ^ ^2 #ttr:pellet_okay positioned ^ ^ ^1 run function ttr:movement/aim/show_aim