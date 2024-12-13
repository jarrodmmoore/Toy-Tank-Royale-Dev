tag @s add self101

#get rotation of human player
tag @s add validRotation
execute store result score @s rot_pitch run data get entity @s Rotation[1] 1
execute store result score @s rot_yaw run data get entity @s Rotation[0] 1
scoreboard players add @s[scores={rot_yaw=..-1}] rot_yaw 360

#relative rotation for aiming
execute store result score @s rot_pitch2 run data get entity @s Rotation[1] 1000
execute store result score @s rot_yaw2 run data get entity @s Rotation[0] 1000
scoreboard players add @s[scores={rot_yaw2=..-1}] rot_yaw2 360000
scoreboard players remove @s rot_yaw2 180000
scoreboard players remove @s rot_pitch2 55000

#check for valid rotation
execute if entity @s[tag=!first_person] unless score @s rot_yaw matches 100..260 run tag @s remove validRotation
execute if entity @s[tag=!first_person] unless score @s rot_pitch matches 30..91 run tag @s remove validRotation
tag @s[tag=alwaysvalid] add validRotation

#not valid rotation? no movement, no glowing
#execute unless entity @s[tag=validRotation] as @e[tag=my_model,limit=1] run data merge entity @s {Glowing:1b}
#execute if entity @s[tag=validRotation] as @e[tag=my_model,limit=1] run data merge entity @s {Glowing:0b}
#execute unless entity @s[tag=validRotation] run effect give @s fire_resistance 15 1 false
execute unless entity @s[tag=validRotation] run scoreboard players set @s[scores={actionbarState=..10}] actionbarTime 2
execute unless entity @s[tag=validRotation] run scoreboard players set @s[scores={actionbarState=..10}] actionbarState 10
#execute if entity @s[tag=validRotation] run effect clear @s fire_resistance

#up/down/left/right
scoreboard players set @s left_right 0
scoreboard players set @s up_down 0
scoreboard players set @s inputDir 0
scoreboard players set @s[tag=validRotation,scores={xin=700..}] left_right -1
scoreboard players set @s[tag=validRotation,scores={xin=..-700}] left_right 1
scoreboard players set @s[tag=validRotation,scores={zin=700..}] up_down 1
scoreboard players set @s[tag=validRotation,scores={zin=..-700}] up_down -1

#can't move if dead
execute if score @s deathTime matches 1.. if score #opt_permadeath value matches 0 run scoreboard players set @s left_right 0
execute if score @s deathTime matches 1.. if score #opt_permadeath value matches 0 run scoreboard players set @s up_down 0

#can't move if locked in a cutscene or something
scoreboard players set @s[scores={haltMovement=1..}] left_right 0
scoreboard players set @s[scores={haltMovement=1..}] up_down 0

#get input direction (it's like an analog stick kinda)
execute if entity @s[scores={left_right=1,up_down=0}] run scoreboard players set @s inputDir 7
execute if entity @s[scores={left_right=1,up_down=1}] run scoreboard players set @s inputDir 6
execute if entity @s[scores={left_right=0,up_down=1}] run scoreboard players set @s inputDir 5
execute if entity @s[scores={left_right=-1,up_down=1}] run scoreboard players set @s inputDir 4
execute if entity @s[scores={left_right=-1,up_down=0}] run scoreboard players set @s inputDir 3
execute if entity @s[scores={left_right=-1,up_down=-1}] run scoreboard players set @s inputDir 2
execute if entity @s[scores={left_right=0,up_down=-1}] run scoreboard players set @s inputDir 1
execute if entity @s[scores={left_right=1,up_down=-1}] run scoreboard players set @s inputDir 8

#correct direction if player is rotated
execute if entity @s[tag=!first_person,scores={inputDir=1..,rot_yaw2=23600..66400}] run tag @s add shift2
execute if entity @s[tag=!first_person,scores={inputDir=1..,rot_yaw2=66401..}] run tag @s add shift22
execute if entity @s[tag=!first_person,scores={inputDir=1..,rot_yaw2=-66400..-23600}] run tag @s add shift1
execute if entity @s[tag=!first_person,scores={inputDir=1..,rot_yaw2=..-66401}] run tag @s add shift11
execute if entity @s[tag=shift1] run scoreboard players add @s inputDir 1
execute if entity @s[tag=shift11] run scoreboard players add @s inputDir 2
execute if entity @s[tag=shift1,scores={inputDir=9..}] run scoreboard players remove @s inputDir 8
execute if entity @s[tag=shift11,scores={inputDir=9..}] run scoreboard players remove @s inputDir 8
execute if entity @s[tag=shift2] run scoreboard players remove @s inputDir 1
execute if entity @s[tag=shift22] run scoreboard players remove @s inputDir 2
execute if entity @s[tag=shift2,scores={inputDir=..0}] run scoreboard players add @s inputDir 8
execute if entity @s[tag=shift22,scores={inputDir=..0}] run scoreboard players add @s inputDir 8

