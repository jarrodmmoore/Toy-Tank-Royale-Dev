summon armor_stand ^ ^ ^ {NoGravity:1b,Invulnerable:1b,Small:0b,Invisible:1b,NoBasePlate:1b,Tags:["setme","pellet","mine","remote_mine","dont_spawn_here"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:gray_dye",count:1,components:{"minecraft:item_model":"ttr/projectiles/remote_mine"}}]}

#SOUND
playsound minecraft:entity.item.pickup master @a ~ ~10 ~ 2 .5
playsound minecraft:block.enchantment_table.use master @a ~ ~10 ~ 2 .5

execute as @e[limit=1,tag=setme,type=armor_stand,distance=..2] run function ttr:shoot/get_pellet_tick
scoreboard players operation @e[limit=1,tag=setme,type=armor_stand,distance=..2] color_1 = @s color_1
scoreboard players operation @e[limit=1,tag=setme,type=armor_stand,distance=..2] color_2 = @s color_2
scoreboard players operation @e[limit=1,tag=setme,type=armor_stand,distance=..2] playerID = @s playerID
execute if entity @s[tag=redTeam] run tag @e[limit=1,tag=setme,type=armor_stand,distance=..2] add redTeam
execute if entity @s[tag=blueTeam] run tag @e[limit=1,tag=setme,type=armor_stand,distance=..2] add blueTeam
tag @e[limit=1,tag=setme,type=armor_stand,distance=..2] remove setme

scoreboard players set @s shootCooldown 20