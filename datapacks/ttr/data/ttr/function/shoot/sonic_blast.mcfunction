scoreboard players operation #new_color_1 value = @s color_1
scoreboard players operation #new_color_2 value = @s color_2

scoreboard players operation #attackerID value = @s playerID
#scoreboard players operation #victimID value = @e[limit=1,sort=nearest,tag=target2,tag=player_char] playerID

scoreboard players remove @s[scores={hasItem8=1..}] hasItem8 1
clear @s[type=player] light_gray_dye 1

#destroy nearby tanks
scoreboard players set #damage_source value 8
execute as @e[distance=..4,tag=player_char,tag=!player_ded,scores={invulTime=..0}] at @s unless score @s playerID = #attackerID value run function ttr:shoot/tank_player_die

#break nearby walls
#fill ~-2 ~1 ~-3 ~2 ~1 ~3 air replace #ttr:breakable
#fill ~-3 ~1 ~-2 ~2 ~1 ~2 air replace #ttr:breakable

#(the things I'll do to get my sweet PARTICLES)
execute positioned ~-2 ~1 ~-3 if block ~ ~ ~ #ttr:breakable run setblock ~ ~ ~ air destroy
execute positioned ~-1 ~1 ~-3 if block ~ ~ ~ #ttr:breakable run setblock ~ ~ ~ air destroy
execute positioned ~ ~1 ~-3 if block ~ ~ ~ #ttr:breakable run setblock ~ ~ ~ air destroy
execute positioned ~1 ~1 ~-3 if block ~ ~ ~ #ttr:breakable run setblock ~ ~ ~ air destroy
execute positioned ~2 ~1 ~-3 if block ~ ~ ~ #ttr:breakable run setblock ~ ~ ~ air destroy

execute positioned ~-3 ~1 ~-2 if block ~ ~ ~ #ttr:breakable run setblock ~ ~ ~ air destroy
execute positioned ~-2 ~1 ~-2 if block ~ ~ ~ #ttr:breakable run setblock ~ ~ ~ air destroy
execute positioned ~-1 ~1 ~-2 if block ~ ~ ~ #ttr:breakable run setblock ~ ~ ~ air destroy
execute positioned ~ ~1 ~-2 if block ~ ~ ~ #ttr:breakable run setblock ~ ~ ~ air destroy
execute positioned ~1 ~1 ~-2 if block ~ ~ ~ #ttr:breakable run setblock ~ ~ ~ air destroy
execute positioned ~2 ~1 ~-2 if block ~ ~ ~ #ttr:breakable run setblock ~ ~ ~ air destroy
execute positioned ~3 ~1 ~-2 if block ~ ~ ~ #ttr:breakable run setblock ~ ~ ~ air destroy

execute positioned ~-3 ~1 ~-1 if block ~ ~ ~ #ttr:breakable run setblock ~ ~ ~ air destroy
execute positioned ~-2 ~1 ~-1 if block ~ ~ ~ #ttr:breakable run setblock ~ ~ ~ air destroy
execute positioned ~-1 ~1 ~-1 if block ~ ~ ~ #ttr:breakable run setblock ~ ~ ~ air destroy
execute positioned ~ ~1 ~-1 if block ~ ~ ~ #ttr:breakable run setblock ~ ~ ~ air destroy
execute positioned ~1 ~1 ~-1 if block ~ ~ ~ #ttr:breakable run setblock ~ ~ ~ air destroy
execute positioned ~2 ~1 ~-1 if block ~ ~ ~ #ttr:breakable run setblock ~ ~ ~ air destroy
execute positioned ~3 ~1 ~-1 if block ~ ~ ~ #ttr:breakable run setblock ~ ~ ~ air destroy

