execute store result bossbar tank_bbar max run scoreboard players get #opt_scorelimit value
scoreboard players set #max_score value 0
execute store result bossbar tank_bbar value run scoreboard players get #max_score value
bossbar set tank_bbar style progress
bossbar set tank_bbar color white

bossbar set tank_bbar players

scoreboard players reset * points

scoreboard players set @a[tag=inControl] points 0
scoreboard players set @e[tag=ai] aiPoints 0

bossbar set tank_bbar name ["",{"translate":"ttr.playing_to_x","bold":true,"with":[{"score":{"name":"#opt_scorelimit","objective":"value"}}]}]

scoreboard players set #celebration_time value 0