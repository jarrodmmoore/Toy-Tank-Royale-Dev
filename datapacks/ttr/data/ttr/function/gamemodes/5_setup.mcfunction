execute store result bossbar tank_bbar max run scoreboard players get #opt_coinlimit value
scoreboard players set #max_score value 0
execute store result bossbar tank_bbar value run scoreboard players get #max_score value
bossbar set tank_bbar style progress
bossbar set tank_bbar color white

bossbar set tank_bbar players

execute if score #opt_coinmode value matches 1 run bossbar set tank_bbar name ["",{translate:"ttr.get_coins_to_win",bold:true,with:[{score:{name:"#opt_coinlimit",objective:"value"}}]}]
execute if score #opt_coinmode value matches 2 run bossbar set tank_bbar name ["",{translate:"ttr.get_coins_to_win_total",bold:true,with:[{score:{name:"#opt_coinlimit",objective:"value"}}]}]
execute if score #opt_coinmode value matches 3 run bossbar set tank_bbar name ["",{translate:"ttr.get_coins_to_win_average",bold:true,with:[{score:{name:"#opt_coinlimit",objective:"value"}}]}]

execute if score #opt_coinmode value matches 2 run scoreboard objectives modify teamDisplay displayname ["",{translate:"ttr.display.coins",bold:true}]
execute if score #opt_coinmode value matches 3 run scoreboard objectives modify teamDisplay displayname ["",{translate:"ttr.display.team_average_coins",bold:true}]

execute if score #opt_coinlimit value matches ..10 run scoreboard objectives modify teamDisplay displayname ["",{translate:"ttr.display.coins",bold:true}]

scoreboard players reset § teamDisplay
scoreboard players reset §§ teamDisplay
team join sidebar_red §
team join sidebar_blue §§
team modify sidebar_red prefix ["",{translate:"ttr.red_team",color:"red"}]
team modify sidebar_blue prefix ["",{translate:"ttr.blue_team",color:"blue"}]

scoreboard players set #celebration_time value 0