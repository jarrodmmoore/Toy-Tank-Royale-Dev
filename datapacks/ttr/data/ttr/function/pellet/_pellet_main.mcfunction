#pellets alternate between checking object collisions and checking their area every tick
#we do this to reduce the number of @e collision checks happening

scoreboard players add #pelletTick value 1
execute if score #pelletTick value matches 2 run scoreboard players set #pelletTick value 0


#TICK 1 (normal) -- check for collision with hittable entity objects & check for collision with walls
#TICK 2 (lazy) -- update tags for what area the pellet is in & check for collision with walls
#these ticks are not syncronized for all pellets. every other pellet spawned into the world will have the opposite tick order of the previous spawn

execute if score #pelletTick value matches 0 as @e[tag=pellet_a,type=armor_stand] at @s run function ttr:pellet/_index
execute if score #pelletTick value matches 0 as @e[tag=pellet_b,type=armor_stand] at @s run function ttr:pellet/_index_lazy

execute if score #pelletTick value matches 1 as @e[tag=pellet_b,type=armor_stand] at @s run function ttr:pellet/_index
execute if score #pelletTick value matches 1 as @e[tag=pellet_a,type=armor_stand] at @s run function ttr:pellet/_index_lazy


#Q: why exactly would we want to know what area each pellet (and tank) is in?
#A: so we can use that information to ONLY check collisions with other stuff in the same square
#...that means, in a full 3x3 arena with players creating bedlam everywhere, we do way less distance calculations between objects
#and yes, this system considers the borders between squares. each "area" overlaps slightly with its neighbors :)

#if a pellet lies in the overlap, it simply checks for collisions twice -- once for each area it's in
#a triple or quadruple area overlap is *technically* possible, but will never happen because there are always solid walls covering those regions