tag @s remove shift1
tag @s remove shift11
tag @s remove shift2
tag @s remove shift22

#visualize with particles
#execute as @e[tag=my_char,limit=1] at @s run particle smoke ~ ~1 ~ 0 0 0 .01 1 force

#try to move
scoreboard players set @s[scores={inputDir=5}] faceDirection 1
scoreboard players set @s[scores={inputDir=6}] faceDirection 2
scoreboard players set @s[scores={inputDir=7}] faceDirection 3
scoreboard players set @s[scores={inputDir=8}] faceDirection 4
scoreboard players set @s[scores={inputDir=1}] faceDirection 5
scoreboard players set @s[scores={inputDir=2}] faceDirection 6
scoreboard players set @s[scores={inputDir=3}] faceDirection 7
scoreboard players set @s[scores={inputDir=4}] faceDirection 8


#max movespeed...
scoreboard players set @s[scores={xin=1748..}] xin 1747
scoreboard players set @s[scores={xin=-1747}] xin -1748
scoreboard players set @s[scores={zin=1748..}] zin 1747
scoreboard players set @s[scores={zin=-1747}] zin -1748

#last held direction
execute unless entity @s[scores={left_right=0,up_down=0}] run scoreboard players operation @s lastDirection = @s faceDirection
#scoreboard players operation @s lastDirection = @s faceDirection

#player char gets coords
execute as 0000003c-0000-0000-0000-000000000001 at @s store result score @s char_x run data get entity @s Pos[0] 1
execute as 0000003c-0000-0000-0000-000000000001 at @s store result score @s char_y run data get entity @s Pos[1] 1
execute as 0000003c-0000-0000-0000-000000000001 at @s store result score @s char_z run data get entity @s Pos[2] 1



#velocity
scoreboard players set @s z_vel 0
scoreboard players set @s x_vel 0

#force move when dashing
execute if score @s tankDash matches 1.. unless score @s deathTime matches 1.. run function ttr:movement/tank_dash_override

#set x and z velocity
execute if entity @s[scores={inputDir=2}] run scoreboard players set @s x_vel 706
execute if entity @s[scores={inputDir=3}] run scoreboard players set @s x_vel 1000
execute if entity @s[scores={inputDir=4}] run scoreboard players set @s x_vel 706
execute if entity @s[scores={inputDir=6}] run scoreboard players set @s x_vel -706
execute if entity @s[scores={inputDir=7}] run scoreboard players set @s x_vel -1000
execute if entity @s[scores={inputDir=8}] run scoreboard players set @s x_vel -706

execute if entity @s[scores={inputDir=1}] run scoreboard players set @s z_vel -1000
execute if entity @s[scores={inputDir=2}] run scoreboard players set @s z_vel -706
execute if entity @s[scores={inputDir=4}] run scoreboard players set @s z_vel 706
execute if entity @s[scores={inputDir=5}] run scoreboard players set @s z_vel 1000
execute if entity @s[scores={inputDir=6}] run scoreboard players set @s z_vel 706
execute if entity @s[scores={inputDir=8}] run scoreboard players set @s z_vel -706

#if in first person view, don't lock to 8 directions
execute if entity @s[tag=first_person] unless score @s deathTime matches 1.. unless score @s tankDash matches 1.. run function ttr:control/convert_raw_input_to_velocity
execute if entity @s[tag=first_person] if score #opt_permadeath value matches 1 if score @s deathTime matches 1.. unless score @s tankDash matches 1.. run function ttr:control/convert_raw_input_to_velocity


scoreboard players set @s math 100
scoreboard players operation @s z_vel *= @s vel_multiplier
scoreboard players operation @s z_vel /= @s math
scoreboard players operation @s x_vel *= @s vel_multiplier
scoreboard players operation @s x_vel /= @s math

#execute movements based on state
function ttr:movement/interpolate_velocity
execute unless entity @s[scores={haltMovement=1..}] run function ttr:control/node/60/movement/1_grounded


tag @s[tag=speedo] remove speedo

####################

#tank aim
execute if entity @s[tag=validRotation,scores={deathTime=..0}] at 0000003c-0000-0000-0000-000000000001 run function ttr:control/node/60/movement/aim/main
execute unless entity @s[tag=validRotation] at 0000003c-0000-0000-0000-000000000001 run tp 0000003c-0000-0000-0000-000000000003 ~ ~-1.2 ~

#shoot pellets n stuff
execute if entity @s[tag=validRotation,scores={carrotInput=1..,shootCooldown=..0}] at 0000003c-0000-0000-0000-000000000001 rotated as 0000003c-0000-0000-0000-000000000003 rotated ~ 0 positioned ~ ~-1 ~ run function ttr:shoot/_shoot_index

#last direction stored on my_char
scoreboard players operation 0000003c-0000-0000-0000-000000000001 lastDirection = @s lastDirection

#get y motion
#execute as @e[limit=1,tag=my_char] store result score @e[limit=1,tag=self101] motion_y run data get entity @s Motion[1] 1000

#clean up tag
tag @s remove self101