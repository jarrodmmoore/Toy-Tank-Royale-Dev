tag @s[tag=hasSlot4] remove hasSlot4
execute if items entity @s hotbar.4 yellow_dye[custom_data~{slot4:1b,ghost_dead:1b}] run tag @s add hasSlot4
clear @s[gamemode=!creative,tag=!hasSlot4] yellow_dye

execute unless score #force_turtles value matches 1 if entity @s[tag=!hasSlot4,tag=!noInventory] run item replace entity @s hotbar.4 with minecraft:yellow_dye[item_model="ttr/tanks/full_ghost",custom_name=["",{translate:"ttr.hotbar.wait_for_next_round",color:"white",bold:false,italic:true}],custom_data={slot4:1b,ghost_dead:1b}] 1
execute if score #force_turtles value matches 1 if entity @s[tag=!hasSlot4,tag=!noInventory] run item replace entity @s hotbar.4 with minecraft:yellow_dye[item_model="ttr/turtles/full_ghost",custom_name=["",{translate:"ttr.hotbar.wait_for_next_round",color:"white",bold:false,italic:true}],custom_data={slot4:1b,ghost_dead:1b}] 1

scoreboard players set @s deathTime 0