tag @s[tag=hasSlot0] remove hasSlot0
execute if items entity @s hotbar.0 white_dye[custom_data~{slot0:1b}] run tag @s add hasSlot0
clear @s[gamemode=!creative,tag=!hasSlot0] white_dye
execute if entity @s[tag=!hasSlot0,tag=!noInventory] run item replace entity @s hotbar.0 with minecraft:white_dye[item_model="ttr/projectiles/basic_pellet",custom_name='{"translate":"ttr.hotbar.basic_pellet","color":"#F5F5DC","bold":true,"italic":false}',custom_data={slot0:1b}] 1