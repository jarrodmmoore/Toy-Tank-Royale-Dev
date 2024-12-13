execute if score #opt_arenasize_mod value matches 25 at @s run playsound block.note_block.bass master @s ~ ~ ~ 1 1.8
execute if score #opt_arenasize_mod value matches ..24 at @s run playsound block.note_block.hat master @s

scoreboard players add #opt_arenasize_mod value 1
execute if score #opt_arenasize_mod value matches 26.. run scoreboard players set #opt_arenasize_mod value 25

function ttr:admin_menu/_open_arena_settings