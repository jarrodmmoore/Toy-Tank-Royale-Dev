#set cooldown time for next decision
scoreboard players operation @s aiSquareTime3 = @e[limit=1,sort=random,type=marker,tag=randomize,scores={randomize=1..3}] randomize

function ttr:ai/movement/square_nav/generate_move_targets

execute if entity @s[tag=redTeam] run scoreboard players set #decision value 2
execute if entity @s[tag=blueTeam] run scoreboard players set #decision value 3

#now put on the shmoves...
tag @s add self_shmoves

#1 -- NEUTRAL -- go some place random where there's hopefully STUFF (like another player to shoot at)
scoreboard players set #decisionB value 1
execute if score #decision value matches 1 unless entity @e[tag=player_char,tag=!self_shmoves,tag=!player_ded,type=zombie] run scoreboard players set #decisionB value 2
execute if score #decision value matches 1 if score #decisionB value matches 2 run tag @e[limit=1,tag=squareNavOption,sort=random,type=area_effect_cloud] add nav_go_here
execute if score #decision value matches 1 if score #decisionB value matches 1 at @e[limit=1,sort=random,tag=player_char,tag=!self_shmoves,tag=!player_ded,type=zombie] run tag @e[limit=1,tag=squareNavOption,sort=nearest,type=area_effect_cloud] add nav_go_here

#2 -- RED TEAM -- go some place random where there's hopefully STUFF (like another player to shoot at)
scoreboard players set #decisionB value 1
execute if score #decision value matches 2 unless entity @e[tag=player_char,tag=!self_shmoves,tag=!player_ded,tag=!redTeam,type=zombie] run scoreboard players set #decisionB value 2
execute if score #decision value matches 2 if score #decisionB value matches 2 run tag @e[limit=1,tag=squareNavOption,sort=random,type=area_effect_cloud] add nav_go_here
execute if score #decision value matches 2 if score #decisionB value matches 1 at @e[limit=1,sort=random,tag=player_char,tag=!self_shmoves,tag=!player_ded,tag=!redTeam,type=zombie] run tag @e[limit=1,tag=squareNavOption,sort=nearest,type=area_effect_cloud] add nav_go_here

#3 -- BLUE TEAM -- go some place random where there's hopefully STUFF (like another player to shoot at)
scoreboard players set #decisionB value 1
execute if score #decision value matches 3 unless entity @e[tag=player_char,tag=!self_shmoves,tag=!player_ded,tag=!blueTeam,type=zombie] run scoreboard players set #decisionB value 2
execute if score #decision value matches 3 if score #decisionB value matches 2 run tag @e[limit=1,tag=squareNavOption,sort=random,type=area_effect_cloud] add nav_go_here
execute if score #decision value matches 3 if score #decisionB value matches 1 at @e[limit=1,sort=random,tag=player_char,tag=!self_shmoves,tag=!player_ded,tag=!blueTeam,type=zombie] run tag @e[limit=1,tag=squareNavOption,sort=nearest,type=area_effect_cloud] add nav_go_here

#nav target exists? go for it! (otherwise just do nothing)
execute if entity @e[tag=nav_go_here,type=area_effect_cloud] run function ttr:ai/movement/square_nav/set_nav_coords

#clean-up
tag @s remove self_shmoves
kill @e[type=area_effect_cloud,tag=squareNavOption]