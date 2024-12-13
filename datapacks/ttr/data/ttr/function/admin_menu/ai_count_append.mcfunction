scoreboard players set #opt_aicount value 1

execute if score #opt_aicount_mod value matches 65.. run scoreboard players set #opt_aicount_mod value 64

execute at @s run playsound block.note_block.hat master @s

function ttr:admin_menu/_open_advanced