summon armor_stand ^ ^ ^.5 {NoGravity:1b,Invulnerable:1b,Small:0b,Invisible:1b,NoBasePlate:1b,Tags:["setme","setme1","pellet","basic_pellet","basic_pellet_triple","p_can_hit","p_can_pop","dont_spawn_here"],DisabledSlots:4144959,equipment:{head:{id:"minecraft:white_dye",count:1,components:{"minecraft:item_model":"ttr/projectiles/basic_pellet_blue"}}}}
summon armor_stand ^ ^ ^.5 {NoGravity:1b,Invulnerable:1b,Small:0b,Invisible:1b,NoBasePlate:1b,Tags:["setme","setme2","pellet","basic_pellet","basic_pellet_triple","p_can_hit","p_can_pop","dont_spawn_here"],DisabledSlots:4144959,equipment:{head:{id:"minecraft:white_dye",count:1,components:{"minecraft:item_model":"ttr/projectiles/basic_pellet_blue"}}}}
summon armor_stand ^ ^ ^.5 {NoGravity:1b,Invulnerable:1b,Small:0b,Invisible:1b,NoBasePlate:1b,Tags:["setme","setme3","pellet","basic_pellet","basic_pellet_triple","p_can_hit","p_can_pop","dont_spawn_here"],DisabledSlots:4144959,equipment:{head:{id:"minecraft:white_dye",count:1,components:{"minecraft:item_model":"ttr/projectiles/basic_pellet_blue"}}}}

#SOUND
playsound minecraft:entity.blaze.hurt master @a ~ ~10 ~ 1 1.15
playsound minecraft:entity.blaze.hurt master @a ~ ~10 ~ 1 1.5
playsound minecraft:entity.blaze.hurt master @a ~ ~10 ~ 1 1.85

scoreboard players remove @s[scores={hasItem5=1..}] hasItem5 1
clear @s[type=player] lime_dye 1

particle crit ^ ^1.6 ^1 0 0 0 .3 10 force @a[distance=..50]

execute rotated ~20 0 run tp @e[limit=1,tag=setme1,type=armor_stand,distance=..2] ^ ^ ^.5 ~ ~
execute rotated ~-20 0 run tp @e[limit=1,tag=setme2,type=armor_stand,distance=..2] ^ ^ ^.5 ~ ~
tp @e[limit=1,tag=setme3,type=armor_stand,distance=..2] ^ ^ ^.5 ~ ~

execute as @e[limit=3,tag=setme,type=armor_stand,distance=..2] run function ttr:shoot/get_pellet_tick
scoreboard players operation @e[limit=3,tag=setme,type=armor_stand,distance=..2] color_1 = @s color_1
scoreboard players operation @e[limit=3,tag=setme,type=armor_stand,distance=..2] color_2 = @s color_2
scoreboard players operation @e[limit=3,tag=setme,type=armor_stand,distance=..2] playerID = @s playerID
execute if entity @s[tag=redTeam] run tag @e[limit=3,tag=setme,type=armor_stand,distance=..2] add redTeam
execute if entity @s[tag=blueTeam] run tag @e[limit=3,tag=setme,type=armor_stand,distance=..2] add blueTeam
tag @e[limit=3,tag=setme,type=armor_stand,distance=..2] remove setme
tag @e[limit=1,tag=setme1,type=armor_stand,distance=..2] remove setme1
tag @e[limit=1,tag=setme2,type=armor_stand,distance=..2] remove setme2
tag @e[limit=1,tag=setme3,type=armor_stand,distance=..2] remove setme3

scoreboard players set @s shootCooldown 16