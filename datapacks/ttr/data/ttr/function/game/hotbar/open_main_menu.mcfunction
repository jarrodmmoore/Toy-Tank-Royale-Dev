scoreboard players set @s cosmeticMenu 0
execute at @s run playsound minecraft:block.note_block.banjo master @s ~ 100000 ~ 100000 .5

scoreboard players reset @s carrotInput
scoreboard players set @s shootCooldown 20

clear @s yellow_dye
clear @s green_dye
clear @s structure_void
clear @s barrier