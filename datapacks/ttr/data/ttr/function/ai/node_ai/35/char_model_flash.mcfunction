scoreboard players add @s modelFlash 1
scoreboard players set @s[scores={modelFlash=3..}] modelFlash 1

scoreboard players operation #model_flash value = @s modelFlash
scoreboard players operation #color_1 value = @s color_1
scoreboard players operation #color_2 value = @s color_2

execute at @s as 00000023-0000-0001-0000-000000000002 run function ttr:control/char_model_flash_body
execute at @s as 00000023-0000-0001-0000-000000000003 run function ttr:control/char_model_flash_head