execute positioned ~-3 ~1 ~ if block ~ ~ ~ #ttr:breakable run setblock ~ ~ ~ air destroy
execute positioned ~-2 ~1 ~ if block ~ ~ ~ #ttr:breakable run setblock ~ ~ ~ air destroy
execute positioned ~-1 ~1 ~ if block ~ ~ ~ #ttr:breakable run setblock ~ ~ ~ air destroy
execute positioned ~ ~1 ~ if block ~ ~ ~ #ttr:breakable run setblock ~ ~ ~ air destroy
execute positioned ~1 ~1 ~ if block ~ ~ ~ #ttr:breakable run setblock ~ ~ ~ air destroy
execute positioned ~2 ~1 ~ if block ~ ~ ~ #ttr:breakable run setblock ~ ~ ~ air destroy
execute positioned ~3 ~1 ~ if block ~ ~ ~ #ttr:breakable run setblock ~ ~ ~ air destroy

execute positioned ~-3 ~1 ~1 if block ~ ~ ~ #ttr:breakable run setblock ~ ~ ~ air destroy
execute positioned ~-2 ~1 ~1 if block ~ ~ ~ #ttr:breakable run setblock ~ ~ ~ air destroy
execute positioned ~-1 ~1 ~1 if block ~ ~ ~ #ttr:breakable run setblock ~ ~ ~ air destroy
execute positioned ~ ~1 ~1 if block ~ ~ ~ #ttr:breakable run setblock ~ ~ ~ air destroy
execute positioned ~1 ~1 ~1 if block ~ ~ ~ #ttr:breakable run setblock ~ ~ ~ air destroy
execute positioned ~2 ~1 ~1 if block ~ ~ ~ #ttr:breakable run setblock ~ ~ ~ air destroy
execute positioned ~3 ~1 ~1 if block ~ ~ ~ #ttr:breakable run setblock ~ ~ ~ air destroy

execute positioned ~-3 ~1 ~2 if block ~ ~ ~ #ttr:breakable run setblock ~ ~ ~ air destroy
execute positioned ~-2 ~1 ~2 if block ~ ~ ~ #ttr:breakable run setblock ~ ~ ~ air destroy
execute positioned ~-1 ~1 ~2 if block ~ ~ ~ #ttr:breakable run setblock ~ ~ ~ air destroy
execute positioned ~ ~1 ~2 if block ~ ~ ~ #ttr:breakable run setblock ~ ~ ~ air destroy
execute positioned ~1 ~1 ~2 if block ~ ~ ~ #ttr:breakable run setblock ~ ~ ~ air destroy
execute positioned ~2 ~1 ~2 if block ~ ~ ~ #ttr:breakable run setblock ~ ~ ~ air destroy
execute positioned ~3 ~1 ~2 if block ~ ~ ~ #ttr:breakable run setblock ~ ~ ~ air destroy

execute positioned ~-2 ~1 ~3 if block ~ ~ ~ #ttr:breakable run setblock ~ ~ ~ air destroy
execute positioned ~-1 ~1 ~3 if block ~ ~ ~ #ttr:breakable run setblock ~ ~ ~ air destroy
execute positioned ~ ~1 ~3 if block ~ ~ ~ #ttr:breakable run setblock ~ ~ ~ air destroy
execute positioned ~1 ~1 ~3 if block ~ ~ ~ #ttr:breakable run setblock ~ ~ ~ air destroy
execute positioned ~2 ~1 ~3 if block ~ ~ ~ #ttr:breakable run setblock ~ ~ ~ air destroy

#SOUND
playsound minecraft:entity.wither.hurt master @a ~ ~10 ~ 4 1.3
particle flash ~ ~1.6 ~ 0 0 0 1 1 force @a

#animation
execute as @e[tag=player_char,type=zombie] if score @s playerID = #attackerID value run tag @s add blast_source
scoreboard players set @e[limit=1,tag=blast_source,type=zombie] sonicBlastRing 1
execute as @e[distance=..7,tag=pellet,tag=!mine,type=armor_stand] at @s run function ttr:shoot/hit_by_sonic_blast
tag @e[tag=blast_source,type=zombie] remove blast_source

scoreboard players set @s shootCooldown 15