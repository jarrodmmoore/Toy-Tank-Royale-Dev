scoreboard players add @s modelFlash 1
scoreboard players set @s[scores={modelFlash=3..}] modelFlash 1

scoreboard players operation #model_flash value = @s modelFlash
scoreboard players operation #color_1 value = @s color_1
scoreboard players operation #color_2 value = @s color_2

execute at @s as @e[tag=my_model,distance=..5,limit=1,sort=nearest] run function ttr:control/char_model_flash_body
execute at @s as @e[tag=my_model_2,distance=..5,limit=1,sort=nearest] run function ttr:control/char_model_flash_head