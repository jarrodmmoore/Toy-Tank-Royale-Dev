execute store result bossbar tank_bbar max run scoreboard players get #opt_coinlimit value
scoreboard players set #max_score value 0
execute store result bossbar tank_bbar value run scoreboard players get #max_score value
bossbar set tank_bbar style progress
bossbar set tank_bbar color white

bossbar set tank_bbar players

bossbar set tank_bbar name ["",{"translate":"ttr.get_coins_to_win","bold":true,"with":[{"score":{"name":"#opt_coinlimit","objective":"value"}}]}]

scoreboard players set #celebration_time value 0