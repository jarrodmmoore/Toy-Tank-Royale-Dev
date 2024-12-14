summon armor_stand ^ ^ ^.5 {NoGravity:1b,Invulnerable:1b,Small:0b,Invisible:1b,NoBasePlate:1b,Tags:["setme","pellet","burst_pellet","p_can_hit","p_can_pop","dont_spawn_here"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:magenta_dye",count:1,components:{"minecraft:item_model":"ttr/projectiles/burst_pellet"}}]}

scoreboard players remove @s[scores={hasItem3=1..}] hasItem3 1
clear @s[type=player] magenta_dye 1

#SOUND
playsound minecraft:entity.blaze.hurt master @a ~ ~10 ~ 1 1.2

particle crit ^ ^1.6 ^1 0 0 0 .3 10 force @a[distance=..50]

tp @e[limit=1,tag=setme,type=armor_stand,distance=..2] ^ ^ ^.5 ~ ~

execute as @e[limit=1,tag=setme,type=armor_stand,distance=..2] run function ttr:shoot/get_pellet_tick
scoreboard players operation @e[limit=1,tag=setme,type=armor_stand,distance=..2] color_1 = @s color_1
scoreboard players operation @e[limit=1,tag=setme,type=armor_stand,distance=..2] color_2 = @s color_2
scoreboard players operation @e[limit=1,tag=setme,type=armor_stand,distance=..2] playerID = @s playerID
execute if entity @s[tag=redTeam] run tag @e[limit=1,tag=setme,type=armor_stand,distance=..2] add redTeam
execute if entity @s[tag=blueTeam] run tag @e[limit=1,tag=setme,type=armor_stand,distance=..2] add blueTeam
tag @e[limit=1,tag=setme,type=armor_stand,distance=..2] remove setme

scoreboard players set @s shootCooldown 20