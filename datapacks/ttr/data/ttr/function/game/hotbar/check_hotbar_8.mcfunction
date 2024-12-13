#SLOT 8
tag @s[tag=hasSlot8] remove hasSlot8
execute if items entity @s hotbar.8 *[custom_data~{slot8:1b}] run tag @s add hasSlot8
execute store result score @s math run clear @s cyan_dye 0
execute unless score @s math = @s hasItem9 run tag @s[scores={hasItem9=..10}] remove hasSlot8
clear @s[gamemode=!creative,tag=!hasSlot8] cyan_dye
execute if entity @s[tag=!hasSlot8,tag=!noInventory] run function ttr:game/hotbar/hotbar_8