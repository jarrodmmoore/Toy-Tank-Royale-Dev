execute at @s run playsound block.note_block.hat master @s

scoreboard players add #opt_aidifficulty value 1
execute if score #opt_aidifficulty value matches 6.. run scoreboard players set #opt_aidifficulty value 0

function ttr:admin_menu/_open_advanced
execute if score #opt_aidifficulty value matches 1.. as @e[tag=ai] run function ttr:ai/mutate_limit