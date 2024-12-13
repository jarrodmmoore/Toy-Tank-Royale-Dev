#logic 0 = wander

#this time we follow nav!

scoreboard players set @s aiMoveTime 5

#remember where we were trying to go in case we get distracted
scoreboard players operation @s aiTargetDir2 = @s aiTargetDir

#timeout
scoreboard players remove @s aiNavTimeout 3
scoreboard players set @s[scores={aiNavTimeout=..-1}] aiNavTimeout 0

#check for change in direction
scoreboard players set #change_dir value 0
execute unless score @s inputDir = @s inputDirPrev run scoreboard players set #change_dir value 1
scoreboard players operation @s inputDirPrev = @s inputDir

#redirect if we're trying to move but can't
#execute if entity @s[scores={inputDir=1}] unless block ~ ~ ~-1 #ttr:ai_move_okay run scoreboard players set @s aiMoveTime 0
#execute if entity @s[scores={inputDir=2}] unless block ~1 ~ ~-1 #ttr:ai_move_okay run scoreboard players set @s aiMoveTime 0
#execute if entity @s[scores={inputDir=3}] unless block ~1 ~ ~ #ttr:ai_move_okay run scoreboard players set @s aiMoveTime 0
#execute if entity @s[scores={inputDir=4}] unless block ~1 ~ ~1 #ttr:ai_move_okay run scoreboard players set @s aiMoveTime 0
#execute if entity @s[scores={inputDir=5}] unless block ~ ~ ~1 #ttr:ai_move_okay run scoreboard players set @s aiMoveTime 0
#execute if entity @s[scores={inputDir=6}] unless block ~-1 ~ ~1 #ttr:ai_move_okay run scoreboard players set @s aiMoveTime 0
#execute if entity @s[scores={inputDir=7}] unless block ~-1 ~ ~ #ttr:ai_move_okay run scoreboard players set @s aiMoveTime 0
#execute if entity @s[scores={inputDir=8}] unless block ~-1 ~ ~-1 #ttr:ai_move_okay run scoreboard players set @s aiMoveTime 0

#give up if we're stuck on a wall
execute store result score @s char_xx run data get entity @s Pos[0] 100
execute store result score @s char_zz run data get entity @s Pos[2] 100
scoreboard players operation @s motion_x = @s char_xx
scoreboard players operation @s motion_x -= @s char_dxx
scoreboard players operation @s motion_z = @s char_zz
scoreboard players operation @s motion_z -= @s char_dzz
scoreboard players operation @s char_dxx = @s char_xx
scoreboard players operation @s char_dzz = @s char_zz

#ignore lack of motion for 1 tick upon changing direction
execute if score #change_dir value matches 1 run scoreboard players set @s motion_x 1
execute if score #change_dir value matches 1 run scoreboard players set @s motion_z 1

#rapid direction changes will make us give up
execute if score #change_dir value matches 1 run scoreboard players add @s aiNavTimeout 4

execute if entity @s[scores={inputDir=1,motion_z=0}] run scoreboard players add @s aiNavTimeout 4
execute if entity @s[scores={inputDir=3,motion_x=0}] run scoreboard players add @s aiNavTimeout 4
execute if entity @s[scores={inputDir=5,motion_z=0}] run scoreboard players add @s aiNavTimeout 4
execute if entity @s[scores={inputDir=7,motion_x=0}] run scoreboard players add @s aiNavTimeout 4

execute if entity @s[scores={inputDir=2,motion_x=0,motion_z=0}] run scoreboard players add @s aiNavTimeout 4
execute if entity @s[scores={inputDir=4,motion_x=0,motion_z=0}] run scoreboard players add @s aiNavTimeout 4
execute if entity @s[scores={inputDir=6,motion_x=0,motion_z=0}] run scoreboard players add @s aiNavTimeout 4
execute if entity @s[scores={inputDir=8,motion_x=0,motion_z=0}] run scoreboard players add @s aiNavTimeout 4

execute if score @s aiTargetDir matches 1 at @s positioned ~ 27 ~ run function ttr:ai/movement/get_nav_input_vector
execute if score @s aiTargetDir matches 2 at @s positioned ~ 26 ~ run function ttr:ai/movement/get_nav_input_vector
execute if score @s aiTargetDir matches 3 at @s positioned ~ 25 ~ run function ttr:ai/movement/get_nav_input_vector
execute if score @s aiTargetDir matches 4 at @s positioned ~ 24 ~ run function ttr:ai/movement/get_nav_input_vector
execute if score @s aiTargetDir matches 5 at @s positioned ~ 23 ~ run function ttr:ai/movement/get_nav_input_vector

#avoid clipping the corners of blocks!
#...by teleporting. so this means the the AI is technically cheating. you got me xP
execute if entity @s[scores={inputDir=1}] if block ~ ~ ~-1 #ttr:ai_move_okay unless block ~-.5 ~ ~-1 #ttr:ai_move_okay_2 run tp @s ~.2 ~ ~
execute if entity @s[scores={inputDir=1}] if block ~ ~ ~-1 #ttr:ai_move_okay unless block ~.5 ~ ~-1 #ttr:ai_move_okay_2 run tp @s ~-.2 ~ ~
execute if entity @s[scores={inputDir=3}] if block ~1 ~ ~ #ttr:ai_move_okay unless block ~1 ~ ~.5 #ttr:ai_move_okay_2 run tp @s ~ ~ ~-.2
execute if entity @s[scores={inputDir=3}] if block ~1 ~ ~ #ttr:ai_move_okay unless block ~1 ~ ~-.5 #ttr:ai_move_okay_2 run tp @s ~ ~ ~.2
execute if entity @s[scores={inputDir=5}] if block ~ ~ ~1 #ttr:ai_move_okay unless block ~-.5 ~ ~1 #ttr:ai_move_okay_2 run tp @s ~.2 ~ ~
execute if entity @s[scores={inputDir=5}] if block ~ ~ ~1 #ttr:ai_move_okay unless block ~.5 ~ ~1 #ttr:ai_move_okay_2 run tp @s ~-.2 ~ ~
execute if entity @s[scores={inputDir=7}] if block ~-1 ~ ~ #ttr:ai_move_okay unless block ~-1 ~ ~.5 #ttr:ai_move_okay_2 run tp @s ~ ~ ~-.2
execute if entity @s[scores={inputDir=7}] if block ~-1 ~ ~ #ttr:ai_move_okay unless block ~-1 ~ ~-.5 #ttr:ai_move_okay_2 run tp @s ~ ~ ~.2

#got stuck along the way? go back to wandering for a bit
execute if entity @s[scores={aiNavTimeout=20..}] run scoreboard players set @s aiTargetDir 0
execute if score @s aiTargetDir matches 0 run scoreboard players set @s aiMoveTime 40
execute if score @s aiTargetDir matches 0 run scoreboard players set @s aiTargetDir2 0