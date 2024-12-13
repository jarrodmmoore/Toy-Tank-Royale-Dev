#SLOT 2
tag @s[tag=hasSlot2] remove hasSlot2
execute if items entity @s hotbar.2 *[custom_data~{slot2:1b}] run tag @s add hasSlot2
execute store result score @s math run clear @s magenta_dye 0
execute unless score @s math = @s hasItem3 run tag @s[scores={hasItem3=..10}] remove hasSlot2
clear @s[gamemode=!creative,tag=!hasSlot2] magenta_dye
execute if entity @s[tag=!hasSlot2,tag=!noInventory] run function ttr:game/hotbar/hotbar_2