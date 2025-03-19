scoreboard players set #ai_logic_success value 1

execute as @e[tag=ai,type=zombie] if score @s playerID = #ai_ID value run tag @s add ai_goodbye

scoreboard players remove #ai_ID value 1
scoreboard players remove #ai_count value 1

tellraw @a[tag=inControl,scores={shutUp=..0}] ["",{translate:"ttr.game.ai_left_game",color:"#66FF88",with:[{selector:"@e[tag=ai,tag=ai_goodbye]"}]}]

kill @e[tag=ai,tag=ai_goodbye]
tag @e[tag=ai_goodbye] remove ai_goodbye

function ttr:game/reset_coin_objective

#update sidebar display in the next few ticks
scoreboard players set #sidebar_update value 38

#team availability check
function ttr:game/team_availability