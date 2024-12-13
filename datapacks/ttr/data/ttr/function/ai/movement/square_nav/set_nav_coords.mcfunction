#go get 'em, tiger
execute as @e[limit=1,tag=nav_go_here,type=area_effect_cloud] at @s run function ttr:ai/movement/square_nav/set_nav_coords_aec


#weird exception in ctf in the horseshoe layout
execute if entity @s[tag=redTeam,scores={aiCarryFlag=..0}] if score #opt_gamemode value matches 6 if score #opt_teamlayout value matches 7 if score #currentSquare value matches 4 run scoreboard players set #go_direction value 1
execute if entity @s[tag=redTeam,scores={aiCarryFlag=..0}] if score #opt_gamemode value matches 6 if score #opt_teamlayout value matches 7 if score #currentSquare value matches 1 run scoreboard players set #go_direction value 2
execute if entity @s[tag=redTeam,scores={aiCarryFlag=1..}] if score #opt_gamemode value matches 6 if score #opt_teamlayout value matches 7 if score #currentSquare value matches 6 run scoreboard players set #go_direction value 1
execute if entity @s[tag=redTeam,scores={aiCarryFlag=1..}] if score #opt_gamemode value matches 6 if score #opt_teamlayout value matches 7 if score #currentSquare value matches 3 run scoreboard players set #go_direction value 4
execute if entity @s[tag=blueTeam,scores={aiCarryFlag=..0}] if score #opt_gamemode value matches 6 if score #opt_teamlayout value matches 7 if score #currentSquare value matches 6 run scoreboard players set #go_direction value 1
execute if entity @s[tag=blueTeam,scores={aiCarryFlag=..0}] if score #opt_gamemode value matches 6 if score #opt_teamlayout value matches 7 if score #currentSquare value matches 3 run scoreboard players set #go_direction value 4
execute if entity @s[tag=blueTeam,scores={aiCarryFlag=1..}] if score #opt_gamemode value matches 6 if score #opt_teamlayout value matches 7 if score #currentSquare value matches 4 run scoreboard players set #go_direction value 1
execute if entity @s[tag=blueTeam,scores={aiCarryFlag=1..}] if score #opt_gamemode value matches 6 if score #opt_teamlayout value matches 7 if score #currentSquare value matches 1 run scoreboard players set #go_direction value 2


#does this tile have navigation generated? use it!
scoreboard players set #good2go value 0
execute if score #currentSquare value matches 1 if score #area_1_nav value matches 1 run scoreboard players set #good2go value 1
execute if score #currentSquare value matches 2 if score #area_2_nav value matches 1 run scoreboard players set #good2go value 1
execute if score #currentSquare value matches 3 if score #area_3_nav value matches 1 run scoreboard players set #good2go value 1
execute if score #currentSquare value matches 4 if score #area_4_nav value matches 1 run scoreboard players set #good2go value 1
execute if score #currentSquare value matches 5 if score #area_5_nav value matches 1 run scoreboard players set #good2go value 1
execute if score #currentSquare value matches 6 if score #area_6_nav value matches 1 run scoreboard players set #good2go value 1
execute if score #currentSquare value matches 7 if score #area_7_nav value matches 1 run scoreboard players set #good2go value 1
execute if score #currentSquare value matches 8 if score #area_8_nav value matches 1 run scoreboard players set #good2go value 1
execute if score #currentSquare value matches 9 if score #area_9_nav value matches 1 run scoreboard players set #good2go value 1

#using vector field
execute if score #good2go value matches 1 run scoreboard players set @s aiLogic 0
execute if score #good2go value matches 1 run scoreboard players operation @s aiTargetDir = #go_direction value


#no vector field... just try in vain?
execute if score #good2go value matches 0 run scoreboard players set @s aiLogic 1
execute if score #good2go value matches 0 run scoreboard players operation @s aiTarget_x = #go_to_x value
execute if score #good2go value matches 0 run scoreboard players operation @s aiTarget_z = #go_to_z value


#do in a slightly random amount of time?
scoreboard players operation @s aiMoveTime = @e[limit=1,sort=random,type=marker,tag=randomize,scores={randomize=1..20}] randomize