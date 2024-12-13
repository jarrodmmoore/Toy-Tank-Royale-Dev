#SLOT 6
tag @s[tag=hasSlot6] remove hasSlot6
execute if items entity @s hotbar.6 *[custom_data~{slot6:1b}] run tag @s add hasSlot6
execute store result score @s math run clear @s gray_dye 0
execute unless score @s math = @s hasItem7 run tag @s[scores={hasItem7=..10}] remove hasSlot6
clear @s[gamemode=!creative,tag=!hasSlot6] gray_dye
execute if entity @s[tag=!hasSlot6,tag=!noInventory] run function ttr:game/hotbar/hotbar_6