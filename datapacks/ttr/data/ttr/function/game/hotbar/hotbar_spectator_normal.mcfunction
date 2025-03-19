#SLOT 0
tag @s[tag=hasSlot0] remove hasSlot0
execute if items entity @s hotbar.0 written_book[custom_data~{slot0:1b}] run tag @s add hasSlot0
clear @s[gamemode=!creative,tag=!hasSlot0] written_book
execute if entity @s[tag=!hasSlot0,tag=!noInventory] unless score @s bookCooldown matches 1.. run function ttr:game/hotbar/spectator_book

#SLOT 1

#SLOT 2

#SLOT 3

#SLOT 4
execute if score #opt_teams value matches 0 if score #opt_permadeath value matches 0 run function ttr:game/hotbar/hotbar_spectator_4
execute if score #opt_permadeath value matches 1 run function ttr:game/hotbar/hotbar_spectator_4_dead
execute if score #opt_teams value matches 1 if score #opt_permadeath value matches 0 run function ttr:game/hotbar/hotbar_spectator_4_teams

#SLOT 5

#SLOT 6

#SLOT 7

#SLOT 8
tag @s[tag=hasSlot8] remove hasSlot8
execute if items entity @s hotbar.8 feather[custom_data~{slot8:1b}] run tag @s add hasSlot8
clear @s[gamemode=!creative,tag=!hasSlot8] feather
execute if entity @s[tag=!hasSlot8,tag=!noInventory] run item replace entity @s hotbar.8 with minecraft:feather[custom_name={translate:"ttr.hotbar.fast_feather",bold:true,italic:false},attribute_modifiers=[{id:"spectatorfastfeather",operation:"add_value",type:"movement_speed",amount:0.35d}],custom_data={slot8:1b}] 1


#drop yellow dye to see cosmetic menu
execute if score @s cosmeticMenu matches 1.. run function ttr:game/hotbar/open_cosmetic_menu