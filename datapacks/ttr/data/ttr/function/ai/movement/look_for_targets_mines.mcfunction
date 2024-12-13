#either check the nearest mine or a random one nearby
execute if entity @s[scores={aiChaotic=..2}] store result score #look_roll value run random value 1..8
execute if entity @s[scores={aiChaotic=3..4}] store result score #look_roll value run random value 1..7
execute if entity @s[scores={aiChaotic=5..}] store result score #look_roll value run random value 1..5
execute if score #look_roll value matches 1..3 run tag @e[limit=1,sort=nearest,tag=mine,tag=!remote_mine,type=armor_stand,distance=..20] add checkLOS
execute if score #look_roll value matches 4..5 run tag @e[limit=1,sort=random,tag=mine,tag=!remote_mine,type=armor_stand,distance=..20] add checkLOS

#check for line of sight to the target (if it exists)
scoreboard players set #checkLOS value 0
execute as @e[limit=1,tag=checkLOS,type=armor_stand,distance=..20] facing entity @s eyes rotated ~ 0 run function ttr:ai/movement/check_los/_go_4

#check to make sure the mine is safe to shoot
execute if score #checkLOS value matches 1.. at @e[limit=1,tag=checkLOS,type=armor_stand,distance=..20] run function ttr:ai/movement/check_mine_safe_to_shoot

#line of sight! shoot at it!
execute if score #checkLOS value matches 1.. run tag @s add looking_at_mine
execute if score #checkLOS value matches 1.. run scoreboard players operation @s aiLookID = @e[limit=1,tag=checkLOS,type=armor_stand,distance=..20] playerID
execute if score #checkLOS value matches 1.. run scoreboard players set @s aiLookTimeout 0
execute if score #checkLOS value matches 1.. run scoreboard players set @s checkLOStime 8

#also move away from the mine to not get blasted
execute if score #checkLOS value matches 1.. run function ttr:ai/movement/avoid_mine_targeted

tag @e[limit=1,tag=checkLOS,type=armor_stand,distance=..20] remove checkLOS