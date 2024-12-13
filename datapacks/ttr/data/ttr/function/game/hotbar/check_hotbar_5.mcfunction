#SLOT 5
tag @s[tag=hasSlot5] remove hasSlot5
execute if items entity @s hotbar.5 *[custom_data~{slot5:1b}] run tag @s add hasSlot5
execute store result score @s math run clear @s pink_dye 0
execute unless score @s math = @s hasItem6 run tag @s[scores={hasItem6=..10}] remove hasSlot5
clear @s[gamemode=!creative,tag=!hasSlot5] pink_dye
execute if entity @s[tag=!hasSlot5,tag=!noInventory] run function ttr:game/hotbar/hotbar_5