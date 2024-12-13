scoreboard players set #red_coins value 0
scoreboard players set #blue_coins value 0

#calculate total score
execute as @a[tag=inControl] run function ttr:gamemodes/check_coins_human
execute if score #ai_count value matches 1.. as @e[tag=ai] run function ttr:gamemodes/check_coins_ai
scoreboard players operation § teamDisplay = #red_coins value
scoreboard players operation §§ teamDisplay = #blue_coins value