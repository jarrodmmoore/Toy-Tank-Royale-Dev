summon armor_stand ^ ^ ^.5 {NoGravity:1b,Invulnerable:1b,Small:0b,Invisible:1b,NoBasePlate:1b,Tags:["setme","pellet","super_pellet","needs_bouncy","p_can_hit","dont_spawn_here"],DisabledSlots:4144959,equipment:{head:{id:"minecraft:light_blue_dye",count:1,components:{"minecraft:item_model":"ttr/projectiles/super_pellet"}}}}

#SOUND
playsound minecraft:entity.blaze.hurt master @a ~ ~10 ~ 1 1.7

scoreboard players remove @s[scores={hasItem4=1..}] hasItem4 1
clear @s[type=player] light_blue_dye 1

particle crit ^ ^1.6 ^1 0 0 0 .3 10 force @a[distance=..50]

tp @e[limit=1,tag=setme,type=armor_stand,distance=..2] ^ ^ ^.5 ~ ~

execute as @e[limit=1,tag=setme,type=armor_stand,distance=..2] run function ttr:shoot/get_pellet_tick
scoreboard players operation @e[limit=1,tag=setme,type=armor_stand,distance=..2] color_1 = @s color_1
scoreboard players operation @e[limit=1,tag=setme,type=armor_stand,distance=..2] color_2 = @s color_2
scoreboard players operation @e[limit=1,tag=setme,type=armor_stand,distance=..2] playerID = @s playerID
execute if entity @s[tag=redTeam] run tag @e[limit=1,tag=setme,type=armor_stand,distance=..2] add redTeam
execute if entity @s[tag=blueTeam] run tag @e[limit=1,tag=setme,type=armor_stand,distance=..2] add blueTeam
tag @e[limit=1,tag=setme,type=armor_stand,distance=..2] remove setme

scoreboard players set @s shootCooldown 14