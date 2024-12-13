tag @e[tag=priorityTarget,tag=!self101,distance=..15,type=armor_stand,limit=1,sort=random] add checkLOS

#check for line of sight to the target
scoreboard players set #checkLOS value 0
execute as @e[limit=1,type=armor_stand,tag=checkLOS,distance=..15] facing entity @s eyes rotated ~ 0 run function ttr:ai/movement/check_los/_go_1

#line of sight! go get that item!
execute if score #checkLOS value matches 1 as @e[limit=1,tag=checkLOS,type=armor_stand,distance=..15] at @s store result score #go_to_x value run data get entity @s Pos[0] 1
execute if score #checkLOS value matches 1 as @e[limit=1,tag=checkLOS,type=armor_stand,distance=..15] at @s store result score #go_to_z value run data get entity @s Pos[2] 1
execute if score #checkLOS value matches 1 run scoreboard players set @s aiLogic 1
execute if score #checkLOS value matches 1 run scoreboard players operation @s aiTarget_x = #go_to_x value
execute if score #checkLOS value matches 1 run scoreboard players operation @s aiTarget_z = #go_to_z value

tag @e[limit=1,tag=checkLOS,type=armor_stand,distance=..10] remove checkLOS