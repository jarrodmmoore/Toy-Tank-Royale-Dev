summon armor_stand ^ ^ ^ {NoGravity:1b,Invulnerable:1b,Small:0b,Invisible:1b,NoBasePlate:1b,Tags:["setme","pellet","basic_pellet","basic_pellet_burst","p_can_hit","p_can_pop"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:white_dye",count:1,components:{"minecraft:item_model":"ttr/projectiles/basic_pellet_yellow"}}]}

playsound minecraft:entity.blaze.hurt master @a ~ ~10 ~ 1 1.7

particle crit ^ ^1.6 ^1 0 0 0 .3 10 force @a[distance=..50]

tp @e[limit=1,tag=setme,type=armor_stand,distance=..2] ^ ^ ^ ~ ~

execute as @e[limit=1,tag=setme,type=armor_stand,distance=..2] run function ttr:shoot/get_pellet_tick
scoreboard players operation @e[limit=1,tag=setme,type=armor_stand,distance=..2] color_1 = @s color_1
scoreboard players operation @e[limit=1,tag=setme,type=armor_stand,distance=..2] color_2 = @s color_2
scoreboard players operation @e[limit=1,tag=setme,type=armor_stand,distance=..2] playerID = @s playerID
execute if entity @s[tag=redTeam] run tag @e[limit=1,tag=setme,type=armor_stand,distance=..2] add redTeam
execute if entity @s[tag=blueTeam] run tag @e[limit=1,tag=setme,type=armor_stand,distance=..2] add blueTeam
scoreboard players set @e[limit=1,tag=setme,type=armor_stand,distance=..2] lifetime -3
tag @e[limit=1,tag=setme,type=armor_stand,distance=..2] remove setme

scoreboard players set @s shootCooldown 16