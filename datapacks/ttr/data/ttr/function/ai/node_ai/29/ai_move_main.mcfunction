tag @s add self101

#recall what direction we were going in case we got distracted
execute if score @s aiLogic matches 0 unless score @s aiTargetDir matches 1..5 if score @s aiTargetDir2 matches 1..5 run scoreboard players operation @s aiTargetDir = @s aiTargetDir2

#think about moving?
#logic_1 = wander
#logic_2 = move towards a point
#logic_3 = move away from a point
execute unless entity @s[scores={aiLogic=0,aiTargetDir=1..5}] run scoreboard players set @s aiNavTimeout 0
execute if entity @s[scores={aiLogic=0,haltMovement=..0}] at @s unless score @s aiTargetDir matches 1..5 run function ttr:ai/movement/logic_0
execute if entity @s[scores={aiLogic=0,haltMovement=..0}] at @s if score @s aiTargetDir matches 1..5 run function ttr:ai/movement/logic_0_nav
execute if entity @s[scores={aiLogic=1,haltMovement=..0}] at @s run function ttr:ai/movement/logic_1
execute if entity @s[scores={aiLogic=2,haltMovement=..0}] at @s run function ttr:ai/movement/logic_2

#navigate between squares to reach objective or other players
scoreboard players remove @s aiSquareTime 1
execute if score @s aiSquareTime matches ..0 at @s run function ttr:ai/movement/square_check

#go after item pickups maybe
scoreboard players remove @s aiItemLookTime 1
execute if score @s aiItemLookTime matches ..0 unless entity @s[scores={aiLogic=1}] run function ttr:ai/movement/look_for_pickups

#avoid mines
scoreboard players remove @s aiAvoidMineTime 1
execute if score @s aiAvoidMineTime matches ..0 if score @s aiSkill matches 2.. if entity @e[tag=mine,type=armor_stand,distance=..2,tag=!remote_mine] run function ttr:ai/movement/avoid_mine

#try to move
scoreboard players set @s[scores={inputDir=5}] faceDirection 1
scoreboard players set @s[scores={inputDir=6}] faceDirection 2
scoreboard players set @s[scores={inputDir=7}] faceDirection 3
scoreboard players set @s[scores={inputDir=8}] faceDirection 4
scoreboard players set @s[scores={inputDir=1}] faceDirection 5
scoreboard players set @s[scores={inputDir=2}] faceDirection 6
scoreboard players set @s[scores={inputDir=3}] faceDirection 7
scoreboard players set @s[scores={inputDir=4}] faceDirection 8

#last held direction
execute unless entity @s[scores={left_right=0,up_down=0}] run scoreboard players operation @s lastDirection = @s faceDirection
#scoreboard players operation @s lastDirection = @s faceDirection

#player char gets coords
execute at @s store result score @s char_x run data get entity @s Pos[0] 1
execute at @s store result score @s char_y run data get entity @s Pos[1] 1
execute at @s store result score @s char_z run data get entity @s Pos[2] 1

####################
#movement state
#0 = null
#1 = grounded
#2 = airborne
#3 = airborne (fixed velocity, no control until on ground or in water)
#4 = in water

#calculate current state
scoreboard players set @s moveState 1

#velocity
scoreboard players set @s z_vel 0
scoreboard players set @s x_vel 0

#force move when dashing
execute if score @s tankDash matches 1.. run function ttr:movement/tank_dash_override

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

scoreboard players set @s math 100
scoreboard players operation @s z_vel *= @s vel_multiplier
scoreboard players operation @s z_vel /= @s math
scoreboard players operation @s x_vel *= @s vel_multiplier
scoreboard players operation @s x_vel /= @s math

#execute movements based on state
function ttr:movement/interpolate_velocity
execute unless entity @s[scores={deathTime=1..}] unless entity @s[scores={haltMovement=1..}] run function ttr:ai/movement/1_grounded

tag @s[tag=speedo] remove speedo

####################

#react if something scary happens up close to us
scoreboard players remove @s aiReactTime 1
execute if score @s aiReactTime matches ..0 at 0000001d-0000-0001-0000-000000000003 run function ttr:ai/node_ai/29/react_nearby_try

#shoot pellets n stuff
function ttr:ai/shoot_cooldown
scoreboard players remove @s aiThinkCooldown 1
execute if score @s shootCooldown matches ..0 rotated as 0000001d-0000-0001-0000-000000000003 rotated ~ 0 positioned ~ ~-1 ~ run function ttr:ai/shoot/think

#tank aim
execute if score @s aiLookID matches 1.. run function ttr:ai/node_ai/29/aim/main_target
execute unless score @s aiLookID matches 1.. run function ttr:ai/node_ai/29/aim/main_no_target
scoreboard players remove @s aiDelayAim 1

#clean up tag
tag @s remove self101
tag @s[tag=panic] remove panic