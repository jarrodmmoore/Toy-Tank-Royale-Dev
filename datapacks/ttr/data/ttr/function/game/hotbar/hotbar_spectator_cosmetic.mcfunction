#SLOT 0
tag @s[tag=hasSlot0] remove hasSlot0
execute if items entity @s hotbar.0 *[custom_data~{slot0c:1b}] run tag @s add hasSlot0
clear @s[gamemode=!creative,tag=!hasSlot0] structure_void
execute if entity @s[tag=!hasSlot0,tag=!noInventory] run item replace entity @s hotbar.0 with minecraft:structure_void[custom_name={translate:"ttr.hotbar.back_to_menu",bold:false,italic:false,color:"light_purple"},custom_data={slot0c:1b}]

#SLOT 1

#SLOT 2

#SLOT 3
execute unless score @s cosmeticSet1 matches 1..9 run function ttr:game/hotbar/paint_job/body_0
execute if score @s cosmeticSet1 matches 1 run function ttr:game/hotbar/paint_job/body_1
execute if score @s cosmeticSet1 matches 2 run function ttr:game/hotbar/paint_job/body_2
execute if score @s cosmeticSet1 matches 3 run function ttr:game/hotbar/paint_job/body_3
execute if score @s cosmeticSet1 matches 4 run function ttr:game/hotbar/paint_job/body_4
execute if score @s cosmeticSet1 matches 5 run function ttr:game/hotbar/paint_job/body_5
execute if score @s cosmeticSet1 matches 6 run function ttr:game/hotbar/paint_job/body_6
execute if score @s cosmeticSet1 matches 7 run function ttr:game/hotbar/paint_job/body_7
execute if score @s cosmeticSet1 matches 8 run function ttr:game/hotbar/paint_job/body_8

#SLOT 4

#SLOT 5
execute unless score @s cosmeticSet2 matches 1..9 run function ttr:game/hotbar/paint_job/head_0
execute if score @s cosmeticSet2 matches 1 run function ttr:game/hotbar/paint_job/head_1
execute if score @s cosmeticSet2 matches 2 run function ttr:game/hotbar/paint_job/head_2
execute if score @s cosmeticSet2 matches 3 run function ttr:game/hotbar/paint_job/head_3
execute if score @s cosmeticSet2 matches 4 run function ttr:game/hotbar/paint_job/head_4
execute if score @s cosmeticSet2 matches 5 run function ttr:game/hotbar/paint_job/head_5
execute if score @s cosmeticSet2 matches 6 run function ttr:game/hotbar/paint_job/head_6
execute if score @s cosmeticSet2 matches 7 run function ttr:game/hotbar/paint_job/head_7
execute if score @s cosmeticSet2 matches 8 run function ttr:game/hotbar/paint_job/head_8

#SLOT 6

#SLOT 7

#SLOT 8
tag @s[tag=hasSlot0] remove hasSlot8
execute if items entity @s hotbar.8 *[custom_data~{slot8c:1b}] run tag @s add hasSlot8
clear @s[gamemode=!creative,tag=!hasSlot8] barrier
execute if entity @s[tag=!hasSlot8,tag=!noInventory] run item replace entity @s hotbar.8 with minecraft:barrier[custom_name={translate:"ttr.hotbar.clear_all",bold:false,italic:false,color:"gray"},custom_data={slot8c:1b}]

#inputs
execute if entity @s[scores={cosmeticMenu=101..}] run function ttr:game/hotbar/paint_job/cycle_body
execute if entity @s[scores={cosmeticMenu2=101..}] run function ttr:game/hotbar/paint_job/cycle_head

execute if entity @s[scores={carrotInput=1..,shootCooldown=..0}] if items entity @s weapon.mainhand *[custom_data~{slot0c:1b}] run function ttr:game/hotbar/open_main_menu
execute if entity @s[scores={carrotInput=1..,shootCooldown=..0}] if items entity @s weapon.mainhand *[custom_data~{slot8c:1b}] run function ttr:game/hotbar/paint_job/clear