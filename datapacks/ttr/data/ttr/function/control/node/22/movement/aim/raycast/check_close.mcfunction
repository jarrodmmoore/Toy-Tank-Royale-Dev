scoreboard players set #check2 value 0
execute unless block ~ ~-93 ~ diamond_block run scoreboard players set #check value 1
execute if score #check2 value matches 0 run function ttr:control/node/22/movement/aim/raycast/found_location
execute if score #check2 value matches 1 positioned ^ ^ ^.2 run function ttr:control/node/22/movement/aim/raycast/check