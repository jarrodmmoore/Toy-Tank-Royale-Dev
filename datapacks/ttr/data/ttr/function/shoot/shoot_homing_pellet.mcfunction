summon armor_stand ^ ^ ^.5 {NoGravity:1b,Invulnerable:1b,Small:0b,Invisible:1b,NoBasePlate:1b,Tags:["setme","pellet","homing_pellet","p_can_hit","p_can_pop","dont_spawn_here"],DisabledSlots:4144959,equipment:{head:{id:"minecraft:orange_dye",count:1,components:{"minecraft:item_model":"ttr/projectiles/homing_pellet"}}}}

#SOUND
playsound minecraft:entity.blaze.hurt master @a ~ ~10 ~ 2 1.5
playsound minecraft:block.enchantment_table.use master @a ~ ~10 ~ 2 .5

scoreboard players remove @s[scores={hasItem2=1..}] hasItem2 1
clear @s[type=player] orange_dye 1

particle crit ^ ^1.6 ^1 0 0 0 .3 10 force @a[distance=..50]
particle falling_dust{block_state:"minecraft:magenta_wool"} ^ ^1.6 ^1 0 0 0 .3 10 force @a[distance=..50]

tp @e[limit=1,tag=setme,type=armor_stand,distance=..2] ^ ^ ^.5 ~ ~

#target the nearest player that isn't us
scoreboard players operation #checkID value = @s playerID
execute unless entity @s[tag=ai] as @e[type=zombie,tag=player_char,tag=!player_ded] if score @s playerID = #checkID value run tag @s add not_me_plz
execute if entity @s[tag=ai] run tag @s add not_me_plz
scoreboard players set @s targetID 0
execute if entity @s[tag=!redTeam,tag=!blueTeam] positioned ^ ^ ^10 if entity @e[limit=1,tag=player_char,tag=!not_me_plz,tag=!player_ded,type=zombie] run scoreboard players operation @s targetID = @e[limit=1,tag=player_char,tag=!not_me_plz,tag=!player_ded,type=zombie,sort=nearest] playerID
execute if entity @s[tag=redTeam] positioned ^ ^ ^10 if entity @e[limit=1,tag=player_char,tag=blueTeam,tag=!not_me_plz,tag=!player_ded,type=zombie] run scoreboard players operation @s targetID = @e[limit=1,tag=player_char,tag=!redTeam,tag=!not_me_plz,tag=!player_ded,type=zombie,sort=nearest] playerID
execute if entity @s[tag=blueTeam] positioned ^ ^ ^10 if entity @e[limit=1,tag=player_char,tag=redTeam,tag=!not_me_plz,tag=!player_ded,type=zombie] run scoreboard players operation @s targetID = @e[limit=1,tag=player_char,tag=!blueTeam,tag=!not_me_plz,tag=!player_ded,type=zombie,sort=nearest] playerID
tag @e[type=zombie,tag=not_me_plz] remove not_me_plz

execute as @e[limit=1,tag=setme,type=armor_stand,distance=..2] run function ttr:shoot/get_pellet_tick
scoreboard players operation @e[limit=1,tag=setme,type=armor_stand,distance=..2] color_1 = @s color_1
scoreboard players operation @e[limit=1,tag=setme,type=armor_stand,distance=..2] color_2 = @s color_2
scoreboard players operation @e[limit=1,tag=setme,type=armor_stand,distance=..2] playerID = @s playerID
scoreboard players operation @e[limit=1,tag=setme,type=armor_stand,distance=..2] targetID = @s targetID
execute if entity @s[tag=redTeam] run tag @e[limit=1,tag=setme,type=armor_stand,distance=..2] add redTeam
execute if entity @s[tag=blueTeam] run tag @e[limit=1,tag=setme,type=armor_stand,distance=..2] add blueTeam
tag @e[limit=1,tag=setme,type=armor_stand,distance=..2] remove setme

scoreboard players set @s shootCooldown 24