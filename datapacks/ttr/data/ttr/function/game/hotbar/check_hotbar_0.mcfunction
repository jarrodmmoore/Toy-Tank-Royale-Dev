#SLOT 0
tag @s[tag=hasSlot0] remove hasSlot0
execute if items entity @s hotbar.0 white_dye[custom_data~{slot0:1b}] run tag @s add hasSlot0
clear @s[gamemode=!creative,tag=!hasSlot0] white_dye
execute if entity @s[tag=!hasSlot0,tag=!noInventory,scores={deathTime=..0}] run item replace entity @s hotbar.0 with minecraft:white_dye[custom_model_data=1111111,custom_name='{"text":"Basic Pellet","color":"#F5F5DC","bold":true,"italic":false}',custom_data={slot0:1b}] 1