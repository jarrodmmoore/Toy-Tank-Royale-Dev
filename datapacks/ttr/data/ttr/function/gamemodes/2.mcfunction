#crown for leading player
execute as @e[limit=1,tag=gold_crown,type=armor_stand] at @s run function ttr:game/crown/_crown_main_keep

#points happen once per second
scoreboard players add #crownPointTime value 1
execute if score #crownPointTime value matches 20.. run function ttr:gamemodes/keep_crown_points_logic

#no coins
kill @e[type=armor_stand,tag=coin]

#point limit in play? do stuff
execute if score #opt_keeplimit value matches 1.. run function ttr:gamemodes/2_keeplimit