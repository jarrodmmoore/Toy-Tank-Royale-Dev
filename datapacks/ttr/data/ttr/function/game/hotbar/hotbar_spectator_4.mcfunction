tag @s[tag=hasSlot4] remove hasSlot4
execute if entity @s[scores={shootCooldown=..0}] if items entity @s hotbar.4 *[custom_data~{slot4:1b,real:1b}] run tag @s add hasSlot4
execute if entity @s[scores={shootCooldown=1..}] if items entity @s hotbar.4 *[custom_data~{slot4:1b,ghost:1b}] run tag @s add hasSlot4
clear @s[gamemode=!creative,tag=!hasSlot4] yellow_dye

execute unless score #force_turtles value matches 1 if entity @s[tag=!hasSlot4,tag=!noInventory,scores={shootCooldown=..0}] run item replace entity @s hotbar.4 with minecraft:yellow_dye[custom_model_data=9999999,custom_name='["",{"translate":"ttr.hotbar.press_rmb_to_enter_game","color":"#55FF77","bold":true,"italic":false,"with":[{"keybind":"key.use","color":"yellow","bold":false,"italic":false}]}]',custom_data={slot4:1b,real:1b}] 1
execute if score #force_turtles value matches 1 if entity @s[tag=!hasSlot4,tag=!noInventory,scores={shootCooldown=..0}] run item replace entity @s hotbar.4 with minecraft:yellow_dye[custom_model_data=9899999,custom_name='["",{"translate":"ttr.hotbar.press_rmb_to_enter_game","color":"#55FF77","bold":true,"italic":false,"with":[{"keybind":"key.use","color":"yellow","bold":false,"italic":false}]}]',custom_data={slot4:1b,real:1b}] 1

execute unless score #force_turtles value matches 1 if entity @s[tag=!hasSlot4,tag=!noInventory,scores={shootCooldown=1..}] run item replace entity @s hotbar.4 with minecraft:yellow_dye[custom_model_data=9999998,custom_name='["",{"translate":"ttr.hotbar.please_wait_a_moment","color":"white","bold":false,"italic":true}]',custom_data={slot4:1b,ghost:1b}] 1
execute if score #force_turtles value matches 1 if entity @s[tag=!hasSlot4,tag=!noInventory,scores={shootCooldown=1..}] run item replace entity @s hotbar.4 with minecraft:yellow_dye[custom_model_data=9899998,custom_name='["",{"translate":"ttr.hotbar.please_wait_a_moment","color":"white","bold":false,"italic":true}]',custom_data={slot4:1b,ghost:1b}] 1

execute if entity @s[scores={carrotInput=1..,shootCooldown=..0}] if items entity @s weapon.mainhand *[custom_data~{slot4:1b}] run function ttr:join/try_join_game
scoreboard players set @s deathTime 0