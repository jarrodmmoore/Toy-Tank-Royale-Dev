#SLOT 4
tag @s[tag=hasSlot4] remove hasSlot4
execute if items entity @s hotbar.4 *[custom_data~{slot4:1b}] run tag @s add hasSlot4
execute store result score @s math run clear @s lime_dye 0
execute unless score @s math = @s hasItem5 run tag @s[scores={hasItem5=..10}] remove hasSlot4
clear @s[gamemode=!creative,tag=!hasSlot4] lime_dye
execute if entity @s[tag=!hasSlot4,tag=!noInventory] run function ttr:game/hotbar/hotbar_4