scoreboard players set #check value 0
execute unless block ~ ~-94 ~ diamond_block run scoreboard players set #check value 1
execute if score #check value matches 0 run function ttr:control/node/22/movement/aim/raycast/check_close
execute if score #check value matches 1 positioned ^ ^ ^1 run function ttr:control/node/22/movement/aim/raycast/check