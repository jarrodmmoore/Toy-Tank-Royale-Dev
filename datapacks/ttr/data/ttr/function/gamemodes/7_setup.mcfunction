execute store result bossbar tank_bbar max run scoreboard players get #opt_starttime value
scoreboard players set #max_score value 0
execute store result bossbar tank_bbar value run scoreboard players get #opt_starttime value
bossbar set tank_bbar style progress
bossbar set tank_bbar color white

bossbar set tank_bbar players @a

scoreboard objectives modify teamDisplay displayname ["",{translate:"ttr.display.players",color:"white",bold:true}]

scoreboard players set #infection_state value 0
scoreboard players set #start_time_tick value 0
scoreboard players set #infection_timeout value 0
scoreboard players set #celebration_time value 0

#scoreboard objectives setdisplay sidebar
scoreboard players set #show_sidebar value 0
scoreboard players set #sidebar_update value 99
scoreboard players reset § teamDisplay
scoreboard players reset §§ teamDisplay
team join sidebar_red §
team join sidebar_blue §§

team modify sidebar_red prefix ["",{translate:"ttr.game.infected",color:"red"}]
team modify sidebar_blue prefix ["",{translate:"ttr.game.alive",color:"blue"}]

bossbar set tank_bbar name ["",{translate:"ttr.game_starting_soon",bold:true}]

#all will respawn!
scoreboard players set @a[tag=inControl] deathTime 1
tag @a[tag=inControl] add force_respawn
tag @a[tag=inControl] add infection_start
execute if score #ai_count value matches 1.. run tag @e[tag=ai,type=zombie] add ai_need_reset
execute if score #ai_count value matches 1.. run tag @e[tag=ai,type=zombie] add infection_start