summon armor_stand ^ ^ ^1 {NoGravity:1b,Invulnerable:1b,Small:0b,Invisible:1b,NoBasePlate:1b,Tags:["setme","pellet","basic_pellet"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:white_dye",count:1,components:{"minecraft:custom_model_data":1111111}}]}

particle crit ^ ^1.6 ^1 0 0 0 .3 10 force @a[distance=..50]

tp @e[limit=1,tag=setme,type=armor_stand,distance=..2] ^ ^ ^1 ~ ~
execute as @e[limit=1,tag=setme,type=armor_stand,distance=..2] run function ttr:shoot/get_pellet_tick
scoreboard players operation @e[limit=1,tag=setme,type=armor_stand,distance=..2] color_1 = @s color_1
scoreboard players operation @e[limit=1,tag=setme,type=armor_stand,distance=..2] color_2 = @s color_2
scoreboard players operation @e[limit=1,tag=setme,type=armor_stand,distance=..2] playerID = @s playerID
tag @e[limit=1,tag=setme,type=armor_stand,distance=..2] remove setme

scoreboard players set @s shootCooldown 10