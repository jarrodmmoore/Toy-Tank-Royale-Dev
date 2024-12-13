#no crown
execute as @e[limit=1,tag=gold_crown,type=armor_stand] at @s run tp @s 8 20 8 0 0

#no coins
kill @e[type=armor_stand,tag=coin]

#sub game state
execute if score #infection_state value matches 2 run function ttr:gamemodes/7_active
execute if score #infection_state value matches 0 run function ttr:gamemodes/7_waiting
execute if score #infection_state value matches 1 run function ttr:gamemodes/7_prep