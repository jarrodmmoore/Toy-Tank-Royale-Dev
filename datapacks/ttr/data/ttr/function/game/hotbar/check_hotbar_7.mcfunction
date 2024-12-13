#SLOT 7
tag @s[tag=hasSlot7] remove hasSlot7
execute if items entity @s hotbar.7 *[custom_data~{slot7:1b}] run tag @s add hasSlot7
execute store result score @s math run clear @s light_gray_dye 0
execute unless score @s math = @s hasItem8 run tag @s[scores={hasItem8=..10}] remove hasSlot7
clear @s[gamemode=!creative,tag=!hasSlot7] light_gray_dye
execute if entity @s[tag=!hasSlot7,tag=!noInventory] run function ttr:game/hotbar/hotbar_7