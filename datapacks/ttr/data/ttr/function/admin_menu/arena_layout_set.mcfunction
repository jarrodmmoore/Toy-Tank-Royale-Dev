scoreboard players set #2200 value 2200

scoreboard players operation #opt_teamlayout value = @s optSelect
scoreboard players operation #opt_teamlayout value -= #2200 value

execute at @s run playsound block.note_block.hat master @s

function ttr:admin_menu/_open

execute if score #opt_gamemode value matches 6 run function ttr:gamemodes/6_setup
execute if score #opt_gamemode value matches 8 run function ttr:gamemodes/8_setup