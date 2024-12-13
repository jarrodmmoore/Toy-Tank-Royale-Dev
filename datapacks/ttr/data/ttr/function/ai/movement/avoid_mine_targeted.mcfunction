#avoid coordinates please
execute as @e[limit=1,tag=checkLOS,tag=mine,type=armor_stand,distance=..20] at @s store result score #avoid_x value run data get entity @s Pos[0] 1
execute as @e[limit=1,tag=checkLOS,tag=mine,type=armor_stand,distance=..20] at @s store result score #avoid_z value run data get entity @s Pos[2] 1
scoreboard players operation @s aiTarget_x = #avoid_x value
scoreboard players operation @s aiTarget_z = #avoid_z value

scoreboard players set @s aiAvoidMineTime 15
scoreboard players set @s[scores={aiSkill=..2}] aiAvoidMineTime 25
scoreboard players set @s aiMoveTime 13
scoreboard players set @s aiLogic 2

scoreboard players set @s aiTargetDir 0
scoreboard players set @s aiTargetDir2 0

#be accurate, probably
scoreboard players set @s[scores={aiSkill=3..}] aiRandomOffsetX 0
scoreboard players set @s[scores={aiSkill=3..}] aiRandomOffsetZ 0