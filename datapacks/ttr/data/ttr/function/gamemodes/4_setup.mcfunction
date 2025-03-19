execute store result bossbar tank_bbar max run scoreboard players get #opt_starttime value
scoreboard players set #max_score value 0
execute store result bossbar tank_bbar value run scoreboard players get #opt_starttime value
bossbar set tank_bbar style progress
bossbar set tank_bbar color white

bossbar set tank_bbar players @a

scoreboard players reset * points

scoreboard players set @a[tag=inControl] points 0
scoreboard players set @e[tag=ai] aiPoints 0

scoreboard players set #elimination_state value 0
scoreboard players set #sudden_death value 0
scoreboard players set #start_time_tick value 0
scoreboard players set #elim_timeout value 0
scoreboard players set #celebration_time value 0

#scoreboard objectives setdisplay sidebar
scoreboard players set #show_sidebar value 0
scoreboard players set #sidebar_update value 99

scoreboard players reset § alive
scoreboard players reset §§ alive
team join sidebar_red §

execute unless score #force_turtles value matches 1 run team modify sidebar_red prefix ["",{text:"\ue009",color:"white"}]
execute if score #force_turtles value matches 1 run team modify sidebar_red prefix ["",{text:"\ue034",color:"white"}]

scoreboard players set #opt_permadeath value 0

bossbar set tank_bbar name ["",{translate:"ttr.game_starting_soon",bold:true}]