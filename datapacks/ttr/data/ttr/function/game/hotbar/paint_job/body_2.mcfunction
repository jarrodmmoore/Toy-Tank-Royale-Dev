tag @s[tag=hasSlot3] remove hasSlot3
execute if items entity @s hotbar.3 *[custom_data~{slot3c2:1b}] run tag @s add hasSlot3
clear @s[gamemode=!creative,tag=!hasSlot3] yellow_dye
execute unless score #force_turtles value matches 1 if entity @s[tag=!hasSlot3,tag=!noInventory] run item replace entity @s hotbar.3 with minecraft:yellow_dye[custom_model_data=2111111,custom_name='{"translate":"ttr.hotbar.paint_job.body","bold":true,"italic":false,"color":"white","with":[{"text":"2","bold":false,"italic":false,"color":"yellow"}]}',custom_data={slot3c2:1b}]
execute if score #force_turtles value matches 1 if entity @s[tag=!hasSlot3,tag=!noInventory] run item replace entity @s hotbar.3 with minecraft:yellow_dye[custom_model_data=2111112,custom_name='{"translate":"ttr.hotbar.paint_job.body","bold":true,"italic":false,"color":"white","with":[{"text":"2","bold":false,"italic":false,"color":"yellow"}]}',custom_data={slot3c2:1b}]
execute if entity @s[scores={carrotInput=1..,shootCooldown=..0}] if items entity @s weapon.mainhand *[custom_data~{slot3c2:1b}] run function ttr:game/hotbar/paint_job/cycle_body