scoreboard players remove #work_squares value 1
scoreboard players add @s botNavProgress 1

#start generating nav for a new direction once every second or so
execute if score @s botNavProgress matches 1 run function ttr:ai/nav_generate/square_start_north
execute if score @s botNavProgress matches 26 run function ttr:ai/nav_generate/square_start_east
execute if score @s botNavProgress matches 51 run function ttr:ai/nav_generate/square_start_south
execute if score @s botNavProgress matches 76 run function ttr:ai/nav_generate/square_start_west

#done
execute if score @s botNavProgress matches 101.. run function ttr:ai/nav_generate/square_finish