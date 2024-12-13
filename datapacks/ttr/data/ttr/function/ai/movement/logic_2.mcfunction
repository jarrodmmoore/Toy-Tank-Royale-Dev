#logic 2 = go away from target coordinates (for a brief moment)

scoreboard players remove @s[scores={aiMoveTime=1..}] aiMoveTime 1

#limit to how often we can change direction
scoreboard players set #change_dir value 0
execute unless score @s inputDir = @s inputDirPrev run scoreboard players set #change_dir value 1
scoreboard players operation @s inputDirPrev = @s inputDir

#move direction is based on our position relative to the target
scoreboard players operation #dx value = @s char_x
scoreboard players operation #dz value = @s char_z
scoreboard players operation #dx value -= @s aiTarget_x
scoreboard players operation #dz value -= @s aiTarget_z

execute if score #dx value matches 0 if score #dz value matches 1.. run scoreboard players set @s inputDir 5
execute if score #dx value matches ..-1 if score #dz value matches 1.. run scoreboard players set @s inputDir 6
execute if score #dx value matches ..-1 if score #dz value matches 0 run scoreboard players set @s inputDir 7
execute if score #dx value matches ..-1 if score #dz value matches ..-1 run scoreboard players set @s inputDir 8
execute if score #dx value matches 0 if score #dz value matches ..-1 run scoreboard players set @s inputDir 1
execute if score #dx value matches 1.. if score #dz value matches ..-1 run scoreboard players set @s inputDir 2
execute if score #dx value matches 1.. if score #dz value matches 0 run scoreboard players set @s inputDir 3
execute if score #dx value matches 1.. if score #dz value matches 1.. run scoreboard players set @s inputDir 4

#debug
#tellraw @a ["",{"text":"dx="},{"score":{"name":"#dx","objective":"value"}},{"text":" dz="},{"score":{"name":"#dz","objective":"value"}},{"text":" inputDir="},{"score":{"name":"@s","objective":"inputDir"}}]

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

execute if entity @s[scores={inputDir=1..,motion_x=0,motion_z=0}] run scoreboard players set @s aiLogic 0
#execute if entity @s[scores={inputDir=2,motion_x=0}] run scoreboard players set @s inputDir 1
#execute if entity @s[scores={inputDir=2,motion_z=0}] run scoreboard players set @s inputDir 3
#execute if entity @s[scores={inputDir=4,motion_x=0}] run scoreboard players set @s inputDir 5
#execute if entity @s[scores={inputDir=4,motion_z=0}] run scoreboard players set @s inputDir 3
#execute if entity @s[scores={inputDir=6,motion_x=0}] run scoreboard players set @s inputDir 7
#execute if entity @s[scores={inputDir=6,motion_z=0}] run scoreboard players set @s inputDir 5
#execute if entity @s[scores={inputDir=8,motion_x=0}] run scoreboard players set @s inputDir 1
#execute if entity @s[scores={inputDir=8,motion_z=0}] run scoreboard players set @s inputDir 7

#reached target, done
execute if entity @s[scores={aiMoveTime=..0}] run scoreboard players set @s aiLogic 0
execute if entity @s[scores={aiMoveTime=..0}] run scoreboard players set @s aiMoveTime 15