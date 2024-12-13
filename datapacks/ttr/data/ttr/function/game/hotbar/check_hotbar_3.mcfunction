#SLOT 3
tag @s[tag=hasSlot3] remove hasSlot3
execute if items entity @s hotbar.3 *[custom_data~{slot3:1b}] run tag @s add hasSlot3
execute store result score @s math run clear @s light_blue_dye 0
execute unless score @s math = @s hasItem4 run tag @s[scores={hasItem4=..10}] remove hasSlot3
clear @s[gamemode=!creative,tag=!hasSlot3] light_blue_dye
execute if entity @s[tag=!hasSlot3,tag=!noInventory] run function ttr:game/hotbar/hotbar_3