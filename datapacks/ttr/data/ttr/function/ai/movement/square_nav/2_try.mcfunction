#set cooldown time for next decision
scoreboard players operation @s aiSquareTime3 = @e[limit=1,sort=random,type=marker,tag=randomize,scores={randomize=1..3}] randomize
execute if score @s aiSkill matches 5.. run scoreboard players remove @s aiSquareTime3 1
execute if score @s aiAggression matches 5.. run scoreboard players remove @s aiSquareTime3 1

function ttr:ai/movement/square_nav/generate_move_targets

#if not going for crown, we should probably wait a bit longer
execute if score #decision value matches 1 if score @s aiSquareTime2 matches ..2 run scoreboard players set #decision value 0

#crowned player in the same square? don't leave it, then.
scoreboard players set #objectiveSquare value 0
execute if score #decision value matches 2 as @e[limit=1,sort=nearest,tag=gold_crown,type=armor_stand] at @s run function ttr:ai/movement/square_nav/find_objective_square
execute if score #decision value matches 2 if score #objectiveSquare value matches 0 run scoreboard players set #decision value 1
execute if score #decision value matches 2 unless score #objectiveSquare value matches 0 if score #objectiveSquare value = #currentSquare value run scoreboard players set #decision value 0

#now put on the shmoves...
tag @s add self_shmoves

#debug. always go after crown holder
#scoreboard players set #decision value 2

#1 -- go some place random where there's hopefully not other players (tank with crown tries to run away?)
scoreboard players set #decisionB value 1
execute if score #decision value matches 1 unless entity @e[tag=player_char,tag=!self_shmoves,tag=!player_ded,type=zombie] run scoreboard players set #decisionB value 2
execute if score #decision value matches 1 if score #decisionB value matches 2 run tag @e[limit=1,tag=squareNavOption,sort=random,type=area_effect_cloud] add nav_go_here
execute if score #decision value matches 1 if score #decisionB value matches 1 at @e[limit=1,sort=nearest,tag=player_char,tag=!self_shmoves,tag=!player_ded,type=zombie] run tag @e[limit=1,tag=squareNavOption,sort=furthest,type=area_effect_cloud] add nav_go_here

#2 -- go towards the crown
execute if score #decision value matches 2 at @e[limit=1,sort=nearest,tag=gold_crown,type=armor_stand] run tag @e[limit=1,tag=squareNavOption,sort=nearest,type=area_effect_cloud] add nav_go_here

#nav target exists? go for it! (otherwise just do nothing)
execute if entity @e[tag=nav_go_here,type=area_effect_cloud] run function ttr:ai/movement/square_nav/set_nav_coords

#clean-up
tag @s remove self_shmoves
kill @e[type=area_effect_cloud,tag=squareNavOption]