execute store result bossbar tank_bbar max run scoreboard players get #opt_capturelimit value
scoreboard players set #max_score value 0
execute store result bossbar tank_bbar value run scoreboard players get #max_score value
bossbar set tank_bbar style progress
bossbar set tank_bbar color white

bossbar set tank_bbar players

bossbar set tank_bbar name ["",{translate:"ttr.playing_to_x_captures",bold:true,with:[{score:{name:"#opt_capturelimit",objective:"value"}}]}]

scoreboard objectives modify teamDisplay displayname ["",{translate:"ttr.display.captures",bold:true}]
#scoreboard objectives setdisplay sidebar teamDisplay
scoreboard players set #show_sidebar value 4
scoreboard players set #sidebar_update value 99

scoreboard players reset § teamDisplay
scoreboard players reset §§ teamDisplay
team join sidebar_red §
team join sidebar_blue §§
team modify sidebar_red prefix ["",{translate:"ttr.red_team",color:"red"}]
team modify sidebar_blue prefix ["",{translate:"ttr.blue_team",color:"blue"}]

scoreboard players set #celebration_time value 0

scoreboard players set #red_captures value 0
scoreboard players set #blue_captures value 0

#set up the arena
execute as @a[tag=inControl] run function ttr:game/abandon_game
execute if entity @e[tag=ai] run function ttr:ai/_ai_remove_all
function ttr:random/level_gen/team_layout/_index
kill @e[tag=ctf_flag,type=armor_stand]