scoreboard players set #ai_ID value 0
scoreboard players set #ai_count value 0

tellraw @a[tag=inControl,scores={shutUp=..0}] ["",{"translate":"ttr.game.ai_left_game","color":"#66FF88","with":[{"selector":"@e[tag=ai]"}]}]

kill @e[tag=ai]

#update sidebar display in the next few ticks
scoreboard players set #sidebar_update value 38

function ttr:game/reset_coin_objective