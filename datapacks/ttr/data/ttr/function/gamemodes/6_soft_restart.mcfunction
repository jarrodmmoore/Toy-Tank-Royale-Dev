#all will respawn!
scoreboard players set @a[tag=inControl] deathTime 1
tag @a[tag=inControl] add force_respawn
tag @e[tag=ai] add ai_need_reset

#kill items
kill @e[tag=item_chest,type=armor_stand]
kill @e[tag=pellet]

#regenerate nav vector fields for ai
execute if score #ai_count value matches 1.. run function ttr:ai/nav_generate/start_over

bossbar set tank_bbar name ["",{"translate":"ttr.playing_to_x_captures","bold":true,"with":[{"score":{"name":"#opt_capturelimit","objective":"value"}}]}]

scoreboard players set #celebration_time value 0

scoreboard players set #red_captures value 0
scoreboard players set #blue_captures value 0