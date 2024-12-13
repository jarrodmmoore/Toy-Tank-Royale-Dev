#crown hackery
execute as @a[tag=inControl] run scoreboard players operation @s coins = @s points
scoreboard players add @a[tag=inControl] coins 10
execute if score #ai_count value matches 1.. as @e[tag=ai,type=zombie] run scoreboard players operation @s aiCoins = @s aiPoints
execute if score #ai_count value matches 1.. run scoreboard players add @e[tag=ai,type=zombie] aiCoins 10

execute as @e[limit=1,tag=gold_crown,type=armor_stand] at @s run function ttr:game/crown/_crown_main

#no crown?
#execute as @e[limit=1,tag=gold_crown,type=armor_stand] at @s run tp @s 8 20 8 0 0

#no coins
kill @e[type=armor_stand,tag=coin]

#score limit in play? do stuff
execute if score #opt_scorelimit value matches 1.. run function ttr:gamemodes/3_scorelimit