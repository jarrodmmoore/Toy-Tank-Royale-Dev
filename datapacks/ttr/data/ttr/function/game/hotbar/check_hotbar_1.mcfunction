#SLOT 1
tag @s[tag=hasSlot1] remove hasSlot1
execute if items entity @s hotbar.1 *[custom_data~{slot1:1b}] run tag @s add hasSlot1
execute store result score @s math run clear @s orange_dye 0
execute unless score @s math = @s hasItem2 run tag @s[scores={hasItem2=..10}] remove hasSlot1
clear @s[gamemode=!creative,tag=!hasSlot1] orange_dye
execute if entity @s[tag=!hasSlot1,tag=!noInventory] run function ttr:game/hotbar/hotbar_1