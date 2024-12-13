#check again in a random amount of time
execute if score @s aiAggression matches ..1 store result score #look_roll value run random value 10..20
execute if score @s aiAggression matches 2 store result score #look_roll value run random value 5..15
execute if score @s aiAggression matches 3 store result score #look_roll value run random value 3..12
execute if score @s aiAggression matches 4 store result score #look_roll value run random value 2..8
execute if score @s aiAggression matches 5.. store result score #look_roll value run random value 1..6
scoreboard players set #number value 5
scoreboard players operation #look_roll value *= #number value
scoreboard players operation @s aiTargetLookTime = #look_roll value

#either check the nearest enemy or a random one nearby
execute store result score #look_roll value run random value 1..4
execute if entity @s[tag=!redTeam,tag=!blueTeam] if score #look_roll value matches 1..3 run tag @e[limit=1,sort=nearest,tag=player_char,tag=!player_ded,tag=!self101,type=zombie,distance=..24] add checkLOS
execute if entity @s[tag=!redTeam,tag=!blueTeam] if score #look_roll value matches 4 run tag @e[limit=1,sort=random,tag=player_char,tag=!player_ded,tag=!self101,type=zombie,distance=..15] add checkLOS
execute if entity @s[tag=redTeam] if score #look_roll value matches 1..3 run tag @e[limit=1,sort=nearest,tag=player_char,tag=!redTeam,tag=!player_ded,tag=!self101,type=zombie,distance=..24] add checkLOS
execute if entity @s[tag=redTeam] if score #look_roll value matches 4 run tag @e[limit=1,sort=random,tag=player_char,tag=!redTeam,tag=!player_ded,tag=!self101,type=zombie,distance=..15] add checkLOS
execute if entity @s[tag=blueTeam] if score #look_roll value matches 1..3 run tag @e[limit=1,sort=nearest,tag=player_char,tag=!blueTeam,tag=!player_ded,tag=!self101,type=zombie,distance=..24] add checkLOS
execute if entity @s[tag=blueTeam] if score #look_roll value matches 4 run tag @e[limit=1,sort=random,tag=player_char,tag=!blueTeam,tag=!player_ded,tag=!self101,type=zombie,distance=..15] add checkLOS

#check for line of sight to the enemy (if it exists)
scoreboard players set #checkLOS value 0
execute as @e[limit=1,tag=checkLOS,type=zombie,distance=..24] facing entity @s eyes rotated ~ 0 run function ttr:ai/movement/check_los/_go_2
scoreboard players operation #rememberLOS value = #checkLOS value

#line of sight! shoot at them!
execute if score #checkLOS value matches 1 run scoreboard players operation @s aiLookID = @e[limit=1,tag=checkLOS,type=zombie,distance=..24] playerID
execute if score #checkLOS value matches 1 run scoreboard players set @s aiLookTimeout 0

#also a chance we rush at the enemy (unless we're chasing something already OR we're holding the flag)
execute if score #checkLOS value matches 1 unless entity @s[scores={aiLogic=1}] unless entity @s[scores={aiCarryFlag=1..}] run function ttr:ai/movement/look_for_targets_chase

tag @e[limit=1,tag=checkLOS,type=zombie,distance=..24] remove checkLOS

#didn't find anything? try looking for mines to shoot at
tag @s[tag=looking_at_mine] remove looking_at_mine
execute if score #rememberLOS value matches 0 run function ttr:ai/movement/look_for_targets_mines

#chaos??
tag @s[tag=looking_at_invisnode] remove looking_at_invisnode
execute if score #rememberLOS value matches 0 unless entity @s[tag=looking_at_mine] run function ttr:ai/movement/look_for_targets_invis