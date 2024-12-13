#logic 0 = wander

scoreboard players remove @s aiMoveTime 1

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

execute if entity @s[scores={inputDir=1,motion_z=0}] run scoreboard players set @s aiMoveTime 0
execute if entity @s[scores={inputDir=3,motion_x=0}] run scoreboard players set @s aiMoveTime 0
execute if entity @s[scores={inputDir=5,motion_z=0}] run scoreboard players set @s aiMoveTime 0
execute if entity @s[scores={inputDir=7,motion_x=0}] run scoreboard players set @s aiMoveTime 0

execute if entity @s[scores={inputDir=2,motion_x=0,motion_z=0}] run scoreboard players set @s aiMoveTime 0
execute if entity @s[scores={inputDir=4,motion_x=0,motion_z=0}] run scoreboard players set @s aiMoveTime 0
execute if entity @s[scores={inputDir=6,motion_x=0,motion_z=0}] run scoreboard players set @s aiMoveTime 0
execute if entity @s[scores={inputDir=8,motion_x=0,motion_z=0}] run scoreboard players set @s aiMoveTime 0

execute if entity @s[scores={inputDir=2,motion_x=0}] run scoreboard players set @s inputDir 1
execute if entity @s[scores={inputDir=2,motion_z=0}] run scoreboard players set @s inputDir 3
execute if entity @s[scores={inputDir=4,motion_x=0}] run scoreboard players set @s inputDir 5
execute if entity @s[scores={inputDir=4,motion_z=0}] run scoreboard players set @s inputDir 3
execute if entity @s[scores={inputDir=6,motion_x=0}] run scoreboard players set @s inputDir 7
execute if entity @s[scores={inputDir=6,motion_z=0}] run scoreboard players set @s inputDir 5
execute if entity @s[scores={inputDir=8,motion_x=0}] run scoreboard players set @s inputDir 1
execute if entity @s[scores={inputDir=8,motion_z=0}] run scoreboard players set @s inputDir 7

execute if entity @s[scores={aiMoveTime=..0}] run function ttr:ai/movement/choose_direction_0