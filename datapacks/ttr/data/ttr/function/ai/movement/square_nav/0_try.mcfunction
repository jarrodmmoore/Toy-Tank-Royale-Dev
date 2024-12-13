#set cooldown time for next decision
scoreboard players operation @s aiSquareTime3 = @e[limit=1,sort=random,type=marker,tag=randomize,scores={randomize=1..3}] randomize

function ttr:ai/movement/square_nav/generate_move_targets

#target must exist for vengence to be a thing
scoreboard players set #foundPlayer value 0
scoreboard players operation #findID value = @s aiLastKiller
execute if score #decision value matches 3 as @e[type=zombie,tag=player_char,tag=!player_ded] if score @s playerID = #findID value run scoreboard players add #foundPlayer value 1
execute if score #decision value matches 3 if score #foundPlayer value matches ..0 run scoreboard players set #decision value 1

#now put on the shmoves...
tag @s add self_shmoves

#1 -- go some place random where there's hopefully STUFF (like another player to shoot at)
scoreboard players set #decisionB value 1
execute if score #decision value matches 1 unless entity @e[tag=player_char,tag=!self_shmoves,tag=!player_ded,type=zombie] run scoreboard players set #decisionB value 2
execute if score #decision value matches 1 if score #decisionB value matches 2 run tag @e[limit=1,tag=squareNavOption,sort=random,type=area_effect_cloud] add nav_go_here
execute if score #decision value matches 1 if score #decisionB value matches 1 at @e[limit=1,sort=random,tag=player_char,tag=!self_shmoves,tag=!player_ded,type=zombie] run tag @e[limit=1,tag=squareNavOption,sort=nearest,type=area_effect_cloud] add nav_go_here

#3 -- go for revenge
execute if score #decision value matches 3 as @e[tag=player_char,tag=!self_shmoves,tag=!player_ded,type=zombie] if score @s playerID = #findID value run tag @s add checkFromHere
execute if score #decision value matches 3 at @e[limit=1,tag=checkFromHere,sort=nearest,type=zombie] run tag @e[limit=1,tag=squareNavOption,sort=nearest,type=area_effect_cloud] add nav_go_here
execute if score #decision value matches 3 run tag @e[tag=checkFromHere,type=zombie] remove checkFromHere
#I didn't bother to do a check if the revenge target is in the same square. Doesn't matter all that much, produces valuable movement anyway

#nav target exists? go for it! (otherwise just do nothing)
execute if entity @e[tag=nav_go_here,type=area_effect_cloud] run function ttr:ai/movement/square_nav/set_nav_coords

#clean-up
tag @s remove self_shmoves
kill @e[type=area_effect_cloud,tag=squareNavOption]