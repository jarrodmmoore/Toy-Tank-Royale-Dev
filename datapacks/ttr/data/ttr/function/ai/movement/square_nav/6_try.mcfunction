#set cooldown time for next decision
scoreboard players operation @s aiSquareTime3 = @e[limit=1,sort=random,type=marker,tag=randomize,scores={randomize=1..3}] randomize
execute if score @s aiCarryFlag matches 1.. run scoreboard players set @s aiSquareTime3 0

function ttr:ai/movement/square_nav/generate_move_targets

#now put on the shmoves...
tag @s add self_shmoves

#debug. always go after crown holder
#scoreboard players set #decision value 2

#1 -- go for the flag!
scoreboard players set #decisionB value 1
execute if score #decision value matches 1 if entity @s[tag=redTeam] run tag @e[limit=1,type=armor_stand,tag=blue_flag] add want_flag
execute if score #decision value matches 1 if entity @s[tag=redTeam] run tag @e[limit=1,type=armor_stand,tag=red_flag,tag=not_home] add want_flag
execute if score #decision value matches 1 if entity @s[tag=blueTeam] run tag @e[limit=1,type=armor_stand,tag=red_flag] add want_flag
execute if score #decision value matches 1 if entity @s[tag=blueTeam] run tag @e[limit=1,type=armor_stand,tag=blue_flag,tag=not_home] add want_flag
execute if score #decision value matches 1 if entity @s[tag=!redTeam,tag=!blueTeam] run tag @e[limit=1,type=armor_stand,tag=ctf_flag] add want_flag
###
#target in the same square? don't leave it, then
scoreboard players set #objectiveSquare value 0
execute if score #decision value matches 1 as @e[limit=1,sort=nearest,tag=want_flag,type=armor_stand] at @s run function ttr:ai/movement/square_nav/find_objective_square
execute if score #decision value matches 1 unless score #objectiveSquare value matches 0 if score #objectiveSquare value = #currentSquare value run scoreboard players set #decision value 4
###
execute if score #decision value matches 1 unless entity @e[tag=want_flag,type=armor_stand] run scoreboard players set #decisionB value 2
execute if score #decision value matches 1 if score #decisionB value matches 2 run tag @e[limit=1,tag=squareNavOption,sort=random,type=area_effect_cloud] add nav_go_here
execute if score #decision value matches 1 if score #decisionB value matches 1 at @e[limit=1,tag=want_flag,type=armor_stand,sort=nearest] run tag @e[limit=1,tag=squareNavOption,sort=nearest,type=area_effect_cloud] add nav_go_here
tag @e[tag=want_flag,type=armor_stand] remove want_flag

#2 -- go home ASAP!
###
#target in the same square? don't leave it, then
scoreboard players set #objectiveSquare value 0
execute if score #decision value matches 2 if entity @s[tag=redTeam] as @e[limit=1,sort=nearest,tag=red_flag,type=armor_stand] at @s run function ttr:ai/movement/square_nav/find_objective_square
execute if score #decision value matches 2 if entity @s[tag=blueTeam] as @e[limit=1,sort=nearest,tag=blue_flag,type=armor_stand] at @s run function ttr:ai/movement/square_nav/find_objective_square
execute if score #decision value matches 2 unless score #objectiveSquare value matches 0 if score #objectiveSquare value = #currentSquare value run scoreboard players set #decision value 4
###
execute if score #decision value matches 2 if entity @s[tag=redTeam] at @e[limit=1,sort=nearest,tag=red_flag,type=armor_stand] run tag @e[limit=1,tag=squareNavOption,sort=nearest,type=area_effect_cloud] add nav_go_here
execute if score #decision value matches 2 if entity @s[tag=blueTeam] at @e[limit=1,sort=nearest,tag=blue_flag,type=armor_stand] run tag @e[limit=1,tag=squareNavOption,sort=nearest,type=area_effect_cloud] add nav_go_here

#3 -- go some place random where there's hopefully not other players (neutral tank with flag tries to run away?)
scoreboard players set #decisionB value 1
execute if score #decision value matches 3 unless entity @e[tag=player_char,tag=!self_shmoves,tag=!player_ded,type=zombie] run scoreboard players set #decisionB value 2
execute if score #decision value matches 3 if score #decisionB value matches 2 run tag @e[limit=1,tag=squareNavOption,sort=random,type=area_effect_cloud] add nav_go_here
execute if score #decision value matches 3 if score #decisionB value matches 1 at @e[limit=1,sort=nearest,tag=player_char,tag=!self_shmoves,tag=!player_ded,type=zombie] run tag @e[limit=1,tag=squareNavOption,sort=furthest,type=area_effect_cloud] add nav_go_here

#nav target exists? go for it! (otherwise just do nothing)
execute if entity @e[tag=nav_go_here,type=area_effect_cloud] run function ttr:ai/movement/square_nav/set_nav_coords

#go straight for the flag within the same square, always
execute if score #decision value matches 4 run scoreboard players set @s aiTargetDir 5
execute if score #decision value matches 4 run tag @s add ai_want_objective

#clean-up
tag @s remove self_shmoves
kill @e[type=area_effect_cloud,tag=squareNavOption]